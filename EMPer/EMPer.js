define(function(require){
//插件以及外部js 的引用
	var $ = require("jquery");
	$.support.cors = true;
	var justep = require("$UI/system/lib/justep");
	var versionChecker = require("$UI/EMPer/appVersionChecker");
	require("w!/UI2/EMPer/mapActivity.w");
//公共变量定义
	var Model = function(){
		this.callParent();
		this.groupFresh=true;
		this.suid;
		this.hasload = true;
		this.unitList=[];
		this.elemList=[];
		this.opid;
		this.lastContentXid;
		this.mapLoad = true;
		this.trajectory ="all";
		this.carlog;
	};
	
	//里程信息回跳至countContent 上一页
	Model.prototype.mileBackBtnClick = function(event){
		if(this.elemList.length>0){
			for (var i=0;i<this.elemList.length;i++){
				$(this.elemList[i]).removeClass("divClass2");
			}
		}
		if(this.unitList.length>0){
			this.unitList=[];
		}			
		this.comp("contents1").to("countContent");
	};
	//分组页面单条跳转至UnitContent 车辆信息列表
	Model.prototype.groupListClick = function(event){
		this.comp("contents1").to("UnitContent");
	};

//刷新分组页面列表
	Model.prototype.groupContentActive = function(event){
//		if(this.groupFresh){ 
//			this.comp("groupShow").refresh(true);
//			this.groupFresh = false;
//		}
	};
//	跳转至UnitDetailContent
	Model.prototype.unitDetailColClick = function(event){
		this.comp("UnitDetailContent").active();
	};
//车辆详细信息数据组件刷新
	Model.prototype.unitDetailBtnClick = function(event){
		this.comp("unitListData").refreshData(true);
//		var row = event.bindingContext.$object;
//		var psgid = row.getID();
//		var msg = "{suid:"+psgid+"}";
//		$.ajax({
//	    url:'http://222.161.211.36:8080/Android_Server/subscribe!android_subscribe',// 跳转到 action
//			data:{
//				msg:msg
//			},
//	    type:'post',  
//        dataType:'json',			
//			success:function (msg){
//				alert(1);
//			},
//			error:function(msg){
//				alert(msg.data);
//			}
//		});
		
	};

	Model.prototype.getMileAge = function(event,startDate,endDate){//里程统计
		if(this.unitList.length>0){
			this.comp("unitpopOver").show();
			var mileage =this.comp("mileAgeData");
			mileage.clear();
			mileage.refreshData();
			var suidlist = this.unitList.toString();
//			var msg ="{suid:'592061,616996,589043,616472,616409',startdata:'"+startDate+"',enddata:'"+endDate+"'}";
			var msg ="{suid:'"+suidlist+"',startdata:'"+startDate+"',enddata:'"+endDate+"'}";
			$.ajax({
				type: 'post',
				url: "http://222.161.211.36:8080/Android_Server/Distance",
				cache: false,
				data: {
					msg:msg
				},
				dataType: 'json',
				success : function(msg) {
					if(msg.success){
						var data = msg.data;
						if(msg.size===0){
							this.comp("unitpopOver").hide();
							justep.Util.hint("未查询到当前时间段的数据", {position:"middle"});
							return;
						}						
						for (var i=0;i<data.length;i++){
							mileage.add({
								vname:data[i].vname,
								distance:data[i].distance
							});
						}
						mileage.refreshData();
						this.comp("unitpopOver").hide();
					}else{
						this.comp("unitpopOver").hide();
						justep.Util.hint(msg.data, {position:"middle"});
//						alert(msg.data);
					}
				},
				error: function(){
					this.comp("unitpopOver").hide();
					justep.Util.hint("未查询到当前时间段的数据", {position:"middle"});
//					alert("数据查询错误，请稍候再试");
				}
			});
		}else{
			justep.Util.hint("请点击右上角按钮请选择车辆");
		}
	};
	Model.prototype.getAlarmCount = function(event,startDate,endDate){//报警统计
		if(this.unitList.length>0){
			this.comp("unitpopOver").show();
			var alalrm =this.comp("alarmData");
			var suidList = this.unitList.toString();
			alalrm.clear();
			alalrm.refreshData();
//			var msg ="{suid:'592061,616996,589043,616472,616409',startdata:'"+startDate+"',enddata:'"+endDate+"',opid:"+this.opid+"}";
			var msg ="{suid:'"+suidList+"',startdata:'"+startDate+"',enddata:'"+endDate+"',opid:"+this.opid+"}";
			$.ajax({
				type: 'post',
				url: "http://222.161.211.36:8080/Android_Server/Alarm",
				cache: false,
				data: {
					msg:msg
				},
				dataType: 'json',
				success : function(msg) {
					if(msg.success){
						var data = msg.data;
						if(msg.size===0){
							this.comp("unitpopOver").hide();
							justep.Util.hint("未查询到当前时间段的数据", {position:"middle"});
							return;
						}
						for (var i=0;i<data.length;i++){
							alalrm.add({
								vName:data[i].vname,
								alarms:data[i].con
							});
						}
						alalrm.refreshData();
						this.comp("unitpopOver").hide();
					}else{
//						alert(msg.data);
						this.comp("unitpopOver").hide();
						justep.Util.hint(msg.data, {position:"middle"});
					}
				},
				error: function(){
//					alert("数据查询错误，请稍候再试");
					this.comp("unitpopOver").hide();
					justep.Util.hint("未查询到当前时间段的数据", {position:"middle"});
				}
			});
		}else{
			justep.Util.hint("请点击右上角按钮请选择车辆");
		}
	};
	////保存上一页的xid 方便回跳
	Model.prototype.carForMileBtnClick = function(event){
		this.lastContentXid = this.comp("contents1").getActiveXid();
	};
	//里程一天查询
	Model.prototype.oneDayBtnClick = function(event){
		var date = new Date();
		var startDate = date.toLocaleDateString().replace("/", "-").replace("/", "-")+" 00:00:00";
		var endDate = date.toLocaleDateString().replace("/", "-").replace("/", "-")+" 23:59:59";
		this.getMileAge(event,startDate, endDate);
	};
//里程三天查询
	Model.prototype.ThreeDaysBtnClick = function(event){
		var date = new Date();
		var twoAgo = date.getTime()-1000*60*60*24*2;
		var befDate = new Date(twoAgo);
		var startDate = befDate.getFullYear()+"-"+(befDate.getMonth()+1)+"-"+(befDate.getDate())+" 00:00:00"; 
		var endDate = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()+" 23:59:59";
		this.getMileAge(event,startDate, endDate);
	};
//里程周查询
	Model.prototype.oneWeekBtnClick = function(event){
		var date = new Date();
		var weekAgo = date.getTime()-1000*60*60*24*6;
		var befDate = new Date(weekAgo);
		var startDate = befDate.getFullYear()+"-"+(befDate.getMonth()+1)+"-"+(befDate.getDate())+" 00:00:00"; 
		var endDate = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()+" 23:59:59";
		this.getMileAge(event,startDate, endDate);
	};
//里程月查询
	Model.prototype.oneMonthBtnClick = function(event){
		var date = new Date();
		var monthAgo = date.getTime()-1000*60*60*24*30;
		var befDate = new Date(monthAgo);
		var startDate = befDate.getFullYear()+"-"+(befDate.getMonth()+1)+"-"+(befDate.getDate())+" 00:00:00"; 
		var endDate = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()+" 23:59:59";
		this.getMileAge(event,startDate, endDate);
	};

//报警一天查询
	Model.prototype.alarmOneBtnClick = function(event){
		var date = new Date();
		var startDate = date.toLocaleDateString().replace("/", "-").replace("/", "-")+" 00:00:00";
		var endDate = date.toLocaleDateString().replace("/", "-").replace("/", "-")+" 23:59:59";
		this.getAlarmCount(event, startDate, endDate);		
	};

//报警三天查询
	Model.prototype.alarmThreeBtnClick = function(event){
		var date = new Date();
		var monthAgo = date.getTime()-1000*60*60*24*2;
		var befDate = new Date(monthAgo);
		var startDate = befDate.getFullYear()+"-"+(befDate.getMonth()+1)+"-"+(befDate.getDate())+" 00:00:00"; 		 
		var endDate =  date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()+" 23:59:59";
		this.getAlarmCount(event, startDate, endDate);		
	};

//报警周查询
	Model.prototype.alarmWeekBtnClick = function(event){
		var date = new Date();
		var monthAgo = date.getTime()-1000*60*60*24*6;
		var befDate = new Date(monthAgo);
		var startDate = befDate.getFullYear()+"-"+(befDate.getMonth()+1)+"-"+(befDate.getDate())+" 00:00:00"; 
		var endDate = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()+" 23:59:59";
		this.getAlarmCount(event, startDate, endDate);		
	};

//报警月查询
	Model.prototype.alarmMonthBtnClick = function(event){
		var date = new Date();
		var monthAgo = date.getTime()-1000*60*60*24*30;
		var befDate = new Date(monthAgo);
		var startDate = befDate.getFullYear()+"-"+(befDate.getMonth()+1)+"-"+(befDate.getDate())+" 00:00:00"; 
		var endDate = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()+" 23:59:59";
		this.getAlarmCount(event, startDate, endDate);
	};

//打开加载页面
	Model.prototype.modelLoad = function(event){
		this.comp("contents1").to("monitorContent");
		this.clearAllData();
		
	};
//	接受来自login.w的weindowContainer的用户信息 执行优先级低于model的onload时间对应的方法
	Model.prototype.userDataReceiverReceive = function(event){
		
		var suid = 0;
		var loginId ="";
		this.comp("contents1").to("monitorContent");
		this.comp("unitpopOver").show();
		var self = this;
		this.clearAllData();
		var userData=event.source.getReceiveData();
		var groupData= this.comp("groupData");
		var unitlData = this.comp("unitListData");
		this.carlog = userData.data.carLog;
		if(userData.data.carLog=="true"){
			this.comp("userData").newData({
				defaultValues:userData.data.userdata.rows
			});
			this.comp("userData").refreshData();
			var usersData = this.comp("userData");
			var lastdesc ="";
			groupData.clear();
			groupData.refreshData();
			unitlData.clear();         
			unitlData.refreshData();
			usersData.each(function(options){
				loginId = options.row.val("opid");
			});
			this.opid = loginId;
		}else{
			var vname ="";
			var contactor="";
			var carData = this.comp("carData");
			carData.newData({defaultValues:userData.data.cardata.rows});
			carData.refreshData();
			carData.each(function(options){
				suid =options.row.val("suid");
				vname = options.row.val("vname");
				contactor = options.row.val("ccontactor");
			});
			this.comp("userData").newData({
				defaultValues:[{
					"opid":vname,
					"opname":contactor,
					"oppasswd":"",
					"enabled":true,
					"opdesc":"",
					"isroot":"",
					"ismanager":"",
					"phone":""
				}]
			});			
		}
			var msg ="{suid:"+suid+",OPID:"+this.opid+"}";
			$.ajax({
				type: 'post',
				url: "http://222.161.211.36:8080/Android_Server/lasttrack",
				cache: false,
				data: {
					msg:msg
				},
				dataType: 'json',
				success : function(msg) {
					if(msg.success){
						var data = msg.data;
						for (var i=0;i<data.length;i++){
							if(lastdesc!=data[i].sgdesc){
								groupData.newData({
									defaultValues:[{
										"fName":data[i].sgdesc
									}]
								});
								lastdesc = data[i].sgdesc;
							}
							var ostdescs =data[i].ostdesc.split(",");
							unitlData.newData({
								defaultValues:[{
									"suid":data[i].suid,
									"utc":data[i].utc,
									"lat":data[i].lat,
									"lon":data[i].lon,
									"alt":data[i].alt,
									"head":data[i].head,
									"speed":data[i].speed,
									"distance":data[i].distance,
									"tflag":data[i].tflag,
									"vflag":data[i].vflag,
									"ost":data[i].ost,
									"ostdesc":ostdescs[0],
									"ostdesc1":ostdescs[1],
									"vname":data[i].vname,
									"mac":data[i].mac,
									"sgdesc":data[i].sgdesc,
									"sgcontactor":data[i].sgcontactor,
									"sgphone":data[i].sgphone,
									"outlinestatedesc":data[i].outlinestatedesc,
									"vid":data[i].vid,
									"cphone1":data[i].cphone1,
									"position":data[i].position
								}],
							});
						}
						self.sendPositionToMap(data,"mapover");
						self.comp("unitpopOver").hide();
					}else{
						self.comp("unitpopOver").hide();
						alert(msg.data);
					}
				},
				error: function(){
					self.comp("unitpopOver").hide();
//					alert("数据查询失败，请稍候再试");
					justep.Util.hint("未查询到当前时间段的数据", {position:"middle"});
					
				}
			});				
	};//地图页面跳转逻辑 本框架不支持地图 只能将地图放入html 再将html放入.w文件 用windowdialog或者windowcontainer跳转 建议使用windowdialog
	Model.prototype.sendPositionToMap = function(positionData,type){
			var sendData = {position:positionData,sendType:type,sendOpid:this.opid};
			this.comp("mapContainer").refresh("$UI/EMPer/mapActivity.w",{data:sendData});
	};//获取当前位置（因框架限制暂未完成原因：目前只能在打开地图的html时向其传送数据，若已经打开，尚未找到相关方法）
	Model.prototype.monitorContentActive = function(event){
		var success = function(postion){
		};
		var error = function(message){
		};
//		navigator.geolocation.getCurrentPosition(success, error)	
	};

	Model.prototype.button17Click = function(event){

	};

	Model.prototype.unitListsClick = function(event){
		
	};

	Model.prototype.unitListContentActive = function(event){
		
	};
	//获取数组arry中元素val下标的方法
	Model.prototype.indexof = function(array,val){
		for (var i = 0; i < array.length; i++) {
			if (array[i] == val) {
			return i;
			}
		}
		return -1;		
	};//删除arry数组中的val元素
	Model.prototype.remove = function(array,val){
		var index = this.indexof(array,val);
		if (index > -1) {
			array.splice(index, 1);
		}
	};
	//车辆列表的车辆选择逻辑
	Model.prototype.unitDetailDIVClick = function(event){
		var row = event.bindingContext.$object;
		var suid = row.val("suid");
		if(this.indexof(this.unitList, suid)==-1){
			this.unitList.push(suid);
			this.elemList.push(event.currentTarget);
			$(event.currentTarget).addClass("divClass2");
		}else{
			this.remove(this.unitList, suid);
			$(event.currentTarget).removeClass("divClass2");
		}
	};
	//车辆列表的车辆选择逻辑
	Model.prototype.unitDetailAlarmClick = function(event){
		var row = event.bindingContext.$object;
		var suid = row.val("suid");
		if(this.indexof(this.unitList, suid)==-1){
			this.unitList.push(suid);
			$(event.currentTarget).addClass("divClass2");
		}else{
			this.remove(this.unitList, suid);
			$(event.currentTarget).removeClass("divClass2");
		}
	};	
//车辆列表回跳上一页面
	Model.prototype.backPreBtnClick = function(event){
		this.comp("contents1").to(this.lastContentXid);
	};
//获取上一页面的xid 方面回跳
	Model.prototype.carForAlarmBtnClick = function(event){
		this.lastContentXid = this.comp("contents1").getActiveXid();
	};
	//回到统计页面时清除车辆列表的样式和集合
	Model.prototype.alarmBackBtnClick = function(event){
		if(this.elemList.length>0){
			for (var i=0;i<this.elemList.length;i++){
				$(this.elemList[i]).removeClass("divClass2");
			}
		}
		if(this.unitList.length>0){
			this.unitList=[];
		}			
		this.comp("contents1").to("countContent");
	};
		//激活页面时清理车辆集合 保证查询车辆的正确性
	Model.prototype.mileAgeContentActive = function(event){
		this.comp("mileAgeData").clear();
		var suid =0;
		if(this.carlog=="false"){
			this.comp("carData").each(function(option){
				suid = option.row.val("suid");
			});
			this.unitList.push(suid);
			$(event.currentTarget).addClass("divClass2");			
		}		
	};
	//激活页面时清理车辆集合 保证查询车辆的正确性
	Model.prototype.alarmContentActive = function(event){
		this.comp("alarmData").clear();
		var suid =0;
		if(this.carlog=="false"){
			this.comp("carData").each(function(option){
				suid = option.row.val("suid");
			});
			this.unitList.push(suid);
			$(event.currentTarget).addClass("divClass2");			
		}
	};
//	前天
	Model.prototype.beforLastDayBtnClick = function(event){
		var date= new Date();
		var lasttime = date.getTime()-1000*60*60*24*2;
		var lastday = new Date(lasttime);
		this.comp("startInput").val(lastday.toLocaleDateString().replace("/", "-").replace("/", "-")+" 00:00:00");
		this.comp("endInput").val(lastday.toLocaleDateString().replace("/", "-").replace("/", "-")+" 23:59:59");
	};
	Model.prototype.lastDayBtnClick = function(event){//前一天
		var date= new Date();
		var lasttime = date.getTime()-1000*60*60*24;
		var lastday = new Date(lasttime);
		this.comp("startInput").val(lastday.toLocaleDateString().replace("/", "-").replace("/", "-")+" 00:00:00");
		this.comp("endInput").val(lastday.toLocaleDateString().replace("/", "-").replace("/", "-")+" 23:59:59");
	};
	Model.prototype.trackBackBtnClick = function(event){//轨迹回放
		this.comp("unitpopOver").show();
		var self = this;
			var vname =this.comp("vnameInput").val();
//			var vname ="吉AH1931";
		    var suid = 0;
			var unitlData = this.comp("unitListData");
			var replayData = this.comp("replayData");
			var startInput = this.comp("startInput").val();
			var endInput = this.comp("endInput").val();
			if(justep.Date.diff(new Date(startInput), new Date(endInput), 'd')>3){
				alert("最多查询三天的数据");
				this.comp("unitpopOver").hide();
				return false;
			}
			var startDate = Math.round(new Date(startInput)/1000);
			var endDate = Math.round(new Date(endInput)/1000);
			var lastdesc ="";
			unitlData.each(function(options){
				if(vname==options.row.val("vname")){
					suid = options.row.val("suid");
				}
			});
			var msg ="{suid:"+suid+",begintime:'"+startDate+"',endtime:'"+endDate+"'}";
			$.ajax({
				type: 'post',
				url: "http://222.161.211.36:8080/Android_Server/suidtrack",
				cache: false,
				data: {
					msg:msg
				},
				dataType: 'json',
				success : function(msg) {
					if(msg.success){
						var data = msg.data;
						for (var i=0;i<data.length;i++){
							var ostdescs =data[i].ostdesc.split(",");
							replayData.newData({
								defaultValues:[{
									"utc":data[i].utc,
									"lat":data[i].lat,
									"lon":data[i].lon,
									"alt":data[i].alt,
									"head":data[i].head,
									"speed":data[i].speed,
									"distance":data[i].distance,
									"tflag":data[i].tflag,
									"vflag":data[i].vflag,
									"ost":data[i].ost,
									"ostdesc":ostdescs[0],
									"ostdesc1":ostdescs[1],
								}]
							});
						}
						self.comp("unitpopOver").hide();
						self.sendReplayToMap(data,"",vname);
					}else{
						alert(msg.data);
						self.comp("unitpopOver").hide();
					}
				},
				error: function(){
					self.comp("unitpopOver").hide();
					alert("网络不稳定，请稍候再试");
				}
			});			
	};
	//地图页面跳转逻辑 本框架不支持地图 只能将地图放入html 再将html放入.w文件 用windowdialog跳转
	Model.prototype.sendReplayToMap = function(positionData,type,vname){
			var sendData = {position:positionData,sendType:type,sendOpid:this.opid,sendVname:vname,trajectory:this.trajectory};
//			this.comp("mapReplayContainer").load("$UI/EMPer/mapReplayActivity.w",{data:sendData});
			this.comp("mapReplayDialog").open({"src":"$UI/EMPer/mapReplayActivity.w","data":sendData});
	};	//轨迹回放点轨迹标志
	Model.prototype.pointTracBtnClick = function(event){
		this.trajectory = "point";
	};//轨迹回放线轨迹标志
	Model.prototype.lineTrackBtnClick = function(event){
		this.trajectory = "line";
	};//关闭轨迹回放页面
	Model.prototype.mapReplayContainerReceive = function(event){
		var data = event.data;
		if("close".indexOf(data.id, 0)>-1){
			this.comp("contents1").to("tackContent");
		}
	};
	Model.prototype.devicePicRowClick = function(event){//照片查询
			var self = this;
			var unitLData= this.comp("unitListData");
			this.comp("unitpopOver").show();
			var vid ="0";
			var vname =this.comp("vnameInput").val();
			unitLData.each(function(options){
				if(vname==options.row.val("vname")){
					vid = options.row.val("vid");
				}				
			});
			var msg ="{vid:"+vid+"}";
			$.ajax({
				type: 'post',
				url: "http://222.161.211.36:8080/Android_Server/VID_Image",
				cache: false,
				data: {
					msg:msg
				},
				dataType: 'json',
				success : function(msg) {
					if(msg.success){
						var data = msg.data;
						if(msg.size===0){
							justep.Util.hint("该车并未上传车辆照片");
						}else{
							self.comp("picViewDialog").open({"src":"$UI/EMPer/pictureView.w","data":data});
						}
					}else{
						justep.Util.hint("该车并未上传车辆照片");
					}
					self.comp("unitpopOver").hide();
				},
				error: function(){
					justep.Util.hint("该车并未上传车辆照片");
					self.comp("unitpopOver").hide();
				}
			});		
	};//轨迹回放跳转
	Model.prototype.guijihuifangRowClick = function(event){
		this.comp("contents1").to("tackContent");
		this.comp("replayTitleBar").set({"title":this.comp("vnameInput").val()});
	};
	//获取车辆详细信息
	Model.prototype.unitDetailRowClick = function(event){
			var self = this;
			var unitLData= this.comp("unitListData");
			var unitDetails = this.comp("unitDetailData");
			var vid ="0";
			var vname =this.comp("vnameInput").val();
			unitLData.each(function(options){
				if(vname==options.row.val("vname")){
					vid = options.row.val("suid");
				}				
			});
			var msg ="{suid:"+vid+"}";
			$.ajax({
				type: 'post',
				url: "http://222.161.211.36:8080/Android_Server/VehicleInfo",
				cache: false,
				data: {
					msg:msg
				},
				dataType: 'json',
				success : function(msg) {
					if(msg.success){
						var data = msg.data;
						unitDetails.newData({
							defaultValues:[{
								"vname":data.vname,
								"licenseno":data.licenseno,
								"engineno":data.engineno,
								"sgname":data.sgname,
								"frameno":data.frameno,
								"outlength":data.outlength,
								"vcolor":data.vcolor,
								"vcat":data.vcat
							}]
						});
					}else{
						alert(msg.data);
					}
				},
				error: function(){
					alert("网络不稳定，请稍候再试");
				}
			});				
	};//分组单位点击事件
	Model.prototype.groupRowClick = function(event){
		this.comp("contents1").to("UnitContent");
	};//关闭加载页面
	Model.prototype.closeLoading = function(){
		this.comp("unitpopOver").hide();
	};//车辆列表过滤方法（list的filter目前无法正常调用该方法 暂不使用）
	Model.prototype.getunitListInput = function (vname){
		var inptName = this.comp("unitListInput").val();
		if(""===inptName){
			return true;
		}else{
			if(inptName.indexOf(vname)>-1){
				return true;
			}else{
				return false;
			}
		}
		return true;
	};//跳转至里程信息
	Model.prototype.mileAgeCountClick = function(event){
		this.comp("contents1").to("mileAgeContent");
	};//跳转至报警信息
	Model.prototype.alarmCountClick = function(event){
		this.comp("contents1").to("alarmContent");
	};//版本检查方法
	Model.prototype.checkVersion = function(){
		versionChecker.checked();
	};//跳转至关于信息页面
	Model.prototype.aboutInformationClick = function(event){
		this.comp("contents1").to("guanyuContent");
	};//跳转至帐号信息页面
	Model.prototype.accInformationClick = function(event){
		this.comp("contents1").to("accContent");
	};//注销
	Model.prototype.logOutBtnClick = function(event){
		this.comp("userDataReceiver").windowCancel();
		navigator.app.clearCache();
	};
//	退出整个应用
	Model.prototype.exitAppBtnClick = function(event){
		if(!justep.Browser.isIOS){//使用于安卓系统
			navigator.app.exitApp();
		}
	};//获取车辆方向图标
	Model.prototype.getunitHead=function(head,tflag,status){
		var thHead = this.getHead(head);//报警状态
		var thStatus="blue";
		if("0".indexOf(tflag)>-1){
			if("在线".indexOf(status)>-1){
				thStatus ="blue_";
			}else{
				thStatus ="black_";
			}
		}else{
			thStatus = "red_";
		}		
		var icon = "./img/"+thStatus+thHead+".png";
		return icon;
	};//获取车辆方向代码
	Model.prototype.getHead =function (degree){
	   // degree =degree/3600;//查询回来的数据已经做好这一步的处理
		if ((degree >= 338 && degree <= 360) || (degree >= 0 && degree < 23)) {
			return "0";
		} else if (degree >= 23 && degree < 68) {
			return "45";
		} else if (degree >= 68 && degree < 113) {
			return "90";
		} else if (degree >= 113 && degree < 158) {
			return "135";
		} else if (degree >= 158 && degree < 203) {
			return "180";
		} else if (degree >= 203 && degree < 248) {
			return "225";
		} else if (degree >= 248 && degree < 293) {
			return "270";
		} else if (degree >= 293 && degree < 338) {
			return "315";
		} else {
			return "0";
		}
	};//帐号信息激活页面
	Model.prototype.accContentActive = function(event){
	};
//	分享到微信朋友圈
	Model.prototype.weixinShareClick = function(event){
			/*
			1、打开分享页面
	        2、参数说明 
	            thumb：缩略图，可以显示商品图片，注意不能大于32kb，链接从http开始
				webpageUrl: 分享链接，使用location.href显示当前页面，链接从http开始
				scene:分享到微信朋友圈、微信朋友、微信群 
					weixin.Scene.TIMELINE 是分享到微信朋友圈
			 		weixin.Scene.SESSION 是分享给微信朋友、微信群
			*/
			if (!navigator.weixin) {
				return;
			}
			var weixin = navigator.weixin;
			var Utils = require("$UI/system/components/justep/common/utils");		
			weixin.share({
				message : {
					title : "寰旗车途",
					description : "吉林寰旗科技股份有限公司",
					mediaTagName : "",
					thumb : location.origin + require.toUrl("./img/logo/share.png"),
					media : {
						type : weixin.Type.WEBPAGE,
						webpageUrl : "http://www.jlhuanqi.com/huanqigpscar.apk"
					}
				},
				scene : weixin.Scene.TIMELINE
			}, function() {
				 justep.Util.hint("分享成功", {type:"success",position:"middle"});
			}, function(reason) {
				console.log(reason);
			});
			
	};
	Model.prototype.tackContentActive = function(event){
		var date= new Date();
		this.comp("startInput").val(date.toLocaleDateString().replace("/", "-").replace("/", "-")+" 00:00:00");
		this.comp("endInput").val(date.toLocaleDateString().replace("/", "-").replace("/", "-")+" 23:59:59");
	};
	Model.prototype.clearAllData = function(){
		this.comp("userData").clear();
		this.comp("carData").clear();
		this.comp("groupData").clear();
		this.comp("unitListData").clear();
		this.comp("userData").refreshData();
		this.comp("carData").refreshData();
		this.comp("groupData").refreshData();
		this.comp("unitListData").refreshData();
	}
	return Model;
});
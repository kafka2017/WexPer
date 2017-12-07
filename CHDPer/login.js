define(function(require){
//	外部插件，js引用
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!at.modalog.cordova.plugin.cache");
	var versionChecker = require("$UI/CHDPer/appVersionChecker");
	justep.Shell.setIsSinglePage(true);
	var Model = function(){//公共变量定义
		this.callParent();
	};
	
	//图片路径转换
	Model.prototype.toUrl = function(url){
		return url ? require.toUrl(url) : "";
	};
	//登录按钮
	Model.prototype.loginBtnClick = function(event){
		var self = this;
		var carLog = this.comp("toggle2").value;
		var name = this.comp("nameInput").val();
		var pword = this.comp("passwordInput").val();
		if(""===name||""===pword){
			alert("用户名和密码不能为空");
			return false;
		}
		localStorage.clear();
		localStorage.setItem("userid", name);
		localStorage.setItem("pword", pword);
		localStorage.setItem("onself", carLog);
		this.comp("unitpopOver").show();
		var userData = this.comp("userData");
		var carData = this.comp("carData");
		var msg ="{userName:'"+name+"',password:'"+pword+"',kind:'0',onself:"+carLog+",tiyan:0,kind:0}";
		$.ajax({
			type: 'post',
			url: "http://221.204.237.67:8099/Android_Server/jsonlogin",
			cache: false,
			data: {
				msg:msg
			},
			dataType: 'json',
			success : function(msg) {
				if(msg&&msg.success){
					var data = msg.data;
					if(carLog=="false"){
					carData.newData({defaultValues:[data]});
					var sendData = {cardata:carData.toJson(false),carLog:carLog};
					}else{
						userData.newData({
							defaultValues:[{
								"opid":data.opid,
								"opname":data.opname,
								"oppasswd":data.oppasswd,
								"enabled":data.enabled,
								"opdesc":data.opdesc,
								"isroot":data.isroot,
								"ismanager":data.ismanager,
								"phone":data.phone
							}]
						});
						var sendData = {userdata:userData.toJson(false),carLog:carLog};
					}
					self.comp("mainWindowDialog").open({url:"first",data:sendData});
//				alert("数据组件赋值完成，开始页面跳转")//将登录后得到的信息收集 通过mainWindowDialog打开下一页面并传送数据
					self.comp("unitpopOver").hide();
				}else{
					self.comp("unitpopOver").hide();
					alert("用户名或密码错误");
				}
			},
			error: function(){
				self.comp("unitpopOver").hide();
				alert("当前网络不稳定，请稍候再试");
			}
		});		
	};
	//登录页面加载完毕后 进行一次版本检查
	Model.prototype.modelLoad = function(event){
		var userid = localStorage.getItem("userid");
		var pword = localStorage.getItem("pword");
		var onself = localStorage.getItem("onself");
		var ischecked = false;
		var value = "true";
		if(onself=="false"){
			ischecked= true;
			value = "false";
		}
		this.comp("nameInput").val(userid);
		this.comp("passwordInput").val(pword);
		this.comp("toggle2").val(value);
		this.comp("toggle2").set({checked:ischecked});
		versionChecker.check();
	};
	
	return Model;
});
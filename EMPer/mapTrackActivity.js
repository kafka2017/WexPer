define(function(require) {
	var $ = require("jquery");
	require("res!$UI/system/lib/jquery/jquery-1.11.1.js");

	var Model = function() {
		this.callParent();
	};
//接收来自mapActivity.w中mapTrackDialog的数据
	Model.prototype.mapDataReceiverReceive = function(event) {
		this.comp("unitpopOver").show();
		var position = event.data;
		var vname = event.data.vname;
		this.comp("mapTitleBar").set({"title" : vname});
		var mapPanelId = $(this.getElementByXid("mapPanel")).attr('id');
		var $mapFrame = $('#' + mapPanelId + ' iframe');
		var mapFrame = $mapFrame.get(0);
		$mapFrame.on('load',function(){
		//打开地图的html
			mapFrame.contentWindow.postMessage(JSON.stringify(position), "*");
		});
	};

	Model.prototype.hideMapBtnClick = function(event) {
		this.comp('mapDataReceiver').windowCancel();
	};
	//点击地图标记回调到这里
	Model.prototype.stopSendToMap = function(suid,opid){
		this.close();
//		this.comp('mapDataReceiver').windowEnsure("")
//			var msg ="{suid:"+suid+",OPID:"+opid+"}";
//			var self = this;
//			$.ajax({
//				type: 'post',
//				url: "http://192.168.0.252:8087/Android_Server/lasttrack",
//				cache: false,
//				data: {
//					msg:msg
//				},
//				dataType: 'json',
//				success : function(msg) {
//					var positionData = msg.data;
//					self.sendPositionToMap(positionData,"");				
//				},
//				error: function(){
//				}
//			});				
	}
	//订阅地图回调至该方法
	Model.prototype.sendPositionToMap = function(positionData,type){
//			var sendData = {position:positionData,sendType:type};
//			this.comp("mapContainer").load("$UI/EMPer/mapActivity.w",{data:sendData});
//			this.comp('mapDataReceiver').windowCancel();
	}	
	Model.prototype.modelLoad = function(event){
	};	
	Model.prototype.backToMonitorClick = function(event){
		this.close();
	};	
	Model.prototype.closeLoading = function(){
		this.comp("unitpopOver").hide();
	}
	return Model;
});
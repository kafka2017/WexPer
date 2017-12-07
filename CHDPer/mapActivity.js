define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("res!$UI/system/lib/jquery/jquery-1.11.1.js");

	var Model = function() {
		this.callParent();
		this.positionData;
	};
//	接收EMPer中mapContainer传过来的数据 同时打开本页中包含地图的html并将数据传送过去
	Model.prototype.mapDataReceiverReceive = function(event) {
		var position = event.data;
		var mapPanelId = $(this.getElementByXid("mapPanel")).attr('id');
		var $mapFrame = $('#' + mapPanelId + ' iframe');
		var mapFrame = $mapFrame.get(0);
		$mapFrame.on('load',function(){
//		打开地图的html
			mapFrame.contentWindow.postMessage(JSON.stringify(position), "*");
				var success = function(status) {
				}
				
				var error = function(status) {
				}
//				window.cache.clear(success, error);				
		});
	};
	Model.prototype.hideMapBtnClick = function(event) {
		this.comp('mapDataReceiver').windowCancel();
	};
//	获取当前位置，由map.html调用，尚未找到如何将数据回传至html页面的方法
	Model.prototype.getCurrentPosition = function() {
	var successCallback = function (position){
		var longitude = position.longitude;
		var latitude = position.latitude;
		return {"longitude":longitude,"latitude":latitude};
	};
	var  errorCallback = function (errorBack){
	};
		navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
	};
	Model.prototype.getMapVname = function(vName){
		this.getParent().comp("vnameInput").set("value", vName);
		this.getParent().comp("vnameTitleBar").set({"title":vName})
	};	
	//打开订阅页面
	Model.prototype.sendTrackToMap = function(suid,opid,vname){
			var msg ="{suid:"+suid+",OPID:"+opid+"}";
			var self =this;
			$.ajax({
				type: 'post',
				url: "http://221.204.237.67:8099/Android_Server/lasttrack",
				cache: false,
				data: {
					msg:msg
				},
				dataType: 'json',
				success : function(msg) {
					if(msg.success){
						var positionData = msg.data;
						var sendData = {position:positionData,sendOpid:opid,"vname":vname};
						self.comp("mapTrackDialog").open({"src":"$UI/CHDPer/mapTrackActivity.w","data":sendData});					
					}else{
						alert(msg.data);
					}
				},
				error: function(){
					alert("网络不稳定，请稍候再试");
				}
			});				
	};
	Model.prototype.modelLoad = function(event){
	};
	Model.prototype.dataTrans = function(data){
		var coordinate="";
		var coordinates=[];
		var self = this;
		for (var i=0;i<data.position.length;i++){
			var x
			this.getCityPosition(data.position[i],function(datas){
				x =datas;
				return x;
			});
		}
		return data;
	};		
	Model.prototype.getCityPosition=function(data,fn){
		var lon=data.lon;
		var lat=data.lat;
		var coordinate;
		var url="http://api.map.baidu.com/geoconv/v1/?coords="+data.lon+","+data.lat+"&ak=E6WXTMe7rUDK3gg7lmaKG7Un";
			$.ajax({
				type: 'get',
				url: url,
				cache: false,
				async:false,
				data: {},
				dataType: 'jsonp',
				success : function(msg) {
					lon=msg.result[0].x;
					lat =msg.result[0].y;
					 coordinate=lon+","+lat;
					 if(coordinate){
						 fn(coordinate);
					 }
				},
				error: function(){
				}
			});
	};
	Model.prototype.pirntInfo=function(){
		justep.Util.hint("没有找到该车辆",{position:"bottom"});
	};
	return Model;
});
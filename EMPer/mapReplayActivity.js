define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	//接收来自EMPer中mapReplayDialog的数据
	Model.prototype.mapReplayReceiverReceive = function(event){
		this.comp("unitpopOver").show();
		var position = event.data;
		var vname = position.sendVname;
		this.comp("mapReplayBar").set({"title":vname});
		var mapPanelId = $(this.getElementByXid("mapPanel")).attr('id');
		var $mapFrame = $('#' + mapPanelId + ' iframe');
		var mapFrame = $mapFrame.get(0);
		$mapFrame.on('load',function(){
//			打开地图的html
			mapFrame.contentWindow.postMessage(JSON.stringify(position), "*");
		});
		this.closeLoading();
	};

	Model.prototype.replayBackBtnClick = function(event){
		this.close();
	};
Model.prototype.closeLoading = function(){
	this.comp("unitpopOver").hide();
}
	return Model;
});
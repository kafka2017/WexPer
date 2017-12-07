define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
//接受EMPer.w中picViewDialog传过来的数据
	Model.prototype.viewDataReceiverReceive = function(event){
		var data = event.data;
		var picViewData = this.comp("picViewData");
		for (var i=0;i<data.length;i++){
			picViewData.newData({
				defaultValues:[{
					"vehicle_id":data[i].vehicle_id,
					"photo_ID":data[i].photo_ID,
					"photo_URL":data[i].photo_URL
				}]
			});
		}
	picViewData.refreshData(true);
	};

	return Model;
});
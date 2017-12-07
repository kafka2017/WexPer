define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/EMPer/pictureView'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cy6n22e';
	this._flag_='39d7b4200ac37454c9ba9cf8f862512b';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":false,"defCols":{"photo_ID":{"define":"photo_ID","label":"图片ID","name":"photo_ID","relation":"photo_ID","type":"String"},"photo_URL":{"define":"photo_URL","label":"图片URL","name":"photo_URL","relation":"photo_URL","type":"String"},"vehicle_id":{"define":"vehicle_id","label":"服务单元id","name":"vehicle_id","relation":"vehicle_id","type":"String"}},"directDelete":false,"events":{},"idColumn":"vehicle_id","limit":20,"xid":"picViewData"});
}}); 
return __result;});
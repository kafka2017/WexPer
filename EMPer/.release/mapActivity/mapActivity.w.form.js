define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/windowContainer/windowContainer');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/panel/panel');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/EMPer/mapActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c67NjMj';
	this._flag_='be8fe3111e5b3f5aec73d235b3bdd89b';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"alt":{"define":"alt","name":"alt","relation":"alt","type":"String"},"cphone1":{"define":"cphone1","name":"cphone1","relation":"cphone1","type":"String"},"distance":{"define":"distance","name":"distance","relation":"distance","type":"String"},"head":{"define":"head","name":"head","relation":"head","type":"String"},"headnum":{"define":"headnum","name":"headnum","relation":"headnum","type":"String"},"lat":{"define":"lat","name":"lat","relation":"lat","type":"String"},"lon":{"define":"lon","name":"lon","relation":"lon","type":"String"},"mac":{"define":"mac","name":"mac","relation":"mac","type":"String"},"ost":{"define":"ost","name":"ost","relation":"ost","type":"String"},"ostdesc":{"define":"ostdesc","name":"ostdesc","relation":"ostdesc","type":"String"},"ostdesc1":{"define":"ostdesc1","name":"ostdesc1","relation":"ostdesc1","type":"String"},"outlinestatedesc":{"define":"outlinestatedesc","name":"outlinestatedesc","relation":"outlinestatedesc","type":"String"},"sgcontactor":{"define":"sgcontactor","name":"sgcontactor","relation":"sgcontactor","type":"String"},"sgdesc":{"define":"sgdesc","name":"sgdesc","relation":"sgdesc","type":"String"},"sgphone":{"define":"sgphone","name":"sgphone","relation":"sgphone","type":"String"},"speed":{"define":"speed","name":"speed","relation":"speed","type":"String"},"suid":{"define":"suid","label":"","name":"suid","relation":"suid","type":"String"},"tflag":{"define":"tflag","name":"tflag","relation":"tflag","type":"String"},"utc":{"define":"utc","label":"","name":"utc","relation":"utc","type":"String"},"vflag":{"define":"vflag","name":"vflag","relation":"vflag","type":"String"},"vid":{"define":"vid","name":"vid","relation":"vid","type":"String"},"vname":{"define":"vname","name":"vname","relation":"vname","type":"String"}},"directDelete":false,"events":{},"idColumn":"suid","isMain":false,"limit":20,"xid":"unitListData"});
}}); 
return __result;});
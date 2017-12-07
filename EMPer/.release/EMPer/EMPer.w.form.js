define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/windowContainer/windowContainer');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/EMPer/EMPer'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c2qyIFj';
	this._flag_='075b57c658d8c854940a41c6769a4a00';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":false,"confirmRefresh":false,"defCols":{"fName":{"define":"fName","label":"公司名称","name":"fName","relation":"fName","type":"String"}},"directDelete":false,"events":{},"idColumn":"fName","initData":"[]","isMain":false,"limit":-1,"xid":"groupData"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":false,"defCols":{"LocatTime":{"define":"LocatTime","label":"定位时间","name":"LocatTime","relation":"LocatTime","type":"String"},"licenseNo":{"define":"licenseNo","label":"车牌号","name":"licenseNo","relation":"licenseNo","type":"String"},"location":{"define":"location","label":"位置","name":"location","relation":"location","type":"String"},"mileAge":{"define":"mileAge","label":"里程","name":"mileAge","relation":"mileAge","rules":{"number":true},"type":"Float"},"oilAmount":{"define":"oilAmount","label":"油量","name":"oilAmount","relation":"oilAmount","rules":{"number":true},"type":"Float"},"psgID":{"define":"psgID","label":"企业ID","name":"psgID","relation":"psgID","rules":{"integer":true},"type":"Integer"},"psgName":{"define":"psgName","label":"企业名称","name":"psgName","relation":"psgName","type":"String"},"speed":{"define":"speed","label":"速度","name":"speed","relation":"speed","rules":{"number":true},"type":"Float"},"state":{"define":"state","label":"状态","name":"state","relation":"state","type":"String"},"status":{"define":"status","label":"状态","name":"status","relation":"status","type":"String"},"unitID":{"define":"unitID","label":"服务单元ID","name":"unitID","relation":"unitID","rules":{"integer":true},"type":"Integer"},"wendu":{"define":"wendu","label":"温度","name":"wendu","relation":"wendu","type":"String"}},"directDelete":false,"events":{},"idColumn":"psgID","initData":"[]","isMain":false,"limit":20,"xid":"unitData"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":false,"defCols":{"distance":{"define":"distance","label":"公里数","name":"distance","relation":"distance","rules":{"number":true},"type":"Float"},"vname":{"define":"vname","label":"车牌号","name":"vname","relation":"vname","type":"String"}},"directDelete":false,"events":{},"idColumn":"vname","isMain":false,"limit":20,"xid":"mileAgeData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"alarms":{"define":"alarms","label":"报警数","name":"alarms","relation":"alarms","rules":{"integer":true},"type":"Integer"},"vName":{"define":"vName","label":"车牌号","name":"vName","relation":"vName","type":"String"}},"directDelete":false,"events":{},"idColumn":"vName","isMain":false,"limit":20,"xid":"alarmData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"engineno":{"define":"engineno","label":"发动机号","name":"engineno","relation":"engineno","type":"String"},"frameno":{"define":"frameno","label":"VIN","name":"frameno","relation":"frameno","type":"String"},"licenseno":{"define":"licenseno","label":"道路运输证","name":"licenseno","relation":"licenseno","type":"String"},"outlength":{"define":"outlength","label":"标定吨/座","name":"outlength","relation":"outlength","type":"String"},"sgname":{"define":"sgname","label":"所属企业名称","name":"sgname","relation":"sgname","type":"String"},"vcat":{"define":"vcat","label":"车辆型号","name":"vcat","relation":"vcat","type":"String"},"vcolor":{"define":"vcolor","label":"车牌颜色","name":"vcolor","relation":"vcolor","type":"String"},"vname":{"define":"vname","label":"车牌号","name":"vname","relation":"vname","type":"String"}},"directDelete":false,"events":{},"idColumn":"vname","isMain":false,"limit":20,"xid":"unitDetailData"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":false,"defCols":{"alt":{"define":"alt","name":"alt","relation":"alt","type":"String"},"cphone1":{"define":"cphone1","name":"cphone1","relation":"cphone1","type":"String"},"distance":{"define":"distance","name":"distance","relation":"distance","type":"String"},"head":{"define":"head","name":"head","relation":"head","type":"String"},"lat":{"define":"lat","name":"lat","relation":"lat","type":"String"},"lon":{"define":"lon","name":"lon","relation":"lon","type":"String"},"mac":{"define":"mac","name":"mac","relation":"mac","type":"String"},"ost":{"define":"ost","name":"ost","relation":"ost","type":"String"},"ostdesc":{"define":"ostdesc","name":"ostdesc","relation":"ostdesc","type":"String"},"ostdesc1":{"define":"ostdesc1","name":"ostdesc1","relation":"ostdesc1","type":"String"},"outlinestatedesc":{"define":"outlinestatedesc","name":"outlinestatedesc","relation":"outlinestatedesc","type":"String"},"position":{"define":"position","name":"position","relation":"position","type":"String"},"sgcontactor":{"define":"sgcontactor","name":"sgcontactor","relation":"sgcontactor","type":"String"},"sgdesc":{"define":"sgdesc","name":"sgdesc","relation":"sgdesc","type":"String"},"sgphone":{"define":"sgphone","name":"sgphone","relation":"sgphone","type":"String"},"speed":{"define":"speed","name":"speed","relation":"speed","type":"String"},"suid":{"define":"suid","label":"","name":"suid","relation":"suid","type":"String"},"tflag":{"define":"tflag","name":"tflag","relation":"tflag","type":"String"},"utc":{"define":"utc","label":"","name":"utc","relation":"utc","type":"String"},"vflag":{"define":"vflag","name":"vflag","relation":"vflag","type":"String"},"vid":{"define":"vid","name":"vid","relation":"vid","type":"String"},"vname":{"define":"vname","name":"vname","relation":"vname","type":"String"}},"directDelete":false,"events":{},"idColumn":"suid","initData":"[]","isMain":false,"limit":-1,"xid":"unitListData"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":false,"defCols":{"enabled":{"define":"enabled","label":"是否启用","name":"enabled","relation":"enabled","type":"Boolean"},"ismanager":{"define":"ismanager","label":"后台权限","name":"ismanager","relation":"ismanager","type":"Boolean"},"isroot":{"define":"isroot","label":"root 权限","name":"isroot","relation":"isroot","type":"Boolean"},"opdesc":{"define":"opdesc","label":"显示用户名","name":"opdesc","relation":"opdesc","type":"String"},"opid":{"define":"opid","label":"OPID","name":"opid","relation":"opid","rules":{"integer":true},"type":"Long"},"opname":{"define":"opname","label":"用户名","name":"opname","relation":"opname","type":"String"},"oppasswd":{"define":"oppasswd","label":"密码","name":"oppasswd","relation":"oppasswd","type":"String"},"phone":{"define":"phone","label":"用户电话","name":"phone","relation":"phone","type":"String"}},"directDelete":false,"events":{},"idColumn":"opid","isMain":false,"limit":20,"xid":"userData"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":false,"defCols":{"alt":{"define":"alt","name":"alt","relation":"alt","type":"String"},"cphone1":{"define":"cphone1","name":"cphone1","relation":"cphone1","type":"String"},"distance":{"define":"distance","name":"distance","relation":"distance","type":"String"},"head":{"define":"head","name":"head","relation":"head","type":"String"},"lat":{"define":"lat","name":"lat","relation":"lat","type":"String"},"lon":{"define":"lon","name":"lon","relation":"lon","type":"String"},"mac":{"define":"mac","name":"mac","relation":"mac","type":"String"},"ost":{"define":"ost","name":"ost","relation":"ost","type":"String"},"ostdesc":{"define":"ostdesc","name":"ostdesc","relation":"ostdesc","type":"String"},"ostdesc1":{"define":"ostdesc1","name":"ostdesc1","relation":"ostdesc1","type":"String"},"outlinestatedesc":{"define":"outlinestatedesc","name":"outlinestatedesc","relation":"outlinestatedesc","type":"String"},"sgcontactor":{"define":"sgcontactor","name":"sgcontactor","relation":"sgcontactor","type":"String"},"sgdesc":{"define":"sgdesc","name":"sgdesc","relation":"sgdesc","type":"String"},"sgphone":{"define":"sgphone","name":"sgphone","relation":"sgphone","type":"String"},"speed":{"define":"speed","name":"speed","relation":"speed","type":"String"},"suid":{"define":"suid","label":"","name":"suid","relation":"suid","type":"String"},"tflag":{"define":"tflag","name":"tflag","relation":"tflag","type":"String"},"utc":{"define":"utc","label":"","name":"utc","relation":"utc","type":"String"},"vflag":{"define":"vflag","name":"vflag","relation":"vflag","type":"String"},"vid":{"define":"vid","name":"vid","relation":"vid","type":"String"},"vname":{"define":"vname","name":"vname","relation":"vname","type":"String"}},"directDelete":false,"events":{},"idColumn":"suid","initData":"[]","isMain":false,"limit":20,"xid":"trackData"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":false,"defCols":{"ALT":{"define":"ALT","name":"ALT","relation":"ALT","type":"String"},"distance":{"define":"distance","name":"distance","relation":"distance","type":"String"},"head":{"define":"head","name":"head","relation":"head","type":"String"},"lat":{"define":"lat","name":"lat","relation":"lat","type":"String"},"lon":{"define":"lon","name":"lon","relation":"lon","type":"String"},"ost":{"define":"ost","name":"ost","relation":"ost","type":"String"},"ostdesc":{"define":"ostdesc","name":"ostdesc","relation":"ostdesc","type":"String"},"ostdesc1":{"define":"ostdesc1","name":"ostdesc1","relation":"ostdesc1","type":"String"},"speed":{"define":"speed","name":"speed","relation":"speed","type":"String"},"tflag":{"define":"tflag","name":"tflag","relation":"tflag","type":"String"},"utc":{"define":"utc","name":"utc","relation":"utc","type":"String"},"vflag":{"define":"vflag","name":"vflag","relation":"vflag","type":"String"}},"directDelete":false,"events":{},"idColumn":"ALT","isMain":false,"limit":20,"xid":"replayData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"ccontactor":{"define":"ccontactor","label":"联系人","name":"ccontactor","relation":"ccontactor","type":"String"},"cphone":{"define":"cphone","label":"电话","name":"cphone","relation":"cphone","type":"String"},"engineno":{"define":"engineno","label":"发动机号","name":"engineno","relation":"engineno","type":"String"},"frameno":{"define":"frameno","label":"车架号","name":"frameno","relation":"frameno","type":"String"},"mac":{"define":"mac","label":"终端代码","name":"mac","relation":"mac","type":"String"},"psgid":{"define":"psgid","label":"上级公司代码","name":"psgid","relation":"psgid","rules":{"integer":true},"type":"Integer"},"sgdesc":{"define":"sgdesc","label":"公司名称","name":"sgdesc","relation":"sgdesc","type":"String"},"sgid":{"define":"sgid","label":"所属公司代码","name":"sgid","relation":"sgid","rules":{"integer":true},"type":"Integer"},"suid":{"define":"suid","label":"服务单元号","name":"suid","relation":"suid","rules":{"integer":true},"type":"Integer"},"vcolor":{"define":"vcolor","label":"车牌颜色","name":"vcolor","relation":"vcolor","type":"String"},"vname":{"define":"vname","label":"车牌号","name":"vname","relation":"vname","type":"String"}},"directDelete":false,"events":{},"idColumn":"suid","isMain":false,"limit":20,"xid":"carData"});
}}); 
return __result;});
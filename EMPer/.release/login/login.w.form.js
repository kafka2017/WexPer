define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/button/toggle');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/input/password');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/bootstrap/inputGroup/inputGroup');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/EMPer/login'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cqymmiu';
	this._flag_='459fd1f5a3220543aacf4928bd2e2cfa';
	this._wCfg_={};
	this._appCfg_={};
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"enabled":{"define":"enabled","label":"是否启用","name":"enabled","relation":"enabled","type":"Boolean"},"ismanager":{"define":"ismanager","label":"后台权限","name":"ismanager","relation":"ismanager","type":"Boolean"},"isroot":{"define":"isroot","label":"root 权限","name":"isroot","relation":"isroot","type":"Boolean"},"opdesc":{"define":"opdesc","label":"显示用户名","name":"opdesc","relation":"opdesc","type":"String"},"opid":{"define":"opid","label":"OPID","name":"opid","relation":"opid","rules":{"integer":true},"type":"Long"},"opname":{"define":"opname","label":"用户名","name":"opname","relation":"opname","type":"String"},"oppasswd":{"define":"oppasswd","label":"密码","name":"oppasswd","relation":"oppasswd","type":"String"},"phone":{"define":"phone","label":"用户电话","name":"phone","relation":"phone","type":"String"}},"directDelete":false,"events":{},"idColumn":"opid","isMain":false,"limit":20,"xid":"userData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":false,"defCols":{"ccontactor":{"define":"ccontactor","label":"联系人","name":"ccontactor","relation":"ccontactor","type":"String"},"cphone":{"define":"cphone","label":"电话","name":"cphone","relation":"cphone","type":"String"},"engineno":{"define":"engineno","label":"发动机号","name":"engineno","relation":"engineno","type":"String"},"frameno":{"define":"frameno","label":"车架号","name":"frameno","relation":"frameno","type":"String"},"mac":{"define":"mac","label":"终端代码","name":"mac","relation":"mac","type":"String"},"psgid":{"define":"psgid","label":"上级公司代码","name":"psgid","relation":"psgid","rules":{"integer":true},"type":"Integer"},"sgdesc":{"define":"sgdesc","label":"公司名称","name":"sgdesc","relation":"sgdesc","type":"String"},"sgid":{"define":"sgid","label":"所属公司代码","name":"sgid","relation":"sgid","rules":{"integer":true},"type":"Integer"},"suid":{"define":"suid","label":"服务单元号","name":"suid","relation":"suid","rules":{"integer":true},"type":"Integer"},"vcolor":{"define":"vcolor","label":"车牌颜色","name":"vcolor","relation":"vcolor","type":"String"},"vname":{"define":"vname","label":"车牌号","name":"vname","relation":"vname","type":"String"}},"directDelete":false,"events":{},"idColumn":"suid","isMain":false,"limit":20,"xid":"carData"});
}}); 
return __result;});
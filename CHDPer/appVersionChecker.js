define(function(require){
	var $ = require('jquery');
	var versionInfo;
	var justep = require("$UI/system/lib/justep");
	var Browser = require('$UI/system/lib/base/browser');
	var MsgDialog = require("$UI/CHDPer/messageDialog/messageDialog");
	require("cordova!cordova-plugin-app-version");
	require("cordova!cordova-plugin-inappbrowser");
	var parentNode = $('body').find('.window').get(0);
	
	var VersionChecker = function(){
		this.env = "browser";
		if(Browser.isX5App){
			if(Browser.isAndroid){
				this.env = "androidApp";
			}
			if(Browser.isIOS){
				this.env = "iosApp";
			}
		}
		//this.env = "androidApp";
		
		this.versionMsg = new MsgDialog({
			parentNode:parentNode
		});
		var $domNode = this.versionMsg.$domNode;
		$domNode.find('.Yes').text('更新');
		$domNode.find('.No').text('忽略');
		this.versionMsg.on('onYes', function(event) {
			//下载
			this.download();
		}, this);
		this.versionMsg.on('onNo', function(event) {
			//忽略
			this.ignore();
		}, this);
		var self = this;
		
//		document.addEventListener("deviceready", function() {
//			setTimeout(function(){
//				self.check();
//			},1000);
//		});
	};
	
	VersionChecker.prototype.check = function(){
		var self = this;
		cordova.getAppVersion.getVersionNumber(function (currentVersion) {
			require(['./appVersion_in_server'],function(version_info){
				if(version_info){
					versionInfo = version_info;
					if(versionInfo[self.env] && currentVersion < versionInfo[self.env].version && window.localStorage &&
							localStorage.getItem('versionIgnore') !== versionInfo[self.env].version){
						self.versionMsg.show({
							type : "YesNoCancel",
							title : "版本更新",
							message : versionInfo[self.env].changeLog
						});
					}
				}
			},function(){
				console.log();
			});
		});
	};
	VersionChecker.prototype.checked= function(){
		var self = this;
		cordova.getAppVersion.getVersionNumber(function (currentVersion) {
			require(['./appVersion_in_server'],function(version_info){
				if(version_info){
					versionInfo = version_info;
					if(versionInfo[self.env] && currentVersion < versionInfo[self.env].version && window.localStorage &&
							localStorage.getItem('versionIgnore') !== versionInfo[self.env].version){
						self.versionMsg.show({
							type : "YesNoCancel",
							title : "版本更新",
							message : versionInfo[self.env].changeLog
						});
					}else{
						justep.Util.hint("当前版本已是最新版本", {type:"success"});
					}
				}
			},function(){
				justep.Util.hint("当前版本已是最新版本", {type:"info"});
			});
		});		
	};
	
	VersionChecker.prototype.download = function(){
		window.open(versionInfo[this.env].downloadUrl,'_system');
	};
	
	VersionChecker.prototype.ignore = function(){
		if(window.localStorage){
			localStorage.setItem('versionIgnore',versionInfo[this.env].version);
		}
	};
	
	return new VersionChecker();
});
define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	justep.Shell.setIsSinglePage(true);
	var ShellImpl = require("$UI/system/lib/portal/shellImpl");
	var CommonUtils = require("$UI/system/components/justep/common/utils");
	var Model = function(){
		this.callParent();
//		网页地址映射
		var shellImpl= new ShellImpl(this,{
			"contentsXid" : "pages",
			"pageMappings" : {
				"login":{url:require.toUrl("./login.w")},
				"first":{url:require.toUrl("./EMPer.w")}
			}			
		});
//		shellImpl.useDefaultExitHandler = false;
		
//		CommonUtils.attachDoubleClickExitApp(function(){
//			var isHomePage = shellImpl.pagesComp.contents[0].innerContainer.getInnerModel().comp('contents1').getActiveIndex() === 0 ;
//			if (shellImpl.pagesComp.getActiveIndex() === 0 && isHomePage) {
//				return true;
//			}
//			return false;			
//		});
	};
	Model.prototype.modelLoad = function(event){
//		justep.Shell.showPage("login");
	};
	return Model;
});
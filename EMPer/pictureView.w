<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:482px;left:680px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="picViewData" idColumn="vehicle_id" confirmRefresh="false"><column label="服务单元id" name="vehicle_id" type="String" xid="xid1"></column>
  <column label="图片ID" name="photo_ID" type="String" xid="xid2"></column>
  <column label="图片URL" name="photo_URL" type="String" xid="xid3"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="viewPanel"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="照片查看"
          class="x-titlebar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick='{"operation":"viewDataReceiver.windowCancel"}' xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">照片查看</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1" autoAppend="false">
   <div class="x-content-center x-pull-down container" xid="div1">
    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i1"></i>
    <span class="x-pull-down-label" xid="span1">下拉刷新...</span></div> 
   <div class="x-scroll-content" xid="div2" style="height:auto;width:auto;">
  
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list5" data="picViewData">
   <ul class="x-list-template" xid="listTemplateUl5">
    <li xid="li5" style="width:auto;height:auto;">
  <div xid="div4" style="height:auto;width:auto;"><img src="" alt="" xid="image1" style="height:114px;width:auto;" bind-attr-src=' val("photo_URL")' height="auto"></img></div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>
  </div> 
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="viewDataReceiver" onReceive="viewDataReceiverReceive" style="top:74px;left:21px;"></span></div>
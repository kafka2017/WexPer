<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:77px;left:-77px;height:auto;"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="mapPanel" style="z-index:1;">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="mapReplayBar">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-icon" label="button" xid="replayBackBtn" style="width:88px;" icon="icon-chevron-left" onClick="replayBackBtnClick">
   <i xid="i1" class="icon-chevron-left"></i>
   <span xid="span1"></span></a></div>
   <div class="x-titlebar-title" xid="title1"></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div><div class="x-panel-content" xid="mapArea" style="font-size:0">
    <iframe style="width:100%;height:100%;border:0;" src="mapReplay.html" xid="iframe1"></iframe>
    <div xid="callBackDiv" id="callBackDiv"></div></div> </div>
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="mapReplayReceiver" onReceive="mapReplayReceiverReceive"></span>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="unitpopOver" opacity="0.7" dismissible="false">
   <div class="x-popOver-overlay" xid="div25"></div>
   <div class="x-popOver-content" xid="div26" style="width:112px;height:97px;">
    <img src="$UI/EMPer/img/1405066128222.gif" alt="" xid="image16" style="height:97px;width:100%;" height="100%"></img></div> </div></div>
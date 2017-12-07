<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:60px;left:45px;height:auto;" onLoad="modelLoad"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="mapPanel" style="z-index:1;"> 
    <div class="x-panel-top" xid="mapTop"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="mapTitleBar">
   <div class="x-titlebar-left" xid="left2"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-icon" label="button" xid="backToMonitor" icon="icon-chevron-left" onClick="backToMonitorClick">
   <i xid="i2" class="icon-chevron-left"></i>
   <span xid="span2"></span></a></div>
   <div class="x-titlebar-title" xid="title2"></div>
   <div class="x-titlebar-right reverse" xid="right2"></div></div></div><div class="x-panel-content" xid="mapArea" style="font-size:0"> 
      <iframe style="width:100%;height:100%;border:0;" src="mapTrack.html"/> 
    <div xid="div1" id ="callBackTrack"></div></div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="mapDataReceiver" onReceive="mapDataReceiverReceive" style="top:67px;left:186px;"/> 
<div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="mapContainer"></div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="unitpopOver" opacity="0.7" dismissible="false">
   <div class="x-popOver-overlay" xid="div25"></div>
   <div class="x-popOver-content" xid="div26" style="width:112px;height:97px;">
    <img src="$UI/CHDPer/img/1405066128222.gif" alt="" xid="image16" style="height:97px;width:100%;" height="100%"></img></div> </div></div>

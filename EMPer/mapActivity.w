<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:60px;left:45px;height:auto;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="unitListData" idColumn="suid">
   <column label="" name="suid" type="String" xid="xid38"></column>
  <column label="" name="utc" type="String" xid="xid39"></column>
  <column name="lat" type="String" xid="xid11"></column>
  <column name="lon" type="String" xid="xid13"></column>
  <column name="alt" type="String" xid="xid40"></column>
  <column name="head" type="String" xid="xid41"></column>
  <column name="speed" type="String" xid="xid42"></column>
  <column name="distance" type="String" xid="xid43"></column>
  <column name="tflag" type="String" xid="xid44"></column>
  <column name="vflag" type="String" xid="xid45"></column>
  <column name="ost" type="String" xid="xid46"></column>
  <column name="ostdesc" type="String" xid="xid47"></column>
  <column name="vname" type="String" xid="xid48"></column>
  <column name="mac" type="String" xid="xid49"></column>
  <column name="sgdesc" type="String" xid="xid50"></column>
  <column name="sgcontactor" type="String" xid="xid51"></column>
  <column name="sgphone" type="String" xid="xid52"></column>
  <column name="outlinestatedesc" type="String" xid="xid53"></column>
  <column name="vid" type="String" xid="xid54"></column>
  <column name="cphone1" type="String" xid="xid55"></column>
  <column name="ostdesc1" type="String" xid="xid1"></column>
  <column name="headnum" type="String" xid="xid2"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="mapPanel" style="z-index:1;"> 
    <div class="x-panel-content" xid="mapArea" style="font-size:0"> 
      <iframe style="width:100%;height:100%;border:0;" src="map.html"/> 
    <div xid="callBackDiv" id="callBackDiv"></div></div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="mapDataReceiver" onReceive="mapDataReceiverReceive" style="top:56px;left:211px;"/> 
<div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="mapTrackContainer"></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="mapTrackDialog" src="$UI/EMPer/mapTrackActivity.w" routable="true" forceRefreshOnOpen="true"></span></div>

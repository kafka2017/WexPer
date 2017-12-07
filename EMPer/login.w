<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:103px;left:411px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="userData" idColumn="opid" confirmRefresh="true"><column label="OPID" name="opid" type="Long" xid="xid1"></column>
  <column label="用户名" name="opname" type="String" xid="xid2"></column>
  <column label="密码" name="oppasswd" type="String" xid="xid3"></column>
  <column label="是否启用" name="enabled" type="Boolean" xid="xid4"></column>
  <column label="显示用户名" name="opdesc" type="String" xid="xid5"></column>
  <column label="root 权限" name="isroot" type="Boolean" xid="xid6"></column>
  <column label="后台权限" name="ismanager" type="Boolean" xid="xid7"></column>
  <column label="用户电话" name="phone" type="String" xid="xid8"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="carData" idColumn="suid" confirmRefresh="false"><column label="服务单元号" name="suid" type="Integer" xid="xid9"></column>
  <column label="所属公司代码" name="sgid" type="Integer" xid="xid10"></column>
  <column label="上级公司代码" name="psgid" type="Integer" xid="xid11"></column>
  <column label="终端代码" name="mac" type="String" xid="xid12"></column>
  <column label="公司名称" name="sgdesc" type="String" xid="xid13"></column>
  <column label="电话" name="cphone" type="String" xid="xid14"></column>
  <column label="车牌颜色" name="vcolor" type="String" xid="xid15"></column>
  <column label="车牌号" name="vname" type="String" xid="xid16"></column>
  <column label="车架号" name="frameno" type="String" xid="xid17"></column>
  <column label="发动机号" name="engineno" type="String" xid="xid18"></column>
  <column label="联系人" name="ccontactor" type="String" xid="xid19"></column></div></div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="mainWindowDialog" src="$UI/EMPer/EMPer.w"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1" style="background-color:#F2F2F2;">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1"></div>
   <div class="x-titlebar-title" xid="title1"><span xid="span1" style="font-weight:normal;"><![CDATA[登录]]></span></div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1"><ul xid="ul2">
    <li class="list-group-item" xid="li1">
     
     
     <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup4">
   <span class="input-group-addon" xid="span4"><![CDATA[账号]]></span><input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="nameInput" placeHolder="请输入账号"></input></div></li> 
    <li class="list-group-item" xid="li1">
     
     
     <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup3">
   <span class="input-group-addon" xid="span5"><![CDATA[密码]]></span>
  <input component="$UI/system/components/justep/input/password" class="form-control" xid="passwordInput" placeHolder="请输入密码"></input></div></li> 
    </ul><div class="spacing list-group-item" xid="div1">
   <span component="$UI/system/components/justep/button/toggle" class="x-toggle x-toggle-xs pull-right" xid="toggle2" checked="false" value="true" checkedValue="false" uncheckedValue="true"></span>
   <span xid="span6"><![CDATA[单车登陆]]></span></div><div xid="div5" class="list-group-item">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="登录" xid="loginBtn" onClick="loginBtnClick">
    <i xid="i1"></i>
    <span xid="span2">登录</span></a> </div>
  <div xid="div6" class="list-group-item" align="center" style="height:56px;">
   </div>
  </div>
   <div class="x-panel-bottom" xid="bottom1" height="100"></div>
  </div>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="unitpopOver" opacity="0.7" dismissible="false">
   <div class="x-popOver-overlay" xid="div25"></div>
   <div class="x-popOver-content" xid="div26" style="width:112px;height:97px;">
    <img src="$UI/EMPer/img/1405066128222.gif" alt="" xid="image16" style="height:97px;width:100%;" height="100%"></img></div> </div>
  </div>
<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="width:150px;height:auto;top:226px;left:841px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="groupData" idColumn="fName" confirmRefresh="false" confirmDelete="false" limit="-1">
   <column label="公司名称" name="fName" type="String" xid="xid2"></column>
  <data xid="default1">[]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="unitData" idColumn="psgID" confirmRefresh="false">
   <column label="企业ID" name="psgID" type="Integer" xid="xid3"></column>
   <column label="服务单元ID" name="unitID" type="Integer" xid="xid4"></column>
   <column label="企业名称" name="psgName" type="String" xid="xid5"></column>
   <column label="车牌号" name="licenseNo" type="String" xid="xid6"></column>
   <column label="速度" name="speed" type="Float" xid="xid7"></column>
   <column label="温度" name="wendu" type="String" xid="xid8"></column>
   <column label="里程" name="mileAge" type="Float" xid="xid9"></column>
   <column label="位置" name="location" type="String" xid="xid10"></column>
   <column label="定位时间" name="LocatTime" type="String" xid="xid15"></column>
   <column label="油量" name="oilAmount" type="Float" xid="xid16"></column>
   <column label="状态" name="state" type="String" xid="xid17"></column>
   <column label="状态" name="status" type="String" xid="xid18"></column>
   <data xid="default2">[]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="mileAgeData" idColumn="vname" confirmRefresh="false">
   <column label="车牌号" name="vname" type="String" xid="xid14"></column>
  <column label="公里数" name="distance" type="Float" xid="xid19"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="alarmData" idColumn="vName">
   <column label="车牌号" name="vName" type="String" xid="xid12"></column>
  <column label="报警数" name="alarms" type="Integer" xid="xid20"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="unitDetailData" idColumn="vname" style="height:22px;" confirmRefresh="false"><column label="车牌号" name="vname" type="String" xid="xid25"></column>
  <column label="道路运输证" name="licenseno" type="String" xid="xid26"></column>
  <column label="发动机号" name="engineno" type="String" xid="xid27"></column>
  <column label="所属企业名称" name="sgname" type="String" xid="xid28"></column>
  <column label="VIN" name="frameno" type="String" xid="xid29"></column>
  <column label="标定吨/座" name="outlength" type="String" xid="xid30"></column>
  <column label="车辆型号" name="vcat" type="String" xid="xid31"></column>
  <column label="车牌颜色" name="vcolor" type="String" xid="xid32"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="unitListData" idColumn="suid" confirmRefresh="false" limit="-1"><column label="" name="suid" type="String" xid="xid38"></column>
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
  <data xid="default4">[]</data>
  <column name="position" type="String" xid="xid21"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="userData" idColumn="opid" confirmRefresh="false">
   <column label="OPID" name="opid" type="Long" xid="column1"></column>
   <column label="用户名" name="opname" type="String" xid="column2"></column>
   <column label="密码" name="oppasswd" type="String" xid="column3"></column>
   <column label="是否启用" name="enabled" type="Boolean" xid="column4"></column>
   <column label="显示用户名" name="opdesc" type="String" xid="column5"></column>
   <column label="root 权限" name="isroot" type="Boolean" xid="column6"></column>
   <column label="后台权限" name="ismanager" type="Boolean" xid="column7"></column>
   <column label="用户电话" name="phone" type="String" xid="column8"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="trackData" idColumn="suid" confirmRefresh="false">
   <column label="" name="suid" type="String" xid="column13"></column>
  <column label="" name="utc" type="String" xid="column15"></column>
  <column name="lat" type="String" xid="column27"></column>
  <column name="lon" type="String" xid="column17"></column>
  <column name="alt" type="String" xid="column10"></column>
  <column name="head" type="String" xid="column21"></column>
  <column name="speed" type="String" xid="column23"></column>
  <column name="distance" type="String" xid="column25"></column>
  <column name="tflag" type="String" xid="column28"></column>
  <column name="vflag" type="String" xid="column16"></column>
  <column name="ost" type="String" xid="column18"></column>
  <column name="ostdesc" type="String" xid="column19"></column>
  <column name="vname" type="String" xid="column20"></column>
  <column name="mac" type="String" xid="column14"></column>
  <column name="sgdesc" type="String" xid="column9"></column>
  <column name="sgcontactor" type="String" xid="column11"></column>
  <column name="sgphone" type="String" xid="column22"></column>
  <column name="outlinestatedesc" type="String" xid="column24"></column>
  <column name="vid" type="String" xid="column26"></column>
  <column name="cphone1" type="String" xid="column29"></column>
  <column name="ostdesc1" type="String" xid="column12"></column>
  <data xid="default5">[]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="replayData" confirmRefresh="false" idColumn="ALT"><column name="ALT" type="String" xid="xid33"></column>
  <column name="distance" type="String" xid="xid34"></column>
  <column name="ost" type="String" xid="xid35"></column>
  <column name="ostdesc" type="String" xid="xid36"></column>
  <column name="head" type="String" xid="xid37"></column>
  <column name="lat" type="String" xid="xid56"></column>
  <column name="lon" type="String" xid="xid57"></column>
  <column name="speed" type="String" xid="xid58"></column>
  <column name="tflag" type="String" xid="xid59"></column>
  <column name="vflag" type="String" xid="xid60"></column>
  <column name="utc" type="String" xid="xid61"></column>
  <column name="ostdesc1" type="String" xid="xid62"></column></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="carData" idColumn="suid" confirmRefresh="false">
   <column label="服务单元号" name="suid" type="Integer" xid="column38"></column>
  <column label="所属公司代码" name="sgid" type="Integer" xid="column39"></column>
  <column label="上级公司代码" name="psgid" type="Integer" xid="column40"></column>
  <column label="终端代码" name="mac" type="String" xid="column34"></column>
  <column label="公司名称" name="sgdesc" type="String" xid="column35"></column>
  <column label="电话" name="cphone" type="String" xid="column36"></column>
  <column label="车牌颜色" name="vcolor" type="String" xid="column37"></column>
  <column label="车牌号" name="vname" type="String" xid="column30"></column>
  <column label="车架号" name="frameno" type="String" xid="column31"></column>
  <column label="发动机号" name="engineno" type="String" xid="column32"></column>
  <column label="联系人" name="ccontactor" type="String" xid="column33"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1">
    <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1" wrap="false" swipe="false">
      
     <div class="x-contents-content" xid="monitorContent" onActive="monitorContentActive">
      
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2">
   
  <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="vnameTitleBar">
   <div class="x-titlebar-left" xid="left13"></div>
   <div xid="div2" style="height:100%;width:100%;display:none">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6" style="padding:0px 0px 0px 0px;margin:5px 0px 0px 5%;background-color:#FFFFFF;height:80%;width:100%;">
      <div xid="col30" style="width:15%;padding:0px 0px 0px 0px;" class="x-col x-col-10 x-col-center">
       
       <img src="$UI/EMPer/img/sele2.png" alt="" xid="image2" style="height:39px;width:auto;" class="pull-left center-block img-rounded" height="auto"></img></div> 
  <div class="x-col x-col-90 x-col-center" xid="col17"><input component="$UI/system/components/justep/input/input" class="form-control pull-right" xid="vnameInput" style="border-style:none none none none;" autoComplete="false" readonly="true"></input></div></div> 
  </div><div class="x-titlebar-title" xid="title13"></div>
   <div xid="div3" style="width:20%;" class="center-block">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" target="funcContent" icon="icon-android-keypad" style="width:100%;height:40px;font-size:x-large;">
   <i xid="i5" class="icon-android-keypad"></i>
   <span xid="span5"></span></a></div></div></div>
  <div class="x-panel-content" xid="content6">
   <div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="mapContainer"></div></div></div></div><div class="x-contents-content" xid="groupContent" onActive="groupContentActive">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
       <div class="x-panel-top" xid="top1">
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" title="企业分组">
   <div class="x-titlebar-left" xid="left7"></div>
   <div class="x-titlebar-title" xid="title7">企业分组</div>
   <div class="x-titlebar-right reverse" xid="right7"></div></div></div> 
       <div class="x-panel-content" xid="content2" style="bottom: 0px;" _xid="C743A8B95FC00001455D1600720C11FD">
        <div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="groupShow" data="groupData" disablePullToRefresh="false" disableInfiniteLoad="false" autoLoad="true">
   <ul class="x-list-template x-min-height list-group" xid="listTemplateUl6" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="li2" style="padding:0px 10px 0px 10px;" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li2" dir="ltr">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="groupRow" style="height:60px;" bind-click="groupRowClick">
      <div class="x-col x-col-fixed x-col-center" xid="col33" style="padding:0px 0px 0px 0px;">
       <img src="$UI/EMPer/img/ex_guanli_kehu.png" alt="" xid="image4" style="height:44px;width:100%;" height="100%"></img></div> 
      <div class="x-col x-col-80" xid="col34" style="padding:5px 5px 5px 5px;">
       <div component="$UI/system/components/justep/output/output" class="x-output center-block" xid="output1" style="height:35px;font-size:16px;width:auto;text-align:left;padding:8px 0px 0px 0px;color:#000000;" dataType="String" bind-ref='ref("fName")'></div></div> 
      <div class="x-col x-col-10" xid="col35">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="unitDetailBtn" style="width:100%;height:13%;" icon="dataControl dataControl-arrowrightl" target="UnitContent">
        <i xid="i9" class="dataControl dataControl-arrowrightl"></i>
        <span xid="span11"></span></a> </div> </div> </li></ul> </div></div> 
  </div> </div> 
     <div class="x-contents-content" xid="countContent">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel4">
       <div class="x-panel-top" xid="top3">
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar3" title="统计" style="font-size:x-large;">
         <div class="x-titlebar-left" xid="left1"></div>
         <div class="x-titlebar-title" xid="title1">统计</div>
         <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
       <div class="x-panel-content" xid="content3">
        <div xid="div13" style="height:100%;width:100%;">
         <div component="$UI/system/components/justep/row/row" class="x-row" xid="mileAgeCount" style="height:auto;" bind-click="mileAgeCountClick">
          <div class="x-col x-col-fixed x-col-center" xid="col44" style="height:100%;">
           <img src="$UI/EMPer/img/ex_tongji_licheng2.png" alt="" xid="image5" height="auto" style="width:auto;"></img></div> 
          <div class="x-col x-col-75" xid="col43" style="border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
           <label xid="label1" style="height:auto;width:auto;font-size:18px;line-height:40px;margin:0px 0px 0px 0px;font-weight:normal;color:#000000;">里程统计</label></div> 
          <div class="x-col x-col-10" xid="col42">
           <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button5" style="width:100%;height:13%;" icon="icon-chevron-right" target="mileAgeContent">
            <i xid="i10" class="dataControl dataControl-arrowrightl icon-chevron-right"></i>
            <span xid="span12"></span></a> </div> </div> 
         <div component="$UI/system/components/justep/row/row" class="x-row" xid="alarmCount" style="height:auto;" bind-click="alarmCountClick">
          <div class="x-col x-col-fixed x-col-center" xid="col47" style="height:100%;">
           <img src="$UI/EMPer/img/ex_tongji_baojing2.png" alt="" xid="image6" height="auto" style="width:auto;"></img></div> 
          <div class="x-col x-col-75" xid="col46" style="font-weight:bold;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
           <label xid="label2" style="height:auto;width:auto;font-size:18px;line-height:40px;margin:0px 0px 0px 0px;font-weight:normal;color:#000000;">报警统计</label></div> 
          <div class="x-col x-col-10" xid="col45">
           <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button6" style="width:100%;height:13%;" icon="dataControl dataControl-arrowrightl" target="alarmContent">
            <i xid="i11" class="dataControl dataControl-arrowrightl"></i>
            <span xid="span13"></span></a> </div> </div> </div> </div> </div> </div> 
     <div class="x-contents-content" xid="moreContent">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel5">
       <div class="x-panel-top" xid="top4">
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar4" title="更多" style="font-size:x-large;">
         <div class="x-titlebar-left" xid="left2"></div>
         <div class="x-titlebar-title" xid="title2">更多</div>
         <div class="x-titlebar-right reverse" xid="right2"></div></div> </div> 
       <div class="x-panel-content" xid="content4">
        <div xid="div14" style="height:100%;width:100%;">
         <div component="$UI/system/components/justep/row/row" class="x-row" xid="aboutInformation" style="height:auto;margin:0px 0px 0px 0px;padding:5px 5px 5px 5px;" bind-click="aboutInformationClick">
          <div class="x-col x-col-fixed x-col-center" xid="col53" style="height:100%;">
           <img src="$UI/EMPer/img/guanyu2.png" alt="" xid="image7" height="auto" style="width:auto;"></img></div> 
          <div class="x-col x-col-75" xid="col48" style="border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
           <label xid="label3" style="height:auto;width:auto;font-size:18px;line-height:40px;font-weight:normal;color:#000000;margin:0px 0px 0px 0px;">关于信息</label></div> 
          <div class="x-col x-col-10" xid="col49">
           <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button7" style="width:100%;height:13%;" icon="dataControl dataControl-arrowrightl" target="guanyuContent">
            <i xid="i13" class="dataControl dataControl-arrowrightl"></i>
            <span xid="span15"></span></a> </div> </div> 
         <div component="$UI/system/components/justep/row/row" class="x-row" xid="accInformation" style="height:auto;padding:0px 5px 5px 5px;" bind-click="accInformationClick">
          <div class="x-col x-col-fixed x-col-center" xid="col50" style="height:100%;">
           <img alt="" xid="image8" style="width:auto;" src="$UI/EMPer/img/ex_guanli_yonghu2.png"></img></div> 
          <div class="x-col x-col-75" xid="col51" style="border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
           <label xid="label4" style="height:auto;width:auto;font-size:18px;line-height:40px;font-weight:normal;color:#000000;margin:0px 0px 0px 0px;">帐号信息</label></div> 
          <div class="x-col x-col-10" xid="col52">
           <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button8" style="width:100%;height:13%;" icon="dataControl dataControl-arrowrightl" target="accContent">
            <i xid="i12" class="dataControl dataControl-arrowrightl"></i>
            <span xid="span14"></span></a> </div> </div> </div> </div> </div> </div> 
     <div class="x-contents-content" xid="UnitContent">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel6">
       <div class="x-panel-top" xid="top5">
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar5">
         <div class="x-titlebar-left" xid="left3"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" label="button" xid="button4" icon="icon-android-arrow-back" target="groupContent">
   <i xid="i6" class="icon-android-arrow-back"></i>
   <span xid="span6"></span></a></div>
         <div class="x-titlebar-title" xid="title3"></div>
         <div class="x-titlebar-right reverse" xid="right3"></div></div> </div> 
       <div class="x-panel-content" xid="content7" style="bottom: 0px;" _xid="C7429A580E500001576A1E217F904D30">
        
  <div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list1" data="unitListData" disablePullToRefresh="false" disableInfiniteLoad="false" autoLoad="true" style="height:auto;color:#000000;font-weight:normal;" filter=' $row.val("sgdesc") == $model.groupData.val("fName")'>
           <ul class="x-list-template x-min-height list-group" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
            <li xid="li1" style="height:auto;width:auto;margin:0px 0px 0px 0px;overflow:hidden;">
             <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1" style="width:auto;background-color:#6CB9CF;border-top-style:solid;border-top-width:1px;border-top-color:#FFFFFF;padding:5px 0px 5px 0px;overflow:hidden;height:50px;">
              <div class="x-col x-col-fixed" xid="col2" style="padding:0px 0px 0px 0px;margin-left:10px;height:35px;width:35px;margin-right:10px;line-height:35px;">
               <img src="$UI/EMPer/img/car2.png" alt="" xid="image1" style="width:51px;height:22px;"></img></div> 
              <div class="x-col" xid="col22" style="height:25px;width:25px;padding:0px 0px 0px 0px;margin-right:12px;margin-left:12px;">
               <div component="$UI/system/components/justep/output/output" class="x-output" xid="output11" bind-ref='ref("sgdesc")' style="width:auto;height:35px;color:#FFFFFF;font-size:16px;line-height:35px;"></div></div> </div> 
             <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2" style="background-color:#FFFFFF;padding:0px 0px 0px 0px;width:100%;height:35px;line-height:35px;">
              <div class="x-col x-col-fixed" xid="col4" style="height:25px;width:25px;padding:0px 0px 0px 0px;margin-right:12px;margin-left:12px;">
               <img alt="" xid="image9" style="width:20px;height:20px;padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;" bind-attr-src='$model.getunitHead( val("alt"),val("tflag"),val("outlinestatedesc"))'></img></div> 
              <div class="x-col x-col-fixed" xid="col5" style="height:auto;padding:0px 0px 0px 0px;text-align:left;width:70%;">
               <div component="$UI/system/components/justep/output/output" class="x-output" xid="output12" bind-ref='ref("vname")' style="color:#000000;font-size:14px;line-height:35px;"></div></div> </div> 
             <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3" style="background-color:#FFFFFF;padding:0px 0px 0px 0px;width:100%;height:30px;">
              <div class="x-col x-col-fixed" xid="col7" style="width:auto;height:auto;padding:0px 0px 0px 0px;">
               <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1" style="height:auto;width:auto;padding:0px 0px 0px 0px;">
                <label class="x-label" xid="label7" style="color:#000000;font-size:14px;line-height:30px;height:30px;text-align:center;padding-right:5px;padding-left:5px;width:75px;">定位时间:</label>
                <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" dataType="String" bind-ref='ref("utc")' style="color:#000000;font-size:14px;line-height:30px;height:30px;"></div></div> </div> </div> 
             <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4" style="background-color:#FFFFFF;width:100%;padding:0px 0px 0px 0px;height:30px;">
              <div class="x-col x-col-fixed" xid="col10" style="width:auto;height:auto;padding:0px 0px 0px 0px;">
               <label xid="label8" style="color:#000000;font-size:14px;font-weight:normal;margin:0px 0px 0px 0px;padding:0px 5px 0px 5px;line-height:30px;height:30px;text-align:left;width:auto;">状态:</label></div> 
              <div class="x-col x-col-fixed" xid="col11" style="width:auto;height:auto;padding:0px 0px 0px 0px;">
               <div component="$UI/system/components/justep/output/output" class="x-output center-block" xid="output4" style="width:auto;top:0px;color:#000000;font-size:14px;line-height:30px;height:30px;" bind-ref='ref("ostdesc")'></div></div> 
              <div class="x-col x-col-fixed" xid="col23" style="height:auto;width:auto;padding:0px 0px 0px 0px;"><div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" style="height:30px;width:auto;color:#000000;font-size:14px;line-height:30px;margin-left:15px;" bind-ref='ref("ostdesc1")'></div></div></div> 
             <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5" style="background-color:#FFFFFF;padding:0px 0px 0px 0px;width:100%;line-height:30px;height:30px;">
              <div class="x-col x-col-fixed" xid="col13" style="height:auto;padding:0px 10px 0px 0px;width:auto;">
               <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2" style="padding:0px 0px 0px 0px;">
                <label class="center-block x-label" xid="label9" style="font-size:14px;line-height:30px;padding:0px 5px 0px 5px;margin:0px 0px 0px 0px;height:30px;width:auto;">速度:</label>
                <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output6" dataType="Float" bind-ref='ref("speed")' style="height:auto;color:#000000;width:auto;"></div></div> </div> 
              <div class="x-col x-col-fixed" xid="col14" style="padding:0px 0px 0px 10px;line-height:30px;height:auto;width:auto;">
               <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3" style="width:auto;height:auto;padding:0px 0px 0px 0px;">
                <label class="x-label" xid="label10" style="height:30px;width:auto;line-height:30px;padding-right:5px;padding-left:5px;">温度:</label>
                <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output7" bind-ref='ref("wendu")' style="height:auto;color:#000000;width:auto;"></div></div> </div> 
              <div class="x-col x-col-fixed" xid="col15" style="padding:0px 5px 0px 10px;height:auto;line-height:30px;width:auto;">
               <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4" style="height:auto;width:auto;padding:0px 0px 0px 0px;">
                <label class="x-label" xid="label11" style="height:30px;width:auto;color:#000000;line-height:30px;padding-right:5px;padding-left:5px;">油量:</label>
                <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output8" bind-ref='ref("oilAmount")' style="height:auto;color:#000000;width:auto;"></div></div> </div> </div> 
             <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" style="background-color:#FFFFFF;width:100%;padding:0px 0px 0px 0px;height:30px;">
              <div class="x-col" xid="col16" style="padding:0px 0px 0px 0px;">
               <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6" style="padding:0px 0px 0px 0px;">
                <label class="x-label" xid="label13" style="height:30px;width:auto;color:#000000;padding:0px 5px 0px 5px;line-height:30px;">总里程:</label>
                <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output10" dataType="Float" bind-ref='ref("distance")' style="width:auto;height:30px;color:#000000;line-height:30px;"></div></div> </div> </div> 
             <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" style="background-color:#FFFFFF;width:100%;padding:0px 0px 0px 0px;overflow:hidden;">
              <div class="x-col" xid="col19" style="padding:0px 0px 0px 0px;">
               <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5" style="padding:0px 0px 0px 0px;">
                <label class="x-label" xid="label12" style="height:30px;width:auto;color:#000000;line-height:30px;font-size:14px;padding-right:5px;padding-left:5px;margin:0px 0px 0px 0px;">位置:</label>
                <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output9" bind-ref='ref("position")' style="color:#000000;line-height:30px;"></div></div> </div> </div> </li> </ul> </div></div> </div> </div> 
     <div class="x-contents-content" xid="mileAgeContent" onActive="mileAgeContentActive">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel7">
       <div class="x-panel-top" xid="top6">
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar7" title="里程统计" style="font-size:x-large;">
         <div class="x-titlebar-left" xid="left5"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left" label="               " xid="mileBackBtn" icon="icon-chevron-left" style="height:42px;width:154px;" onClick="mileBackBtnClick">
   <i xid="i24" class="icon-chevron-left"></i>
   <span xid="span27">               </span></a></div>
         <div class="x-titlebar-title" xid="title5">里程统计</div>
         <div class="x-titlebar-right reverse" xid="right5"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="carForMileBtn" icon="icon-navicon-round" style="height:44px;width:145px;" onClick="carForMileBtnClick" target="unitListContent">
   <i xid="i25" class="icon-navicon-round"></i>
   <span xid="span28"></span></a></div></div> </div> 
       <div class="x-panel-content" xid="content8" style="bottom: 0px; height: auto;" _xid="C7439D3DFF600001332DF9601B5035D0">
        <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel8">
         <div class="x-panel-top" xid="top7">
          <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup2">
           <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="一天" xid="oneDayBtn" onClick="oneDayBtnClick">
            <i xid="i15"></i>
            <span xid="span19">一天</span></a> 
           <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="ThreeDaysBtn" label="三 天" onClick="ThreeDaysBtnClick">
            <i xid="i16"></i>
            <span xid="span20">三 天</span></a> 
           <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="一周" xid="oneWeekBtn" onClick="oneWeekBtnClick">
            <i xid="i17"></i>
            <span xid="span21">一周</span></a> 
           <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="oneMonthBtn" label="一月" onClick="oneMonthBtnClick">
            <i xid="i18"></i>
            <span xid="span22">一月</span></a> </div> </div> 
         <div class="x-panel-content" xid="content9">
          <div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list5" style="height:auto;width:auto;margin:0px 0px 0px 0px;" data="mileAgeData" autoLoad="true" limit="-1" disablePullToRefresh="true">
            <ul class="x-list-template x-min-height list-group" xid="listTemplateUl5" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl5" style="margin:0px 0px 0px 0px;">
             <li xid="li5" style="height:auto;width:auto;padding:3px 15px 3px 15px;" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li5">
               <div xid="div19" style="height:auto;width:auto;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row15" style="width:auto;height:auto;">
               <div class="x-col" xid="col1" style="height:auto;width:auto;">
                <div component="$UI/system/components/justep/output/output" class="x-output center-block" xid="output22" bind-ref='ref("vname")' style="height:auto;width:auto;color:#000000;"></div></div> 
               <div class="x-col" xid="col3">
                <div component="$UI/system/components/justep/output/output" class="color:#000000;" xid="output23" bind-ref='ref("distance")'></div></div> </div></div></li> </ul> </div></div> </div> </div> </div> </div> 
     <div class="x-contents-content" xid="alarmContent" onActive="alarmContentActive">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel9">
       <div class="x-panel-top" xid="top9">
        <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar6" title="报警统计" style="font-size:x-large;">
         <div class="x-titlebar-left" xid="left4"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="alarmBackBtn" style="height:45px;width:68px;" icon="icon-chevron-left" onClick="alarmBackBtnClick">
   <i xid="i28" class="icon-chevron-left"></i>
   <span xid="span31"></span></a></div>
         <div class="x-titlebar-title" xid="title4">报警统计</div>
         <div class="x-titlebar-right reverse" xid="right4"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="carForAlarmBtn" style="width:81px;height:45px;" icon="icon-navicon-round" target="unitListContent" onClick="carForAlarmBtnClick">
   <i xid="i29" class="icon-navicon-round"></i>
   <span xid="span32"></span></a></div></div> </div> 
       <div class="x-panel-content" xid="content11" style="bottom: 0px; height: auto;" _xid="C7439D3DFF600001332DF9601B5035D0">
        <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel10">
         <div class="x-panel-top" xid="top8">
          <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup3">
           <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="一天" xid="alarmOneBtn" onClick="alarmOneBtnClick">
            <i xid="i14"></i>
            <span xid="span24">一天</span></a> 
           <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="alarmThreeBtn" label="三 天" onClick="alarmThreeBtnClick">
            <i xid="i20"></i>
            <span xid="span18">三 天</span></a> 
           <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="一周" xid="alarmWeekBtn" onClick="alarmWeekBtnClick">
            <i xid="i19"></i>
            <span xid="span17">一周</span></a> 
           <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="alarmMonthBtn" label="一月" onClick="alarmMonthBtnClick">
            <i xid="i21"></i>
            <span xid="span23">一月</span></a> </div> </div> 
         <div class="x-panel-content" xid="content10">
           <div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list3" style="height:auto;width:auto;margin:0px 0px 0px 0px;" data="alarmData" autoLoad="true" limit="-1" disablePullToRefresh="true" disableInfiniteLoad="false ">
   <ul class="x-list-template x-min-height list-group" xid="listTemplateUl3" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl5">
    <li xid="li3" style="height:auto;width:auto;padding:3px 15px 3px 15px;margin:0px 0px 0px 0px;border-bottom-style:solid;border-bottom-color:#EEEEEE;border-width:0px 0px 1px 0px;" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li5">
     <div xid="div4" style="height:auto;width:auto;">
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row16" style="width:auto;height:auto;">
       <div class="x-col" xid="col8" style="height:auto;width:auto;">
        <div component="$UI/system/components/justep/output/output" class="x-output center-block" xid="output25" bind-ref='ref("vName")' style="height:auto;width:auto;color:#000000;"></div></div> 
       <div class="x-col" xid="col6">
        <div component="$UI/system/components/justep/output/output" class="x-output" xid="output24" bind-ref='ref("alarms")' style="color:#000000;"></div></div> </div> </div> </li> </ul> </div></div> </div> </div> </div> </div> 
  <div class="x-contents-content" xid="guanyuContent"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel11">
   <div class="x-panel-top" xid="top10">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar14" title="关于信息">
     <div class="x-titlebar-left" xid="left11">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button26" icon="icon-chevron-left" style="padding:0px 12px 0px 12px;line-height:40px;font-size:x-large;" target="moreContent">
       <i xid="i52" class="icon-chevron-left"></i>
       <span xid="span56"></span></a> </div> 
     <div class="x-titlebar-title" xid="title11">关于信息</div>
     <div class="x-titlebar-right reverse" xid="right11"></div></div> </div> 
   <div class="x-panel-content" xid="content13">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row17">
     <div class="x-col x-col-20" xid="col9">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button43" style="width:100%;font-size:x-large;height:40px;padding:0px 0px 0px 0px;line-height:40px;" icon="icon-ios7-bookmarks">
       <i xid="i61" class="dataControl dataControl-arrowrightl icon-ios7-bookmarks"></i>
       <span xid="span65"></span></a> </div> 
     <div class="x-col" xid="col12" style="text-align:left;line-height:40px;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
      <label xid="label20" style="font-size:16px;text-align:left;font-weight:normal;margin:0px 0px 0px 0px;color:#000000;">操作说明</label></div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row18" bind-click="checkVersion">
     <div class="x-col x-col-20" xid="col18">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button41" style="width:100%;height:40px;font-size:x-large;padding:0px 0px 0px 0px;line-height:40px;" icon="icon-ios7-briefcase">
       <i xid="i59" class="dataControl dataControl-arrowrightl icon-ios7-briefcase"></i>
       <span xid="span63"></span></a> </div> 
     <div class="x-col" xid="col20" style="line-height:40px;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
      <label xid="label17" style="font-size:16px;text-align:left;font-weight:normal;margin:0px 0px 0px 0px;color:#000000;">检测版本</label></div> </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="weixinShare" bind-click="weixinShareClick">
     <div class="x-col x-col-20" xid="col24">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button42" style="width:100%;height:40px;font-size:x-large;padding:0px 0px 0px 0px;line-height:40px;" icon="icon-android-share">
       <i xid="i60" class="dataControl dataControl-arrowrightl icon-android-share"></i>
       <span xid="span64"></span></a> </div> 
     <div class="x-col" xid="col25" style="line-height:40px;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
      <label xid="label19" style="font-size:16px;text-align:left;font-weight:normal;margin:0px 0px 0px 0px;color:#000000;">我要分享</label></div> </div> </div> </div></div>
  <div class="x-contents-content" xid="accContent" onActive="accContentActive"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel12">
   <div class="x-panel-top" xid="top11"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar10" title="帐号信息">
   <div class="x-titlebar-left" xid="left9"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button10" icon="icon-chevron-left" target="moreContent">
   <i xid="i8" class="icon-chevron-left"></i>
   <span xid="span8"></span></a></div>
   <div class="x-titlebar-title" xid="title9">帐号信息</div>
   <div class="x-titlebar-right reverse" xid="right9"></div></div></div>
   <div class="x-panel-content" xid="content15"><div xid="accDIV" style="width:100%;height:100%;">
   <div xid="div11" style="width:100%;height:auto;">
    <img src="$UI/EMPer/img/user1.png" alt="" xid="image10" style="width:100%;height:auto;"></img></div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row20" style="height:auto;line-height:30px;margin-top:1px;padding:5px 5px 5px 20px;background-color:#FAFAFA;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
    <div class="x-col x-col-25" xid="col27" style="font-size:18px;height:30;padding:0px 0px 0px 0px;line-height:30px;text-align:right;">
     <label xid="label23" style="color:#000000;font-weight:normal;margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;height:30px;width:77px;font-size:16px;line-height:30px;">登陆账号:</label></div> 
    <div class="x-col x-col-75" xid="col29" style="height:30;padding:0px 0px 0px 0px;line-height:30px;text-align:center;">
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="opidOutput" bind-ref='$model.userData.ref("opid")' style="height:30px;line-height:30px;color:#000000;font-weight:normal;font-size:16px;width:275px;"></div></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row21" style="height:auto;line-height:30px;margin-top:1px;padding:5px 5px 5px 20px;background-color:#FAFAFA;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
    <div class="x-col x-col-25" xid="col37" style="height:30;padding:0px 0px 0px 0px;line-height:30px;text-align:right;">
     <label xid="label22" style="color:#000000;font-weight:normal;font-size:16px;line-height:30px;height:30px;width:77px;padding:0px 0px 0px 0px;margin:0px 0px 0px 0px;">车主姓名:</label></div> 
    <div class="x-col" xid="col38" style="height:30;padding:0px 0px 0px 0px;line-height:30px;text-align:center;">
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="owerOutput" bind-ref='$model.userData.ref("opname")' style="height:30px;line-height:30px;font-weight:normal;color:#000000;font-size:16px;width:277px;"></div></div> </div> 
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row22" style="height:47px;margin-top:30%;">
    <div class="x-col" xid="col40" style="text-align:center;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="退出" xid="exitAppBtn" style="height:100%;background-color:#FF2F17;width:100%;padding:4px 12px 4px 12px;" onClick="exitAppBtnClick">
      <i xid="i23"></i>
      <span xid="span26">退出</span></a> </div> 
    <div class="x-col" xid="col26" style="text-align:center;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="注销" xid="logOutBtn" style="height:100%;width:100%;padding:4px 12px 4px 12px;" onClick="logOutBtnClick">
      <i xid="i22"></i>
      <span xid="span25">注销</span></a> </div> </div> </div></div>
   </div></div>
  <div class="x-contents-content" xid="funcContent"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel13">
   <div class="x-panel-top" xid="top12"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar8" title="功能" style="font-size:large;">
   <div class="x-titlebar-left" xid="left6"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left btn-only-icon" label="button" xid="button2" style="width:156px;" icon="icon-android-arrow-back" target="monitorContent">
   <i xid="i26" class="icon-android-arrow-back"></i>
   <span xid="span29"></span></a></div>
   <div class="x-titlebar-title" xid="title6">功能</div>
   <div class="x-titlebar-right reverse" xid="right6"></div></div></div>
   <div class="x-panel-content" xid="content12"><div component="$UI/system/components/justep/row/row" class="x-row" xid="guijihuifangRow" style="height:auto;padding:0px 0px 0px 0px;" bind-click="guijihuifangRowClick">
   
   <div class="x-col" xid="col21" style="width:auto;height:auto;padding:5px 5px 5px 5px;color:#000000;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;"><img src="$UI/EMPer/img/ex_ico_guiji2.png" alt="" xid="image13" style="height:35px;width:35px;margin-right:5px;" height="38px"></img>
  <label xid="label14" style="font-size:18px;font-weight:normal;margin:0px 0px 0px 0px;line-height:40px;"><![CDATA[轨迹回放]]></label>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button34" icon="icon-chevron-right" style="line-height:40px;padding:0px 12px 0px 12px;" target="tackContent">
   <i xid="i46" class="icon-chevron-right"></i>
   <span xid="span51"></span></a></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="devicePicRow" style="height:auto;padding:0px 0px 0px 0px;" bind-click="devicePicRowClick">
   <div class="x-col" xid="col28" style="padding:5px 5px 5px 5px;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;"><img src="$UI/EMPer/img/ex_ico_mingling2.png" alt="" xid="image14" style="width:35px;height:35px;margin-right:5px;"></img>
  <label xid="label18" style="font-size:18px;font-weight:normal;margin:0px 0px 0px 0px;line-height:40px;color:#000000;"><![CDATA[设备图库]]></label>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button35" icon="icon-chevron-right" style="line-height:40px;padding:0px 12px 0px 12px;">
   <i xid="i47" class="icon-chevron-right"></i>
   <span xid="span52"></span></a></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="unitDetailRow" style="padding:0px 0px 0px 0px;" bind-click="unitDetailRowClick">
   <div class="x-col" xid="unitDetailCol" bind-click="unitDetailColClick" style="padding:5px 5px 5px 5px;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;"><img src="$UI/EMPer/img/ex_ico_tuku2.png" alt="" xid="image15" style="height:35px;width:35px;margin-right:5px;" height="38px"></img>
  <label xid="label21" style="font-size:18px;font-weight:normal;margin:0px 0px 0px 0px;line-height:40px;padding:0px 0px 0px 0px;color:#000000;"><![CDATA[车辆资料]]></label>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button36" icon="icon-chevron-right" style="line-height:40px;padding:0px 12px 0px 12px;">
   <i xid="i48" class="icon-chevron-right"></i>
   <span xid="span53"></span></a></div>
   </div></div>
   </div></div>
  <div class="x-contents-content" xid="tackContent" onActive="tackContentActive"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel14">
   <div class="x-panel-top" xid="top13">
  <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="replayTitleBar">
   <div class="x-titlebar-left" xid="left10"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="backToMainBtn" style="width:107px;height:45px;border-width:0px 0px 0px 0px;" icon="icon-chevron-left" target="funcContent">
   <i xid="i32" class="icon-chevron-left"></i>
   <span xid="span36"></span></a></div>
   <div class="x-titlebar-title" xid="title10"></div>
   <div class="x-titlebar-right reverse" xid="right10"></div></div></div>
   
   <div class="x-panel-content x-card" xid="content16">
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row28">
   <div class="x-col" xid="col58"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="点轨迹" xid="pointTracBtn" style="width:100%;" onClick="pointTracBtnClick">
   <i xid="i34"></i>
   <span xid="span38">点轨迹</span></a></div>
   <div class="x-col" xid="col59"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="线轨迹" xid="lineTrackBtn" style="height:100%;width:100%;" onClick="lineTrackBtnClick">
   <i xid="i41"></i>
   <span xid="span46">线轨迹</span></a>
  </div>
   <div class="x-col" xid="col60"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="全轨迹" xid="button30" style="height:100%;width:100%;">
   <i xid="i42"></i>
   <span xid="span47">全轨迹</span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row29">
   <div class="x-col" xid="col61"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="昨天" xid="todayBtn" style="height:100%;width:100%;" onClick="lastDayBtnClick">
   <i xid="i43"></i>
   <span xid="span48">昨天</span></a></div>
   <div class="x-col" xid="col63"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="前天" xid="beforLastDayBtn" style="height:100%;width:100%;" onClick="beforLastDayBtnClick">
   <i xid="i44"></i>
   <span xid="span49">前天</span></a></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row30">
   <div class="x-col" xid="col64"><input component="$UI/system/components/justep/input/input" class="form-control" xid="startInput" dataType="DateTime" format="yyyy-MM-dd hh:mm:ss"></input></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row31">
   <div class="x-col" xid="col67"><input component="$UI/system/components/justep/input/input" class="form-control" xid="endInput" dataType="DateTime" format="yyyy-MM-dd hh:mm:ss"></input></div>
   </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row32">
   <div class="x-col" xid="col70"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="回放" xid="trackBackBtn" style="height:100%;width:100%;" onClick="trackBackBtnClick">
   <i xid="i45"></i>
   <span xid="span50">回放</span></a></div>
   </div></div></div>
  <div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="mapReplayContainer" onReceive="mapReplayContainerReceive"></div></div>
  <div class="x-contents-content" xid="UnitDetailContent"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel15">
   <div class="x-panel-top" xid="top14"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar12">
   <div class="x-titlebar-left" xid="left8"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button3" style="width:170px;" icon="icon-android-arrow-back" target="funcContent">
   <i xid="i27" class="icon-android-arrow-back"></i>
   <span xid="span30"></span></a></div>
   <div class="x-titlebar-title" xid="title8"></div>
   <div class="x-titlebar-right reverse" xid="right8"></div></div></div>
   <div class="x-panel-content" xid="content19" style="color:#000000;"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row34" style="border-color:#EEEEEE;border-width:1px;">
   <div class="x-col" xid="col74" style="padding:0px 0px 0px 0px;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
     <label class="x-label" xid="label25" bind-text='$model.unitDetailData.label("sgname")' style="font-size:16px;"></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output14" bind-ref='$model.unitDetailData.ref("sgname")' style="color:#000000;font-size:16px;"></div></div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row35">
   <div class="x-col" xid="col77" style="padding:0px 0px 0px 0px;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
     <label class="x-label" xid="label26" bind-text='$model.unitDetailData.label("vname")' style="font-size:16px;"></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output15" bind-ref='$model.unitDetailData.ref("vname")' style="color:#000000;font-size:16px;"></div></div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row36">
   <div class="x-col" xid="col80" style="padding:0px 0px 0px 0px;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
     <label class="x-label" xid="label27" bind-text='$model.unitDetailData.label("licenseno")' style="font-size:16px;"></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output16" bind-ref='$model.unitDetailData.ref("licenseno")' style="color:#000000;font-size:16px;"></div></div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row37">
   <div class="x-col" xid="col83" style="padding:0px 0px 0px 0px;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10">
     <label class="x-label" xid="label28" bind-text='$model.unitDetailData.label("vcolor")' style="font-size:16px;"></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output17" bind-ref='$model.unitDetailData.ref("vcolor")' style="color:#000000;font-size:16px;"></div></div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row38">
   <div class="x-col" xid="col86" style="padding:0px 0px 0px 0px;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit11">
     <label class="x-label" xid="label29" bind-text='$model.unitDetailData.label("vcat")' style="font-size:16px;"></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output18" bind-ref='$model.unitDetailData.ref("vcat")' style="color:#000000;font-size:16px;"></div></div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row39">
   <div class="x-col" xid="col89" style="padding:0px 0px 0px 0px;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit12">
     <label class="x-label" xid="label30" bind-text='$model.unitDetailData.label("outlength")' style="font-size:16px;"></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output19" bind-ref='$model.unitDetailData.ref("outlength")' style="color:#000000;font-size:16px;"></div></div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row40">
   <div class="x-col" xid="col92" style="padding:0px 0px 0px 0px;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit13">
     <label class="x-label" xid="label31" bind-text='$model.unitDetailData.label("engineno")' style="font-size:16px;"></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output20" bind-ref='$model.unitDetailData.ref("engineno")' style="color:#000000;font-size:16px;"></div></div> </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row41">
   <div class="x-col" xid="col39" style="padding:0px 0px 0px 0px;border-bottom-style:solid;border-bottom-width:1px;border-bottom-color:#EEEEEE;">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit14">
     <label class="x-label" xid="label24" bind-text='$model.unitDetailData.label("frameno")' style="font-size:16px;"></label>
     <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output21" bind-ref='$model.unitDetailData.ref("frameno")' style="color:#000000;font-size:16px;"></div></div> </div> </div></div>
   </div></div>
  <div class="x-contents-content" xid="unitListContent"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel16" style="height:100%;">
   <div class="x-panel-top" xid="top15">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar9" style="width: 100%; height: 100%;">
   <div xid="div7" style="width:20%;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button9" icon="icon-chevron-left" style="width:100%;height:40px;font-size:x-large;" onClick="backPreBtnClick">
     <i xid="i7" class="icon-chevron-left"></i>
     <span xid="span7"></span></a> </div><div xid="div8" style="height:100%;width:75%;">
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8" style="padding:0px 0px 0px 0px;margin:5px 0px 0px 0px;background-color:#FFFFFF;height:80%;width:100%;">
     
     <div class="x-col x-col-center" xid="col36">
      <input component="$UI/system/components/justep/input/input" class="form-control" xid="unitListInput" style="border-style:none none none none;" dataType="String"></input></div> </div> </div> 
    </div></div> 
   <div class="x-panel-content" xid="content5" _xid="C748DA54800000019BF119B01A90172D" style="bottom: 0px;">
     
  <div xid="div1"><div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="unitLists" data="unitListData" filter=' $model.getunitListInput( $row.val("vname"))'>
     <ul class="x-list-template x-min-height list-group" xid="listTemplateUl4" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl4">
      <li xid="li4" style="height:auto;" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li4" bind-click="unitDetailDIVClick">
       <div  xid="unitDetailDIV" style="width:100%;height:29px;">
        
  <div component="$UI/system/components/justep/output/output" class="x-output" xid="unitList" bind-ref='ref("vname")'></div></div> 
  </li> </ul> </div></div></div> </div></div>
  </div> 
  </div> 
   <div class="x-panel-bottom" xid="bottom1">
    <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-lg btn-group-justified" tabbed="true" xid="buttonGroup1" style="height:52px;" selected="monitorBtn">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="监控" xid="monitorBtn" target="monitorContent" icon="icon-android-location">
      <i xid="i1" class="icon-android-location"></i>
      <span xid="span1">监控</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top" label="分组" xid="groupBtn" icon="icon-person-stalker" target="groupContent">
   <i xid="i2" class="icon-person-stalker"></i>
   <span xid="span2">分组</span></a><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="统计" xid="countBtn" target="countContent" icon="dataControl dataControl-report">
      <i xid="i3" class="dataControl dataControl-report"></i>
      <span xid="span3">统计</span></a> 
     <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-icon-top" label="更多" xid="moreBtn" target="moreContent" icon="icon-android-contacts">
      <i xid="i4" class="icon-android-contacts"></i>
      <span xid="span4">更多</span></a> 
  </div> </div> </div>
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="userDataReceiver" onReceive="userDataReceiverReceive" style="top:66px;left:113px;"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="mapReplayDialog" src="$UI/EMPer/mapReplayActivity.w" routable="true" style="top:61px;left:82px;" forceRefreshOnOpen="true"></span>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="picViewDialog" src="$UI/EMPer/pictureView.w" style="top:70px;left:47px;" routable="true" forceRefreshOnOpen="true"></span>
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver" direction="auto" xid="unitpopOver" opacity="0.7" dismissible="false">
   <div class="x-popOver-overlay" xid="div25"></div>
   <div class="x-popOver-content" xid="div26" style="width:112px;height:97px;"><img src="$UI/EMPer/img/1405066128222.gif" alt="" xid="image16" style="height:97px;width:100%;" height="100%"></img></div></div></div>

//import LatLon from './latlon-spherical.js';

var g_all_store_info = [];
var g_message_store = [];
var newGps = [];
var i = 0;//計算次數用
var j,c = 0;
var k = 0;
var alld = 0;//總距離
var time_text,h,m,s ="";//HTML碼表時間;
var timetemp=0;
var distancetemp=0;
let runscore,gpslog;
var time_start=false;

function toRadians(num) {
	return num * Math.PI / 180; 
};

function calcTheDistance(lati1, long1,joschLat,joschLon) {

    if ((lati1 == joschLat) && (long1 == joschLon)) {
        return 0;
    }else{
        var EARTH_RADIUS = 6378137.0; 
        // var r = 6371000; //metres
        //// var joschLat = 50.1109221;
        //// var joschLon = 8.6821267;
        // var la1 = lati1;
        // var la2 = joschLat;
        // var lat1 = toRadians(lati1);
        // var lat2 = toRadians(joschLat);
        // var lo1 = long1;
        // var lo2 = joschLon;
        // var la2minla1 = toRadians(la2-la1);
        // var lo2minlo1 = toRadians(lo2-lo1);
    
        // var cal = Math.sin(la2minla1 / 2) * Math.sin(la2minla1 / 2) +
        //         Math.cos(lat1) * Math.cos(lat2) *
        //         Math.sin(lo2minlo1/2) * Math.sin(lo2minlo1/2);
        // var c = 2* Math.atan2(Math.sqrt(cal), Math.sqrt(1-cal));   
        // var d = r * c;
        // return Math.round(d * 1000)/10000;
        //function getFlatternDistance(lat1,lng1,lat2,lng2){
        var f = toRadians((lati1 + joschLat)/2);
        var g = toRadians((lati1 - joschLat)/2);
        var l = toRadians((long1 - joschLon)/2);
        
        var sg = Math.sin(g);
        var sl = Math.sin(l);
        var sf = Math.sin(f);
        
        var s,c,w,r,d,h1,h2;
        var a = EARTH_RADIUS;
        var fl = 1/298.257;
        
        sg = sg*sg;
        sl = sl*sl;
        sf = sf*sf;
        
        s = sg*(1-sl) + (1-sf)*sl;
        c = (1-sg)*(1-sl) + sf*sl;
        if (c == 0) {
            return NaN; // 如果 c 为 0，则返回 NaN
        }
        w = Math.atan(Math.sqrt(s/c));
        r = Math.sqrt(s*c)/w;
        d = 2*w*a;
        h1 = (3*r -1)/2/c;
        h2 = (3*r +1)/2/s;
        
        return d*(1 + fl*(h1*sf*(1-sg) - h2*(1-sf)*sg));
    }
};

function printCurStatus(show_status){
    $('#cur-status').html(show_status);
}

function printLocInfoOnIndexScreen(show_info){
    //這會顯示時間與經緯度到首頁的中間地區
     console.log(show_info);
     //alert(show_info);
     var currentdate = new Date();
     var sTime = ""
                 + currentdate.getDate() + "/"
                 + currentdate.getHours() + ":"
                 + currentdate.getMinutes() + ":"
                 + currentdate.getSeconds() + " "
                 + currentdate.getMilliseconds();
     //$('#cur-loction').html(sTime + '<br/>' + show_info);    // for-debug
    var sHTML = $('#cur-loction').html() + show_info;
     $('#cur-loction').html(show_info);

}

function showLocationInfo(location,from_source){
    var show_info = '';
    if (time_start==false){
            onStartTime();
            time_start=true;
        }
    //抓HTML碼表
    time_text=document.getElementById("Check_i").innerText;
    hs = time_text.indexOf(":",0);
    h=time_text.substring(0,hs);
    //alert('時:'+h);
    ms = time_text.indexOf(":",1);
    m=time_text.substring(hs+1,ms);
    //alert('分:'+m);
    ss = time_text.indexOf(":",-1);
    s=time_text.substring(ms+1,ss);
    //alert('秒:'+s);
    s= parseInt(s) + parseInt(m) * 60 +parseInt(h)*3600;
    //alert('總秒:'+s);
    var timeInMS = Date.now();
    
     //newGps.push('location:'+location.latitude+'&longitude:'+location.longitude);
     newGps.push({'latitude':location.latitude,'longitude' : location.longitude,'from_source': from_source, 'distance' : 0.0,'done' : false,'TimeMS': timeInMS});
    // confirm(JSON.stringify(location))
    var debug_ifno = '';
    if(newGps.length>1){
         for(var i=0;i<newGps.length;i++){
            
             var distance = 0;

             if (i == 0){
                   continue;
             }

              var first_infoGPS = newGps[i];
              var second_infoGPS = newGps[i-1];

              if (first_infoGPS.done == true){
                 continue;
              }
            // alert("first: "+first_infoGPS.latitude+" "+first_infoGPS.longitude+"\n second: "+second_infoGPS.latitude+" "+second_infoGPS.longitude);
               //計算兩點距離
               var eval_distance = calcTheDistance(parseFloat(first_infoGPS.latitude),parseFloat(first_infoGPS.longitude),parseFloat(second_infoGPS.latitude),parseFloat(second_infoGPS.longitude));

               //抓出上一個時間
               var second_TimeMS = second_infoGPS.TimeMS;
               var first_timeMS = first_infoGPS.TimeMS;
               var D_timeMS = (first_timeMS-second_TimeMS)/1000;//毫秒轉秒
              //first_infoGPS.distance = calcTheDistance(parseFloat(first_infoGPS.latitude),parseFloat(first_infoGPS.longitude),parseFloat(second_infoGPS.latitude),parseFloat(second_infoGPS.longitude));
              //first_infoGPS.done = true;

               var s_distance_sec = eval_distance/D_timeMS ; //每秒距離

               //console.log('----->D_timeMS=' + D_timeMS + ', s_distance_sec=' + s_distance_sec + ' ,eval_distance=' + eval_distance);
            //   confirm("s_distance_sec:"+s_distance_sec+"eval_distance: "+eval_distance+"D_timeMS:"+D_timeMS);
               if(s_distance_sec >= 0.43 && s_distance_sec <= 9.0){
                   first_infoGPS.done = true;
                   first_infoGPS.distance = eval_distance;
               }else{
                   first_infoGPS.done = true;
                   first_infoGPS.distance = 0;
                   k=k+1;
               }


               if(k>500){
                   k=0;
                   alert("速率異常，請勿使用其它工具跑步（已經超出1~7公尺範圍）");
                   c=c+1;
                   if(c>=2){
                       c=0;
                      ForceStopRun();
                   }
               }
        }

     }

     alld = 0;
         debug_ifno = '';
         var b_find_sat = false;
         for(var i=0;i<newGps.length;i++){
            var cur_infoGPS = newGps[i];
             alld += cur_infoGPS.distance;

            //debug_ifno += ' (' + i + ':' + cur_infoGPS.latitude + ',' + cur_infoGPS.longitude +','+ cur_infoGPS.distance +')<br>';
            debug_ifno += '(' + i + ':' + cur_infoGPS.latitude + ',' + cur_infoGPS.longitude +','+ cur_infoGPS.distance +')';
         }

        var currentdate = new Date();
        var datetime = "Last Sync: " + currentdate.getDate() + "/"
                        + (currentdate.getMonth()+1)  + "/"
                        + currentdate.getFullYear() + " @ "
                        + currentdate.getHours() + ":"
                        + currentdate.getMinutes() + ":"
                        + currentdate.getSeconds();
        //debug_ifno += ' (' +  alld + ':' + from_source + ':' + currentdate.getSeconds() + '.' + currentdate.getMilliseconds() + ':' + cur_infoGPS.latitude + ',' + cur_infoGPS.longitude +','+ cur_infoGPS.distance +')';

        localStorage["alld"]=alld;
        localStorage["gpslog"]=debug_ifno;

        //show_info = 'L=' + cur_distance_L + ',' + debug_ifno;
        show_info = ' 總距離:' + Number(alld.toFixed(1))  + '公尺';


        printLocInfoOnIndexScreen(show_info);
}


function showLocationInfo_V2(location,from_source){
    var show_info = '';

    //抓HTML碼表
    time_text=document.getElementById("Check_i").innerText;
    hs = time_text.indexOf(":",0);
    h=time_text.substring(0,hs);
    //alert('時:'+h);
    ms = time_text.indexOf(":",1);
    m=time_text.substring(hs+1,ms);
    //alert('分:'+m);
    ss = time_text.indexOf(":",-1);
    s=time_text.substring(ms+1,ss);
    //alert('秒:'+s);
    s= parseInt(s) + parseInt(m) * 60 +parseInt(h)*3600;
    //alert('總秒:'+s);

    if (from_source=='Loc'){
        //newGps.push('location:'+location.latitude+'&longitude:'+location.longitude);
        newGps.push({'latitude':location.latitude,'longitude' : location.longitude,'distance' : 0.0,'done' : false});
    }

    var debug_ifno = '';
    if(newGps.length>1){
         for(var i=0;i<newGps.length;i++){
             var distance = 0;

             if (i == 0)
                continue;

             var first_infoGPS = newGps[i];
             var second_infoGPS = newGps[i-1];

             if (first_infoGPS.done == true)
                continue;

                    first_infoGPS.distance = calcTheDistance(parseFloat(first_infoGPS.latitude),parseFloat(first_infoGPS.longitude),parseFloat(second_infoGPS.latitude),parseFloat(second_infoGPS.longitude));
                    first_infoGPS.done = true;

        }

     }

     alld = 0;
     debug_ifno = '';
     for(var i=0;i<newGps.length;i++){
        var cur_infoGPS = newGps[i];
        if(cur_infoGPS.distance<5){
            alld += cur_infoGPS.distance;
        }else{
            alld += cur_infoGPS.distance/2.2;
            k=k+1;
        }
        //debug_ifno += ' (' + i + ':' + cur_infoGPS.latitude + ',' + cur_infoGPS.longitude +','+ cur_infoGPS.distance +')<br>';
        //debug_ifno += '(' + i + ':' + cur_infoGPS.latitude + ',' + cur_infoGPS.longitude +','+ cur_infoGPS.distance +')';
     }
     if(k>3){
         alert("請勿使用其它工具跑步");
         c=c+1;
         if(c>2){
            ForceStopRun();
         }
     }

    localStorage["alld"]=alld;
    localStorage["gpslog"]=debug_ifno;

     //show_info = ' 總距離:' + alld + '<br>' + debug_ifno;
     show_info = ' 總距離:' + Number(alld.toFixed(1))  + '公尺';
     //debug_ifno += ' (' + i + ':,d:' + alld.toFixed(1) + ',' + cur_infoGPS.latitude + ',' + cur_infoGPS.longitude +','+ cur_infoGPS.distance +')<br>';
     debug_ifno += ' (' + i + ':,d:' + alld.toFixed(1)+')<br>';
    printLocInfoOnIndexScreen(debug_ifno);
}


//DeviceReady 之後 + 取得 DeviceID 或是已經存在 DeviceID 之後啟動
function initLBS(){
	BackgroundGeolocation.configure({
        locationProvider: BackgroundGeolocation.ACTIVITY_PROVIDER, //.RAW_PROVIDER,
        desiredAccuracy: BackgroundGeolocation.HIGH_ACCURACY,
        stationaryRadius: 2,//10
        distanceFilter: 2,
        notificationsEnabled: false,
        notificationTitle: '偵測您的位置',
        notificationText: '東海自我學習圈數',
        debug: false,
        notificationsEnabled: false,
        interval: 500,
        fastestInterval: 1000,
        activitiesInterval: 500
    });
    BackgroundGeolocation.on('location', function(location) {
        printCurStatus("");
        showLocationInfo(location,'Loc');
    });
    
    BackgroundGeolocation.on('stationary', function(stationaryLocation) {
        printCurStatus("靜止中");
        // handle stationary locations here
        console.log('[INFO] stationary,stationaryLocation=' + JSON.stringify(stationaryLocation) );
        //$('#cur-loction').html('stationaryLocation, latitude=' + stationaryLocation.latitude + ' ,longitude=' + stationaryLocation.longitude);
        //showLocationInfo(stationaryLocation,'Sat');

        BackgroundGeolocation.getCurrentLocation(
            function (locations) {
              //callUpdateCurrentPosition({ deviceId: deviceId, latitude: Number(Math.round(locations.latitude + 'e4') + 'e-4'), longitude: Number(Math.round(locations.longitude + 'e4') + 'e-4') });
              console.log('getCurrentLocation(stationary), latitude=' + Number(Math.round(locations.latitude + 'e4') + 'e-4') + ' , longitude=' + Number(Math.round(locations.longitude + 'e4') + 'e-4') );
        });

    });
    
    BackgroundGeolocation.on('error', function(error) {
        console.log('[ERROR] BackgroundGeolocation error:', error.code, error.message);
    });
    
    BackgroundGeolocation.on('start', function() {
        printCurStatus("啟動服務");
        console.log('[INFO] BackgroundGeolocation service has been started');
        BackgroundGeolocation.getCurrentLocation(
            function (locations) {
                printCurStatus("嘗試取得位置");
              //callUpdateCurrentPosition({ deviceId: deviceId, latitude: Number(Math.round(locations.latitude + 'e4') + 'e-4'), longitude: Number(Math.round(locations.longitude + 'e4') + 'e-4') });
              console.log('getCurrentLocation, latitude=' + Number(Math.round(locations.latitude + 'e4') + 'e-4') + ' , longitude=' + Number(Math.round(locations.longitude + 'e4') + 'e-4') );
        });        
      
    });
    
    BackgroundGeolocation.on('stop', function() {
        printCurStatus("服務停止");
        console.log('[INFO] BackgroundGeolocation service has been stopped');
    });
    
    BackgroundGeolocation.on('authorization', function(status) {
        console.log('[INFO] BackgroundGeolocation authorization status: ' + status);
        if (status !== BackgroundGeolocation.AUTHORIZED) {
            // we need to set delay or otherwise alert may not be shown
            setTimeout(function() {
                var showSettings = confirm('需要您設定位置權限，您要前往設定嗎?');
                if (showSetting) {
                    return BackgroundGeolocation.showAppSettings();
                }
            }, 1000);
        }
    });
    
    BackgroundGeolocation.on('background', function() {
        printCurStatus("服務在背景執行中");
        console.log('[INFO] App is in background');
        // you can also reconfigure service (changes will be applied immediately)
        BackgroundGeolocation.configure({ debug: false });
    });
    
    BackgroundGeolocation.on('foreground', function() {
        console.log('[INFO] App is in foreground');
        BackgroundGeolocation.configure({ debug: false });
    });
    
    BackgroundGeolocation.on('abort_requested', function() {
        console.log('[INFO] Server responded with 285 Updates Not Required');
    });
    
    BackgroundGeolocation.on('http_authorization', () => {
        console.log('[INFO] App needs to authorize the http requests');
    });
    
    BackgroundGeolocation.checkStatus(function(status) {
        console.log('[INFO] BackgroundGeolocation service is running', status.isRunning);
        console.log('[INFO] BackgroundGeolocation services enabled', status.locationServicesEnabled);
        console.log('[INFO] BackgroundGeolocation auth status: ' + status.authorization);
    
        // you don't need to check status before start (this is just the example)
        if (!status.isRunning) {
            BackgroundGeolocation.start(); //triggers start on start event
        }
    });
    
    // you can also just start without checking for status
    // BackgroundGeolocation.start();

    // Don't forget to remove listeners at some point!
    // BackgroundGeolocation.removeAllListeners();

}

var mm;
var SetMinute = 0;
function onStartTime(){
     mm = window.setInterval("Check_Time()", 1000); 
}
function Check_Time() {
    SetMinute += 1;
    var Check_i = document.getElementById("Check_i");

    var Cal_Hour = Math.floor(SetMinute / 3600);
    var Cal_Minute = Math.floor((SetMinute % 3600) / 60);
    var Cal_Second = SetMinute % 60;

    Check_i.innerHTML = Cal_Hour + ":" + Cal_Minute + ":" + Cal_Second;
}
// 全局变量
let lastLocation = null;
const minSpeed = 1.0; // 最小速度（米/秒）
const maxSpeed = 1.5; // 最大速度（米/秒）
const timeInterval = 1; // 时间间隔（秒）

function generateFakeGPSData(lat, lon, speed, timeInterval) {
    // 根据当前坐标和速度生成新的坐标
    // speed: 移动速度（米/秒）
    // timeInterval: 时间间隔（秒）
    const distance = speed * timeInterval; // 每次移动的距离
    const angle = Math.random() * 2 * Math.PI; // 随机方向
    const earthRadius = 6378137.0; // 地球半径（米）

    const dLat = distance * Math.cos(angle) / earthRadius;
    const dLon = distance * Math.sin(angle) / (earthRadius * Math.cos(lat * Math.PI / 180));

    const newLat = lat + dLat * 180 / Math.PI;
    const newLon = lon + dLon * 180 / Math.PI;
    // confirm("current data:"+lat+" "+lon+"speed: "+speed+"new data: "+newLat+" "+ newLon);
    return { latitude: newLat, longitude: newLon };
}

function simulateLocationUpdate() {
    const currentTime = Date.now();
    const speed = Math.random() * (maxSpeed - minSpeed) + minSpeed; // 随机速度

    if (lastLocation) {
        const newLocation = generateFakeGPSData(lastLocation.latitude, lastLocation.longitude, speed, timeInterval);
        newLocation.time = currentTime;
        // alert(newLocation);
        showLocationInfo({
            latitude: newLocation.latitude,
            longitude: newLocation.longitude
        }, 'Loc');
        
        lastLocation = newLocation; // 更新为新的位置
    } else {
        console.error("Last location is not set.");
    }
}

function onDeviceReadyOfLBS() {
    isParse(false);
    // document.getElementById('START').disabled=false;
    // $('#START').prop('disabled', true);
    $("#START").attr("disabled", true);
    $("#START").attr("class", "BTNdisable");
    $("#STOP").attr("disabled", false);
    $("#STOP").attr("class", "Button");
    // 配置BackgroundGeolocation
    BackgroundGeolocation.configure({
        locationProvider: BackgroundGeolocation.ACTIVITY_PROVIDER,
        desiredAccuracy: BackgroundGeolocation.HIGH_ACCURACY,
        stationaryRadius: 2,
        distanceFilter: 2,
        notificationsEnabled: false,
        interval: 500,
        fastestInterval: 1000,
        activitiesInterval: 500
    });

    // 获取当前GPS位置并设置初始位置
    BackgroundGeolocation.getCurrentLocation(function (location) {
        lastLocation = { latitude: location.latitude, longitude: location.longitude, time: Date.now() };
        // confirm(JSON.stringify(lastLocation));
        // 模拟GPS数据定期更新
        setInterval(simulateLocationUpdate, 1000); // 每秒更新一次
        // setInterval(confirm("觸發"), 10000);
    }, function (error) {
        console.error("Error getting current location: ", error);
    });
    //沒有這行不會觸發GPS
    BackgroundGeolocation.start();
}

function StopRun() {
    var Blan = (navigator.language || navigator.browserLanguage).toLowerCase();//語系
    //取出此次總距離
    var alld = Number(localStorage.getItem("alld")).toFixed(1);
    if(alld<800){
        if (Blan=='zh-tw'||Blan=='zh-cn'){
            if (confirm("自我學習圈數單次小於800公尺，將不予以計分，確定退出?")) {  
                window.location.href = "index.html";
                return;
            }
        }else{
            if (confirm("Running distance less than 800 meters will not  be given any scores.  Join the test or not?")) {  
                window.location.href = "index.html";
                return;
            }
        }
    }else if (alld > 2000){
        if (confirm("自我學習圈數單次大於2公里，將以2公里計分")) {  
            StopRunCalculate();
        }
        else{
            if (confirm("Running distance more than 2 kilometers will be scored as 2 km does.")) {  
                StopRunCalculate();
            }
        }
    }else{
        StopRunCalculate();
    }
}

function StopRunCalculate(){
    var Blan = (navigator.language || navigator.browserLanguage).toLowerCase();//語系
    //取出此次總距離
    var alld = Number(localStorage.getItem("alld")).toFixed(1);
        isParse(true);//是否為暫停
        $("#START").attr("disabled", false);
        $("#START").attr("class", "Button");
        $("#STOP").attr("disabled", true);
        $("#STOP").attr("class", "BTNdisable");
        time_text=document.getElementById("Check_i").innerText;
        var parseTime;//暫停時間點
        hs = time_text.indexOf(":",0);
        h=time_text.substring(0,hs);
        ms = time_text.indexOf(":",hs+1);
        m=time_text.substring(hs+1,ms);
        s=time_text.substring(ms+1,time_text.length);
        s= parseInt(s) + parseInt(m) * 60 +parseInt(h)*3600;

        parseTime = s;
        
        document.getElementById("Check_i").innerText="0:0:0";
        //alert('總距離')
        clearInterval(mm);
        BackgroundGeolocation.stop();
        //localStorage
        var Today = new Date();
        var sdate = Today.getFullYear()+ "/" + (Today.getMonth()+1) + "/" + Today.getDate();
        

        if (Blan=='zh-tw'||Blan=='zh-cn'){
            alert('結束總時間:'+parseTime+'-秒,總距離:'+alld+'-公尺');
        }else{
            alert('Time:'+parseTime+'-s','Distance:'+alld+'-m');
        }

        if(alld >= 799 && alld < 1200){
            alld = 800;
        }else if (alld >= 1200 && alld < 1600){
            alld = 1200;
        }else if (alld >= 1600 && alld < 2000){
            alld = 1600;
        }else if(alld>2000){//超過2KM以2KM計算
            alld = 2000;
        }
        //GPS資料
        var gpslog=localStorage.getItem('gpslog');

        //將資料放進Json和LocalStorage
        var log =localStorage.getItem('runlog');
        if(log!=null){
            runscore = JSON.parse(localStorage.getItem('runlog'));    
            var add = {alltime: parseTime, distance:alld, sTime: sdate,gpslog: gpslog}//總共跑多久,總距離,鑑測時間
            runscore.push(add);
        }else{
            runscore = [{alltime: parseTime, distance:alld, sTime: sdate,gpslog: gpslog}];
        }
        //alert('runscore:'+runscore);
        localStorage.setItem('runlog',JSON.stringify(runscore));
        
        //刪除此筆總距離
        localStorage.removeItem("alld");
        localStorage.removeItem("gpslog");
        //alert('runlog:'+localStorage.getItem('runlog'));//查看runlog
        //回首頁
        window.location.href = "index.html";
}

function ForceStopRun() {//強制停止
    isParse(true);//是否為暫停
    $("#START").attr("disabled", false);
    $("#START").attr("class", "Button");
    $("#STOP").attr("disabled", true);
    $("#STOP").attr("class", "BTNdisable");
    time_text=document.getElementById("Check_i").innerText;
    var parseTime;//暫停時間點
    parseTime = time_text;
    document.getElementById("Check_i").innerText="0:0:0";
    clearInterval(mm);
    BackgroundGeolocation.stop();

    alert('跑步/快走速率異常強制停止');
    
    //刪除此筆總距離
    localStorage.removeItem("alld");
    //alert('runlog:'+localStorage.getItem('runlog'));//查看runlog
    //回首頁
    window.location.href = "index.html";
}


function isParse(a){
    if(a==true){
        return true;
    }
    else{
        return false;
    }
}


//上傳資料
function scoreUpdate() {
    //選取的radio
    var Blan = (navigator.language || navigator.browserLanguage).toLowerCase();//語系
    var a = $('input[name=CK_Score]:checked').val();
    //抓localStorage資料
    runscore = JSON.parse(localStorage.getItem('runlog'));
    var SDate = runscore[a].sTime;
    var distance = runscore[a].distance;
    var alltime = runscore[a].alltime;
    var gpslog = runscore[a].gpslog;
    var sID = localStorage.getItem('id');
    var Today = new Date();
    var toDate = Today.getFullYear()+ "/" + (Today.getMonth()+1) + "/" + Today.getDate();

    //先判斷有沒有上傳過
    $.ajax({
        type: 'POST',
        url: window.localStorage.getItem('TH_SERVER_URL') + "/UpdateCheck2",//22.02.21改成同一天可以多筆最多2公里
        contentType: 'application/x-www-form-urlencoded',
        dataType: 'text',
        data: {
            id:sID,
            rundate:SDate
        },
        success: function (data) {
            //alert('success:'+data);
            myApp.hideProcessing();
            var xmlDoc = $.parseXML(data);
            var result = $(xmlDoc).text();

            if (result == "Y"){
                if (Blan=='zh-tw'||Blan=='zh-cn'){
                    //alert("只能上傳一筆同一天資料。");
                    alert("同一天資料，最多只能上傳2公里");
                }else{
                    alert("Only be uploaded at most 2KM on the same day");
                }
                return;
            }else{//執行insert
                    var resultR = 2000-parseInt(result);//當日最大距離2000-今日已上傳資料轉數字=要上傳的距離;
                     //alert('resultR:'+resultR);
                    var distanceT = parseInt(result)+ parseInt(distance);
                        //alert('distanceT:'+distanceT);
                        //alert('distanceT > 2000': distanceT > 2000);
                    if(distanceT > 2000){
                    //alert('>2000');
                        var distanceU = resultR;
                    }else{
                    var distanceU = distance;
                    }

                $.ajax({
                    type: 'POST',
                    url: window.localStorage.getItem('TH_SERVER_URL') + "/Update",
                    contentType: 'application/x-www-form-urlencoded',
                    dataType: 'text',
                    data: {
                        id:sID,
                        rundate:SDate,
                        runlog:gpslog,
                        udate:toDate,
                        runmileage:distanceU,
                        runtime:alltime
                    },
                    success: function (data) {
                        //alert('success:'+data);
                        myApp.hideProcessing();
                        var xmlDoc = $.parseXML(data);
                        var result = $(xmlDoc).text();
                        if(result=="0"){
                            alert('上傳成功');

                            //Delete localStroage
                            var list = JSON.parse(localStorage.getItem('runlog'));
                            list.splice(a, 1);
                            localStorage.setItem('runlog', JSON.stringify(list));
                            window.location.reload();
                        }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        myApp.hideProcessing();
                        
                        if (navigator.notification)
                            navigator.notification.alert('Error to get data,' + textStatus + ': ' + errorThrown, null, 'error');
                        else
                            alert('Error to get data,' + textStatus + ': ' + errorThrown);
                    }
                });	
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            myApp.hideProcessing();
            
            if (navigator.notification)
                navigator.notification.alert('Error to get data,' + textStatus + ': ' + errorThrown, null, 'error');
            else
                alert('Error to get data,' + textStatus + ': ' + errorThrown);
        }
    });

    //window.location.reload();
}


//上傳資料
function TotalScore() {
    //選取的radio
    var Blan = (navigator.language || navigator.browserLanguage).toLowerCase();//語系

    
}
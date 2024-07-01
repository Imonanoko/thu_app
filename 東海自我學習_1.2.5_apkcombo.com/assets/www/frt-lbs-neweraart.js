
//import LatLon from './latlon-spherical.js';

var g_all_store_info = [];
var g_all_gpspoint = [];
var g_message_store = [];

function toRadians(num) {
	return num * Math.PI / 180; 
};

function calcTheDistance(lati1, long1,joschLat,joschLon) {
    var r = 6371000; //metres
    // var joschLat = 50.1109221;
    // var joschLon = 8.6821267;
    var la1 = lati1;
    var la2 = joschLat;
    var lat1 = toRadians(lati1);
    var lat2 = toRadians(joschLat);
    var lo1 = long1;
    var lo2 = joschLon;
    var la2minla1 = toRadians(la2-la1);
    var lo2minlo1 = toRadians(lo2-lo1);

    var cal = Math.sin(la2minla1 / 2) * Math.sin(la2minla1 / 2) +
            Math.cos(lat1) * Math.cos(lat2) *
            Math.sin(lo2minlo1/2) * Math.sin(lo2minlo1/2);
    var c = 2* Math.atan2(Math.sqrt(cal), Math.sqrt(1-cal));

    var d = r * c;
    return Math.round(d);
};

function printLocInfoOnIndexScreen(show_info){
    //這會顯示時間與經緯度到首頁的中間地區
    // console.log(show_info);
    // var currentdate = new Date(); 
    // var sTime = ""
    //             + currentdate.getHours() + ":"  
    //             + currentdate.getMinutes() + ":" 
    //             + currentdate.getSeconds() + " "
    //             + currentdate.getMilliseconds();
    // $('#cur-loction').html(sTime + '<br/>' + show_info);    // for-debug

}

function showLocationInfo(location,from_source){
    var show_info = '';
    console.log('----------------HERE--------------------');
    var newGps = g_all_store_info.push('location:'+location.latitude+'&longitude:'+location.longitude);
    show_info = ' (' + from_source + ':' + location.latitude + ',' + location.longitude + ')';
    // if (from_source == "Loc"){
    //     //移動中的位置, 可能有誤差, 所以不計算
    //     printLocInfoOnIndexScreen(show_info);
    //     return;
    // }


    // //鞋技中心 : 24.1711003,120.604398
    // var distance1 = calcTheDistance(location.latitude,location.longitude,24.1711003,120.604398);
    // //法布甜台中創始店 : 24.1601258,120.6528701
    // var distance2 = calcTheDistance(location.latitude,location.longitude,24.1601258,120.6528701);
    // //法布甜台中高鐵店 : 24.1108392,120.6135554
    // var distance3 = calcTheDistance(location.latitude,location.longitude,24.1108392,120.6135554);

    var distance = 0;
    for (var index in g_all_store_info) {
        distance = calcTheDistance(location.latitude,location.longitude,parseFloat(g_all_store_info[index].Latitude),parseFloat(g_all_store_info[index].Longitude) );
        
        //因為太多地方，字串太多，所以不顯示
        //show_info += g_all_store_info[index].PosName + ":" + distance + "m" + ", "
        //console.log(g_all_store_info[index].PosName + ":" + distance + "m");

        //if (distance <= parseInt(g_all_store_info[index].LBSDistance)){

            // if (ifLastPushTimeisOver(g_all_store_info[index].StoreID) == false){
            //     console.log('----> NOT over time,ignore push message');
            //     continue;
            // }

            //var sPageName = g_all_store_info[index].PageName;
            //var sPageParameter = g_all_store_info[index].PageParameter;

            //var pos_near_desc = '接近[' + g_all_store_info[index].PosName + ']:' + distance + 'm, 頁面:' +  sPageName + ',參數:' + sPageParameter;
            //console.log(pos_near_desc);
            //show_info += "," + pos_near_desc + ", ";

            //判斷是否要前往該頁面
            //var sLBSActionList = sessionStorage["LBS_ACTION_LIST"];
            //if (typeof sLBSActionList === 'undefined' || sLBSActionList === null || sLBSActionList == '')
            //    sLBSActionList = ',';

            //var sCheckString = ',' + sPageName + ':' + sPageParameter + ',';
            //if (sLBSActionList.indexOf(sCheckString) == -1){
                //沒找到 , 所以可以跳到該頁
            //    sLBSActionList += sPageName + ':' + sPageParameter + ",";
                //console.log('sLBSActionList=' + sLBSActionList);
            //    sessionStorage["LBS_ACTION_LIST"] = sLBSActionList;
            //    localStorage["PageName"] = sPageName;
            //    localStorage["PageParameter"] = sPageParameter;
                //window.location.href = sPageName;
                //需要使用這種方式，否則 Android back 鍵 呼叫 navigator.app.backHistory 會無效
            //    window.open(sPageName, '_self');
            //}else{
            //    console.log('opened the same page, ignore action!');
            //    break;
            //}

            // if (window.location.href == sPageName){
            //     console.log('opened the same page, ignore action!');
            //     break;
            // }else{
            //     localStorage["PageName"] = sPageName;
            //     localStorage["PageParameter"] = sPageParameter;
            //     window.location.href = sPageName;
            // }
        //}
    }

    printLocInfoOnIndexScreen(show_info);
}

function pushMessageItem(store_id, cur_date_time) {
    this.StoreID = store_id;
    this.PushTime = cur_date_time;
}

function ifLastPushTimeisOver(store_id){
    var today = new Date();
    var date = today.getFullYear() + '-' + (today.getMonth()+1) + '-' + today.getDate();
    var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();

    var curDateTime = new Date(date +' ' + time);

    //find 相同的 store_id
    var bFind = false;
    for (var index in g_message_store) {
        if (g_message_store[index].StoreID == store_id){
            bFind = true;
            var last_push_time = new Date(g_message_store[index].PushTime);
            var diff = curDateTime.getTime() - last_push_time.getTime();
            var days = Math.floor(diff / (1000 * 60 * 60 * 24));
            console.log('days=' + days);
            if (days >= 1)
                return true; //超過時間
            else
                return false;
            
            break;
        }
    }

    return true; //沒有找到, 一律視為超過時間

}


function saveMessageTime(store_id){
    var today = new Date();
    var date = today.getFullYear() + '-' + (today.getMonth()+1) + '-' + today.getDate();
    var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
    var curDateTime = date +' ' + time;

    //find 相同的 store_id
    var bFind = false;
    for (var index in g_message_store) {
        if (g_message_store[index].StoreID == store_id){
            bFind = true;
            g_message_store[index].PushTime = curDateTime;
            break;
        }
    }

    if (bFind == false)
        g_message_store.push(new pushMessageItem(store_id,curDateTime));
    console.log('g_message_store=' + JSON.stringify(g_message_store));
    window.localStorage.setItem('PUSH_MESSAGE_STORE',JSON.stringify(g_message_store));
}


//DeviceReady 之後 + 取得 DeviceID 或是已經存在 DeviceID 之後啟動
function initLBS(){
	BackgroundGeolocation.configure({
        locationProvider: BackgroundGeolocation.ACTIVITY_PROVIDER, //.RAW_PROVIDER,
        desiredAccuracy: BackgroundGeolocation.HIGH_ACCURACY,
        stationaryRadius: 10,
        distanceFilter: 2,
        notificationsEnabled: false,
        notificationTitle: '偵測您的位置',
        //10.07註解notificationText: '自動顯示園區大冒險與林淵作品',
        debug: false,
        notificationsEnabled: false,
        interval: 500,
        fastestInterval: 1000,
        activitiesInterval: 500
        // ,
        // url: window.localStorage.getItem('APP_SERVICE_URL') + '/location',
        // httpHeaders: {
        //     'X-FOO': 'bar'
        // },
        // postTemplate: {
        //     lat: '@latitude',
        //     lon: '@longitude',
        //     foo: 'bar' // you can also add your own properties
        // }
    });
    
    BackgroundGeolocation.on('location', function(location) {
        // handle your locations here
        // to perform long running operation on iOS
        // you need to create background task
        showLocationInfo(location,'Loc');
        // console.log('[INFO] list location' + location);
        // BackgroundGeolocation.startTask(function(taskKey) {
        //     console.log('[INFO] location, location=' + JSON.stringify(location));
        //     console.log('[INFO] location,taskKey=' + taskKey);

        //     showLocationInfo(location,'Loc');
        //     // execute long running task
        //     // eg. ajax post location
        //     // IMPORTANT: task has to be ended by endTask
        //     BackgroundGeolocation.endTask(taskKey);
        // });
    });
    
    BackgroundGeolocation.on('stationary', function(stationaryLocation) {
        // handle stationary locations here
        console.log('[INFO] stationary,stationaryLocation=' + JSON.stringify(stationaryLocation) );
        //$('#cur-loction').html('stationaryLocation, latitude=' + stationaryLocation.latitude + ' ,longitude=' + stationaryLocation.longitude);
        showLocationInfo(stationaryLocation,'Sat');
    });
    
    BackgroundGeolocation.on('error', function(error) {
        console.log('[ERROR] BackgroundGeolocation error:', error.code, error.message);
    });
    
    BackgroundGeolocation.on('start', function() {
        console.log('[INFO] BackgroundGeolocation service has been started');
        // BackgroundGeolocation.getCurrentLocation(lastLocation => {
        //     let region = this.state.region;
        //     const latitudeDelta = 0.01;
        //     const longitudeDelta = 0.01;
        //     region = Object.assign({}, lastLocation, {
        //         latitudeDelta,
        //         longitudeDelta
        //     });
        //     this.setState({ locations: [lastLocation], region });
        //   }, (error) => {
        //     setTimeout(() => {
        //         Alert.alert('Error obtaining current location', JSON.stringify(error));
        //     }, 100);
        // });

        BackgroundGeolocation.getCurrentLocation(
            function (locations) {
              //callUpdateCurrentPosition({ deviceId: deviceId, latitude: Number(Math.round(locations.latitude + 'e4') + 'e-4'), longitude: Number(Math.round(locations.longitude + 'e4') + 'e-4') });
              console.log('getCurrentLocation, latitude=' + Number(Math.round(locations.latitude + 'e4') + 'e-4') + ' , longitude=' + Number(Math.round(locations.longitude + 'e4') + 'e-4') );
              //$('#cur-loction').html('getCurrentLocation, latitude=' + locations.latitude + ' ,longitude=' + locations.longitude);
              showLocationInfo(locations,'Cur');
        });        
      
    });
    
    BackgroundGeolocation.on('stop', function() {
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
    
        // Here we can decide whether we want stop the updates or not.
        // If you've configured the server to return 285, then it means the server does not require further update.
        // So the normal thing to do here would be to `BackgroundGeolocation.stop()`.
        // But you might be counting on it to receive location updates in the UI, so you could just reconfigure and set `url` to null.
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


function onDeviceReadyOfLBS() {
    //initLBS(); //改為取得位置資訊後再呼叫
    
    var sJsonLBSTriggerPos = sessionStorage["JSON_LBSTriggerPos"];
    if (typeof sJsonLBSTriggerPos === 'undefined' || sJsonLBSTriggerPos === null || sJsonLBSTriggerPos == '') {
        //nothing
        console.log('-->will get pos data');
    }else{
        //已經存在，代表進入 App 已經讀取成功過，所以直接使用暫存的資料，不需要再次呼叫 getLBSTriggerPos
        console.log('-->use temp pos');
        console.log('sJsonLBSTriggerPos=' + sJsonLBSTriggerPos)
        var temp_LBSPos = JSON.parse(sJsonLBSTriggerPos);
        g_all_store_info = temp_LBSPos.LBSPosList;
        initLBS(); //取得位置資訊後再呼叫
        return;
    }

    myApp.showProcessing();
    $.ajax({
        type: 'POST',
        url: window.localStorage.getItem('NEWERA_SERVICE_URL') + "/getLBSTriggerPos",
        contentType: 'application/x-www-form-urlencoded',
        dataType: 'text',
        data: {
        },
        success: function (data) {
            myApp.hideProcessing();
            var xmlDoc = $.parseXML(data);
            var result = $(xmlDoc).text();
            console.log('getLBSTriggerPos:' + result);
            var json_data = JSON.parse(result);
            if (json_data.status != 0){
                console.log('error to call getLBSTriggerPos');
                return;
            }
            
            g_all_store_info = json_data.LBSPosList;
            localStorage["LBSTriggerPos"] = JSON.stringify(g_all_store_info);
            sessionStorage["JSON_LBSTriggerPos"] = result;

            initLBS(); //取得位置資訊後再呼叫

        },
        error: function (jqXHR, textStatus, errorThrown) {
            myApp.hideProcessing();
            
            // if (navigator.notification)
            //     navigator.notification.alert('Error to get data,' + textStatus + ': ' + errorThrown, null, 'error');
            // else
                alert('取得資料發生錯誤,' + textStatus + ': ' + errorThrown);
        }
    });

}

$(document).ready(function () {
    document.addEventListener("deviceready", onDeviceReadyOfLBS, false);

    var push_message_store = window.localStorage.getItem('PUSH_MESSAGE_STORE');
    if (push_message_store != null && push_message_store != ''){
        g_message_store = JSON.parse(push_message_store);
    }

    // //測試接收 push message,否則收到之後要再等 1 天允許接收
    // //var g_message_store = []; 

    // var host = window.localStorage.getItem('NEWERA_SERVICE_URL');
    // var url = host + "broadcastLBS.php";
    // //[{"StoreID":"1","0":"1","StoreName":"台中創始店","1":"台中創始店","Latitude":"24.160008","2":"24.160008","Longitude":"120.6501663","3":"120.6501663","LBSDistance":"500","4":"500"},{"StoreID":"2","0":"2","StoreName":"台中高鐵店","1":"台中高鐵店","Latitude":"24.1117411","2":"24.1117411","Longitude":"120.6157315","3":"120.6157315","LBSDistance":"500","4":"500"},{"StoreID":"3","0":"3","StoreName":"台北旗艦店","1":"台北旗艦店","Latitude":"25.0462805","2":"25.0462805","Longitude":"121.5366621","3":"121.5366621","LBSDistance":"500","4":"500"},{"StoreID":"4","0":"4","StoreName":"北車微風店","1":"北車微風店","Latitude":"25.047702","2":"25.047702","Longitude":"121.5151848","3":"121.5151848","LBSDistance":"500","4":"500"}]
    // $.post(
    //     url,
    //     {
    //         mode: "getStoreList"
    //     },
    //     function (listJson) {
    //         console.log('listJson of frt-lbs=' + listJson);
    //         g_all_store_info = JSON.parse(listJson);
    //     }
    // ).fail(function() {
    //     return;
    // });

});

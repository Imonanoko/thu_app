
//控制等待中的圓圈的 method
var myApp;
myApp = myApp || (function () {

    return {
        showProcessing: function () {
            document.getElementById("loader").style.display = "block";
        },
        hideProcessing: function () {
            document.getElementById("loader").style.display = "none";
        },

    };
})();

function ReportToServerSuccessHandler(msg, status){ 
}

function ReportToServerErrorHandler(xhr, status, error){ 
}

function ReportToServerCompleteHandler(xmlHttpRequest, status){ 
}	

function savePushRegIDToServer(registration_id){
    localStorage.setItem('PHONE_ID', registration_id);
    var sOSType = "";
    if (device.platform == 'android' || device.platform == 'Android' || device.platform == "amazon-fireos") {
        sOSType = "Android";
    } else {
        sOSType = device.platform;
    }

    $.ajax({
        url: localStorage["NEWERA_SERVICE_URL"] + "/regPushPhoneId",
        type: "POST",
        data: {
            'PhoneId': registration_id,
            'OSType': sOSType
        },
        success: ReportToServerSuccessHandler,
        error: ReportToServerErrorHandler,
        complete: ReportToServerCompleteHandler
    });
}

var urlGo = "http://www.neweraart.com.tw/";
function onNotificationConfirm(button) {
    //alert('You selected button ' + button);
    if (button == 2)
        window.open(urlGo, '_system');//window.location.href = urlGo;
}

function showPushMessage(message) {
    var iPos = message.indexOf("@");
    var iPos2 = -1;
    if (iPos > 0) {
        iPos2 = message.indexOf("@",iPos+1);
    }
    var sLink = "";
    var sLinkName = "";
    var sURL = "";
    if (iPos2 > iPos)
        sLink = message.substring(iPos + 1, iPos2);
    if (sLink.length > 0) {
        var iPos3 = sLink.indexOf("$");
        if (iPos3 > 0) {
            sLinkName = sLink.substring(iPos3+1, sLink.length);
            sURL = sLink.substring(0, iPos3);
        }

        message = message.replace("@" + sLink + "@", sLinkName);
    }

    var buttonlist = "確定";
    if (sLinkName.length > 0 && sURL.length > 0) {
        buttonlist = buttonlist + ",前往 " + sLinkName;
        urlGo = sURL;
    }

    navigator.notification.confirm(
        message,  // message
        onNotificationConfirm,              // callback to invoke with index of button pressed
        '推播訊息',            // title
        buttonlist//'Exit,GoURL'          // buttonLabels
    );
}


function initFCMPushMessage() {

//    var push = PushNotification.init({
//        android: {
//            senderID: '252663010712'
//        },
//        ios: {
//            alert: "true",
//            badge: "true",
//            sound: "true"
//        },
//        windows: {}
//    });

//    push.on('registration', function (data) {
//        console.log("push message reg id:" + data.registrationId);
//        savePushRegIDToServer(data.registrationId);
//    });

//    push.on('notification', function (data) {
//        //alert("Title:" + data.title + " Message:" + data.message);

//        //showPushMessage("歡迎來@http://www.neweraart.com.tw/$牛耳藝術渡假村@逛逛...");
//        showPushMessage(data.message);
//        push.finish(function() {
//            console.log('finish notification');
//        });
//    });

//    push.on('error', function (e) {
//        console.log(e.message)
//    });

}

//Handle back buttons decently for Android and Windows Phone 8 ...
function onDeviceReady() {

    //window.alert = navigator.notification.alert; //這個也可以，但我希望 Title 顯示 '資訊'，所以用底下的寫法
    window.alert = function (message) {
        navigator.notification.alert(
            message,    // message
            null,       // callback
            '資訊', // title
            '確認'        // buttonName
        );
    };    

    //註冊 FCM
    //initFCMPushMessage();

    //偵測 Back 鍵
    document.addEventListener("backbutton", function (e) {
        console.log('backbutton of frt-jason');

        var body_id = $('body').attr('id');

        console.log('body_id=' + body_id);

        //alert('body_id=' + body_id);

        if (body_id == null || body_id == 'undefined') {
            if (navigator){
                console.log('-->navigator.app.backHistory');
                navigator.app.backHistory();
            }else{
                console.log('-->history.back');
                history.back();
            }
        } else if (body_id == "index" || body_id == "index_page" || body_id == "main_page") {
            BackgroundGeolocation.removeAllListeners();
            navigator.app.exitApp();
        } else if (body_id == "login") {
            navigator.app.exitApp();
        } else if (body_id == "gps-score" || body_id == "gps-run") {
            //BackgroundGeolocation.removeAllListeners();
            window.location.href = "index.html";
        } else {
            if (navigator)
                navigator.app.backHistory();
            else
                history.back();
        }
    }, false);
}

$(document).ready(function () {
    //配合 main.js , 所以延長 200ms
    setTimeout(function () {
        var user_info = localStorage["UserInfo"];
        //console.log('aaa');
        var bLogin = false;
        if (typeof user_info === 'undefined' || user_info === null || user_info == '') {
            bLogin = false;
            //console.log('bbb');
        } else {
            //console.log('ccc');
            var clsMember = jQuery.parseJSON(user_info);
            if (clsMember.ThirdID.length > 0 || clsMember.EMail.length > 0)
                bLogin = true;
            else
                bLogin = false;
        }

        if (bLogin == false) {
            $("#btnLoginLink").show();
            $("#btnLogoutLink").hide();
            $("#btnAccountLink").hide();
        } else {
            $("#btnLoginLink").hide();
            $("#btnLogoutLink").show();
            $("#btnAccountLink").show();
        }

    }, 200);


    document.addEventListener("deviceready", onDeviceReady, false);
});

function goNewEraFacebook() {
    //event.preventDefault();
    var url = "https://www.facebook.com/pg/pulinears/reviews/";
    if (typeof cordova !== "undefined" && typeof cordova.InAppBrowser !== "undefined") {
        cordova.InAppBrowser.open(url, "_blank", "hideurlbar=yes,location=yes");
        //window.location.href = "my_invitation.html";
    }
    else {
        alert('No InAppBrowser');
        window.open(url);
    }

    return false;
}

function goNewEraOrderHotel() {
    //event.preventDefault();
    var url = "https://neweraart.ezhotel.com.tw/";
    if (typeof cordova !== "undefined" && typeof cordova.InAppBrowser !== "undefined") {
        cordova.InAppBrowser.open(url, '_system');
    }
    else {
        alert('No InAppBrowser');
        window.open(url);
    }

    return false;
}

function getUserEMail() {
    var user_info = localStorage["UserInfo"];
    if (typeof user_info === 'undefined' || user_info === null || user_info == '') {
        return '';
    }

    var clsMember = jQuery.parseJSON(user_info);
    return clsMember.EMail;

}

function showAlertMessage(sMessage,sTitle){
    // if (navigator.notification)
    //     navigator.notification.alert(sMessage, null, 'xxx','確定');
    // else
        alert(sMessage);
}



//function DeviceCheck() {  //裝置移轉,改寫在Devicemove內
//    var Blan = (navigator.language || navigator.browserLanguage).toLowerCase();
//    //利用對話方塊返回的值 （true 或者 false
//    if (Blan=='zh-tw'||Blan=='zh-cn'){
//        if (confirm("轉移設備將會清除未上傳的資料，若未上傳請選取消進行上傳。")) {
//            localStorage.clear();
//            window.location.href = "login.html";
//            return;
//        }
//    }else{
//        if (confirm("Device transfer will clear the uploading data. If uploading is not done,please cancel uploading.")) {
//            localStorage.clear();
//            window.location.href = "login.html";
//            return;
//        }
//    }
//}


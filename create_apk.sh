#!/bin/bash
#生成憑證，不生成無法安裝
#keytool -genkey -v -keystore my-release-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias my-alias
rm 東海自我學習_1.2.5_apkcombo.com.apk 東海自我學習_1.2.5_apkcombo.com.apk.idsig 東海自我學習_1.2.6_apkcombo.com.apk
apktool b --use-aapt2 東海自我學習_1.2.5_apkcombo.com -o 東海自我學習_1.2.5_apkcombo.com.apk
zipalign -v -p 4 東海自我學習_1.2.5_apkcombo.com.apk 東海自我學習_1.2.6_apkcombo.com.apk
apksigner sign --ks my-release-key.jks --ks-pass pass:123456 --out 東海自我學習_1.2.5_apkcombo.com.apk 東海自我學習_1.2.6_apkcombo.com.apk
exit 0 
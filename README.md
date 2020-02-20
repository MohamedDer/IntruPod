# IntruPod
IntruPod is a library used to collect data about the client devices, send custom web views ie: pixel trackers, captcha..

## Architecture 
<p align="center"> 
  <img src="https://i.imgur.com/2tUo2xK.png">
</p>

## How to use 
IntruPod could be easily integrated via Cocopods 
```
pod 'IntruPod'
```
To access the different device infos :
```
import IntruPod
---

let deviceInfo = LiveTracker.shared.getDeviceInfo()
```
You can then send them to your remote server with 
```
let _ = LiveTracker.shared.getDeviceInfo()
```
You can use the DomeWebView to send the user a webView, ie: captcha, embeded banner,... 
By default it redirects to a captcha image, but it's fully customizable via the ``serverURLString``variable
```
let domeWV = DomeWebView.shared
yourView.addSubvieew(domeWV)
```

## About
This pod was created to demonstrate a basic, simple, less intrusive case to get users device infos. No external libs were used (to make network calls, encode/decode JSON... )


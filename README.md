# IntruPod
IntruPod is a library used to collect data about the client devices, send custom web views ie: pixel trackers, captcha..
## Demo app
<p align="center"> 
  <img src="https://i.imgur.com/Ps1SxNY.png">
</p>

## Architecture 
<p align="center"> 
  <img src="https://i.imgur.com/AHE8SWi.jpg">
</p>

## How to use 
IntruPod could be easily integrated via Cocaopods. Add the following line to your Podfile :  
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
let _ = LiveTracker.shared.sendDeviceReport()
```
You can use the DomeWebView to send the user a webView, ie: captcha, embeded banner,... 
By default it redirects to a captcha image, but it's fully customizable via the ``serverURLString``variable
```
let domeWV = DomeWebView(frame: yourView.frame)
yourView.addSubview(domeWV)
```

## About
 - This POC pod was created to demonstrate a basic, simple, less intrusive case to get users device infos. No external libs were used (to make network calls, encode/decode JSON... )
 - Server links were added just to mock the entire workflow.


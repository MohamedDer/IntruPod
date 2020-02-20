# IntruPod
IntruPod is a library used to collect data about the client devices, send custom web views ie: captcha..

## Architecture 
![UML Diag](https://i.imgur.com/2tUo2xK.png)
## How to use 
IntruPod could be easily integrated via Cocopods 
```
pod 'IntruPod'
```
To access the different device infos :
```
import IntruPod


let deviceInfo = LiveTracker.shared.getDeviceInfo()
```
You can then send them to your remote server with 
```
let _ = LiveTracker.shared.getDeviceInfo()
```
You can use the DomeWebView to send the user a webView, ie: captcha, embeded banner,... 
By default it redirects to a captcha image, but it's fully customizable via the ``serverURLString``variable

## About
This pod was created to demonstrate a basic, simple, less intrusive case to get users device infos. No external libs were used (to make network calls, code/decode JSON)


# TDFBridgeKit

TDFBridgeKit是一个组件间**逆向通信**的通用解决方案

##  Nature

TDFBridgeKit本质是提供一个容器  
由业务提供方将 开放的API 抽象成protocol，向TDFBridgeKit注册;  
TDFBridgeKit 内部会以弱引用的方式持有该注册对象;  
业务调用方 依据protocol取到该注册对象;  
双方 依据protocol完成该通信过程。

##  Use

###  向TDFBridgeKit注册
```
+ (void)registerObject:(id)object forProcotol:(Protocol *)procotol;
```

###  获取遵循对应协议的注册对象
```
+ (id)objectForProcotol:(Protocol *)procotol;
```

## Installation

TDFBridgeKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TDFBridgeKit'
```

## Author

liangjin bai, 295463048@qq.com

## License

TDFBridgeKit is available under the MIT license. See the LICENSE file for more info.

# MethodSwizzling

### 作用
交换两个方法的实现
### 使用
**注意**:必须在方法中添加==dynamic==
[具体可查看Stackoverflow](https://stackoverflow.com/questions/33096873/method-swizzling-does-not-work)
和
[AppleDoc](https://developer.apple.com/documentation/swift#2984801)

交换例如如下的两个方法

```swift
@objc dynamic func aMethod() {
    print("a 方法")
}

@objc dynamic func bMethod() {
    print("b 方法")
}
```

调用

```swift
exchange(originMethod:#selector(aMethod),with :#selector(bMethod), classInstance: self.classForCoder)
```

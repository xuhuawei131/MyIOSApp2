## MyIOSApp2<br />

按住alt 拖动控件，就是一边复制，一边移动新的控件<br />
**.m文件中的interface中声明的变量都是私有变量**<br />
**而在.h头文件中的interface中声明，可以是公开的**<br />

viewDidLoad系统的回调，页面加载完毕的时候回调。<br />

##在类上面，按住alt双击两次，可以快捷的查看帮助文档<br />
NSString 转换成其他的类型的方法floatValue  intValue等<br />
fomat中 %.3f  小数点后三位<br />

在拖拽之后 发生了一个异常 就是 我声明的控件的实力 我想更改名字  改完之后出现了错误<br/>

'NSUnknownKeyException', reason: '
[<UIViewController 0x3927310> setValue:forUndefinedKey:]: <br/>
this class is not key value coding-compliant for the key string

就是因为 他们还在关联着 所以我们需要在 链接监测器上解除 他们的关联

![image](https://github.com/xuhuawei131/MyIOSApp2/blob/master/raw/master/Screenshots/errorSolve.png)



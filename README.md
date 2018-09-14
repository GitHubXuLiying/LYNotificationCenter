# LYNotificationCenter (https://github.com/GitHubXuLiying/LYNotificationCenter.git)

不需要手动移除observe，在对象释放时自动移除observe；

## Usage
导入头文件
```
#import "NotificationCenter.h"
```

```
   //NSObject+LYNotificationCenter
    [self.notificationCenter addObserverForName:UITextFieldTextDidChangeNotification usingBlock:^(NSNotification *note) {
        
    }];
```

## Installation
```
pod 'LYNotificationCenter', '~> 1.0'

```

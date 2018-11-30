Pod::Spec.new do |s|
  s.name         = "LYNotificationCenter" # 项目名称
  s.version      = "1.0.1"        # 版本号 与 你仓库的 标签号 对应
  s.license      = "MIT"          # 开源证书
  s.summary      = "不需要手动移除observer的NotificationCenter" # 项目简介

  s.homepage     = "https://github.com/GitHubXuLiying/LYNotificationCenter/" # 你的主页
  s.source       = { :git => "https://github.com/GitHubXuLiying/LYNotificationCenter.git", :tag => "#{s.version}" }#你的仓库地址，不能用SSH地址
  s.source_files = "LYNotificationCenter/*.{h,m}" # 你代码的位置， 
  s.platform     = :ios, "7.0" #平台及支持的最低版本
  s.frameworks   = "UIKit", "Foundation" #支持的框架
  # s.dependency = "AFNetworking" # 依赖库
  
  # User
  s.author             = { "xuliying" => "850401552@qq.com" } # 作者信息
  s.social_media_url   = "https://github.com/GitHubXuLiying" # 个人主页

end

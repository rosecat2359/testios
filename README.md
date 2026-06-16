# iOS 无功能示例应用

这是一个最小 SwiftUI 示例工程，主打“无功能、纯展示”。

包含内容：

- 一个基础 iOS App 入口
- 一个静态首页
- 三个示例卡片
- 两个装饰性按钮

工程路径：

- `NoFunctionDemoApp.xcodeproj`
- `NoFunctionDemoApp/NoFunctionDemoAppApp.swift`
- `NoFunctionDemoApp/ContentView.swift`
- `NoFunctionDemoApp/Info.plist`

云构建：

- 已添加 GitHub Actions workflow: `.github/workflows/ios-build.yml`
- 已添加共享 scheme: `NoFunctionDemoApp.xcodeproj/xcshareddata/xcschemes/NoFunctionDemoApp.xcscheme`
- 运行后会在 `macos-latest` 上执行 `xcodebuild clean build`

打开方式：

1. 用 Xcode 打开 `NoFunctionDemoApp.xcodeproj`
2. 选择一个模拟器
3. 直接运行

如果你要真正“云上构建”，下一步是：

1. 把这个目录放进 GitHub 仓库
2. 在 GitHub Actions 里启用 workflow
3. Push 到 `main` 或 `master`

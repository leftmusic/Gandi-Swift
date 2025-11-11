# Gandi-Swift

一个使用Swift和WebKit构建的macOS应用程序，用于显示HTML内容并支持键盘输入。

## 功能特性

- ✅ 基于WebKit的HTML内容显示
- ✅ 完整的键盘事件支持
- ✅ 自动焦点管理
- ✅ 现代化的macOS界面
- ✅ Swift Package Manager支持

## 系统要求

- macOS 12.0 或更高版本
- Xcode 13.0 或更高版本
- Swift 5.5 或更高版本

## 项目结构

```
Gandi-Swift.swiftpm/
├── Package.swift          # Swift包配置文件
├── README.md              # 项目说明文档
├── .gitignore             # Git忽略规则
├── LICENSE                # MIT许可证
└── Sources/
    ├── main.swift         # 应用程序主入口
    └── Pages/
        └── index.html     # HTML内容文件
```

## 快速开始

### 使用Xcode

1. 双击 `Gandi-Swift.xcodeproj` 打开项目
2. 选择目标设备或模拟器
3. 按 `Cmd + R` 运行应用程序

### 使用命令行

```bash
# 构建项目
swift build

# 运行应用程序
swift run
```

### 使用Swift Package Manager

```bash
# 生成Xcode项目
swift package generate-xcodeproj

# 打开Xcode项目
open Gandi-Swift.xcodeproj
```

## 开发说明

### 自定义HTML内容

编辑 `Sources/Pages/index.html` 文件来自定义显示内容：

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gandi-Swift</title>
    <style>
        body { 
            font-family: -apple-system, BlinkMacSystemFont, sans-serif;
            margin: 40px;
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
    <h1>欢迎使用 Gandi-Swift</h1>
    <p>这是一个使用Swift和WebKit构建的macOS应用程序。</p>
    
    <!-- 测试文本框 -->
    <input type="text" placeholder="在这里输入文字测试键盘功能">
</body>
</html>
```

### 键盘事件处理

应用程序使用自定义的 `CustomWebView` 类来处理键盘事件：

- 自动成为第一响应者
- 支持所有标准键盘输入
- 兼容macOS键盘事件系统

## 许可证

本项目使用 MIT 许可证。详见 [LICENSE](LICENSE) 文件。

## 贡献

欢迎提交Issue和Pull Request来改进这个项目。

## 故障排除

### 常见问题

1. **构建失败**：确保使用macOS 12.0或更高版本
2. **键盘不响应**：检查应用程序是否获得焦点
3. **HTML不显示**：确认index.html文件存在且路径正确

### 调试模式

在Xcode中运行应用程序时，可以查看控制台输出来调试问题。

## 更新日志

### v1.0.0
- 初始版本发布
- 基础HTML显示功能
- 键盘事件支持
- Swift Package Manager集成
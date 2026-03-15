# 智慧物业 Android APP 构建说明

## 快速构建（推荐 - 无需安装 Android Studio）

### 方法一：使用在线构建服务

将此项目打包的 zip 上传到以下任一平台：

1. **GitHub Actions**（免费，专业）
   - Fork 本项目到 GitHub
   - 在 Actions 标签页触发 Build APK 工作流
   - 直接下载生成的 APK Artifact

2. **Codemagic.io**（免费 500 分钟/月）
   - 上传项目 → 选择 Android → 一键构建

### 方法二：本地构建（需安装 JDK + Android SDK）

**前提条件：**
- JDK 17+：https://adoptium.net/
- Android Studio（含 SDK）：https://developer.android.com/studio

**构建命令：**
```bash
# Windows
gradlew.bat assembleDebug

# 输出路径：
# app/build/outputs/apk/debug/app-debug.apk
```

### ⚡ 修改目标地址

编辑 `app/src/main/java/com/smartproperty/app/MainActivity.java`：

```java
private static final String APP_URL = "YOUR_CPOLAR_HTTPS_URL";
// 替换为你的 cpolar 地址，例如：
// private static final String APP_URL = "https://abc123.cpolar.cn";
```

## APP 功能特性

- ✅ 全屏 WebView，无浏览器地址栏
- ✅ 启动画面（深蓝品牌色 + 智慧物业标题）
- ✅ 下拉刷新
- ✅ 断网检测 + 重连按钮
- ✅ 返回键支持网页后退
- ✅ 文件上传支持（巡检拍照/附件）
- ✅ Cookie 持久化（保持登录状态）
- ✅ 网络权限 + 存储权限 + 相机权限

## 项目结构

```
SmartPropertyApp/
├── app/
│   └── src/main/
│       ├── AndroidManifest.xml
│       ├── java/com/smartproperty/app/
│       │   ├── MainActivity.java      ← WebView 核心
│       │   └── SplashActivity.java    ← 启动页
│       └── res/
│           ├── layout/                ← 界面布局
│           ├── values/                ← 颜色/主题/文字
│           ├── mipmap-*/              ← 各密度图标
│           └── xml/                   ← 网络安全配置
├── build.gradle
├── settings.gradle
└── BUILD_README.md                    ← 本文件
```

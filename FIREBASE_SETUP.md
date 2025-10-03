# Firebase 设置指南

## 步骤 1: 创建 Firebase 项目

1. 访问 [Firebase Console](https://console.firebase.google.com/)
2. 点击 "添加项目" 或 "Create a project"
3. 输入项目名称，例如：`beijing-marathon-tracker`
4. 可以选择禁用 Google Analytics（不需要）
5. 点击 "创建项目"

## 步骤 2: 创建 Web 应用

1. 在项目概览页面，点击 Web 图标 `</>`
2. 输入应用昵称，例如：`Marathon Tracker Web`
3. **不需要**勾选 "Firebase Hosting"
4. 点击 "注册应用"

## 步骤 3: 获取配置信息

复制显示的 Firebase 配置代码，类似这样：

```javascript
const firebaseConfig = {
  apiKey: "AIzaSyXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
  authDomain: "your-project.firebaseapp.com",
  databaseURL: "https://your-project-default-rtdb.firebaseio.com",
  projectId: "your-project",
  storageBucket: "your-project.appspot.com",
  messagingSenderId: "123456789012",
  appId: "1:123456789012:web:abcdef123456"
};
```

## 步骤 4: 启用 Realtime Database

1. 在左侧菜单中，点击 "构建" > "Realtime Database"
2. 点击 "创建数据库"
3. 选择数据库位置（建议选择 `asia-southeast1` 新加坡，离中国最近）
4. 选择 "以测试模式启动"（稍后我们会设置安全规则）
5. 点击 "启用"

## 步骤 5: 设置安全规则

在 Realtime Database 页面，点击 "规则" 标签，替换为以下规则：

```json
{
  "rules": {
    "users": {
      "$userId": {
        ".read": true,
        ".write": "$userId === auth.uid || $userId === newData.child('userId').val()",
        ".validate": "newData.hasChildren(['lat', 'lng', 'timestamp', 'nickname'])"
      }
    },
    "activeUsers": {
      ".read": true,
      ".write": true
    }
  }
}
```

点击 "发布" 保存规则。

## 步骤 6: 更新配置文件

将你获取的 Firebase 配置信息填入 `firebase-config.js` 文件中。

## 完成！

现在你的 Firebase 项目已经设置完成，可以开始使用多人位置共享功能了！

## 注意事项

- **免费额度**：Realtime Database 免费套餐提供 1GB 存储和 10GB/月下载量，对于这个应用完全够用
- **安全性**：当前使用测试模式，任何人都可以读写数据。如果需要更高安全性，可以启用 Firebase Authentication
- **数据清理**：用户离线后，数据会自动清除（通过 onDisconnect 实现）

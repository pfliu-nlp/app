# 🚀 多人位置共享 - 快速开始指南

## ⚡ 5分钟快速配置

### 步骤 1: 创建 Firebase 项目（2分钟）

1. 打开 [Firebase Console](https://console.firebase.google.com/)
2. 点击 **"添加项目"**
3. 输入项目名称：`beijing-marathon`
4. 点击 **"继续"** → **"创建项目"**

### 步骤 2: 创建 Web 应用（1分钟）

1. 在项目首页，点击 **Web 图标** `</>`
2. 输入应用昵称：`Marathon Tracker`
3. 点击 **"注册应用"**
4. **复制配置代码**（重要！）

### 步骤 3: 启用数据库（1分钟）

1. 左侧菜单 → **"Realtime Database"**
2. 点击 **"创建数据库"**
3. 选择位置：**asia-southeast1** (新加坡)
4. 选择 **"测试模式"**
5. 点击 **"启用"**

### 步骤 4: 更新配置（1分钟）

#### 方法 A: 使用脚本（推荐）

```bash
./update_firebase_config.sh
```

然后按提示输入你的配置信息。

#### 方法 B: 手动编辑

打开 `index.html`，找到第 820 行左右的 `firebaseConfig`，替换为你的配置：

```javascript
const firebaseConfig = {
  apiKey: "你的API密钥",
  authDomain: "你的项目.firebaseapp.com",
  databaseURL: "https://你的项目-default-rtdb.firebaseio.com",
  projectId: "你的项目ID",
  storageBucket: "你的项目.appspot.com",
  messagingSenderId: "你的发送者ID",
  appId: "你的应用ID"
};
```

### 步骤 5: 部署到 GitHub Pages

```bash
git add .
git commit -m "Configure Firebase for multiplayer feature"
git push origin main
```

等待 1-2 分钟，访问：https://pfliu-nlp.github.io/app/

---

## 🎮 开始使用

### 单人使用

1. 打开网站
2. 点击 **"📍 定位"**
3. 允许位置权限
4. 开始跑步！

### 多人共享

1. 打开网站
2. 输入昵称（如：小明）
3. 点击 **"🌐 开始共享位置"**
4. 允许位置权限
5. 邀请朋友也打开网站并共享位置
6. 在地图上看到彼此的实时位置！

---

## 🎨 功能预览

### 你将看到：

- 🎨 **不同颜色的用户标记**
  - 每个用户有独特的颜色
  - 标记上显示昵称
  
- 📊 **在线用户列表**
  - 显示所有在线用户
  - 显示与你的距离
  
- 🏃 **实时信息**
  - 速度（km/h）
  - 方向（度数）
  - 最后更新时间
  
- 🧭 **方向箭头**
  - 显示每个用户的移动方向
  - 实时旋转更新

---

## 💡 使用场景

### 🏃 团队训练
```
教练和队员都开启共享
→ 教练监控所有队员位置
→ 队员看到彼此的配速
→ 方便团队协作
```

### 👥 朋友约跑
```
约定一起跑二环
→ 看到谁跑得快
→ 方便等待和汇合
→ 增加跑步乐趣
```

### 🎉 马拉松活动
```
参赛选手开启共享
→ 观众实时追踪
→ 选手看到竞争对手
→ 增加比赛趣味
```

---

## 🔒 隐私说明

- ✅ 只在共享期间可见
- ✅ 停止共享后数据立即删除
- ✅ 不保存历史记录
- ✅ 只显示昵称

---

## ❓ 常见问题

### Q: 看不到其他用户？
**A:** 确保：
1. Firebase 配置正确
2. 其他用户也开启了共享
3. 网络连接正常

### Q: 如何停止共享？
**A:** 点击 **"🔴 停止共享"** 按钮

### Q: 数据安全吗？
**A:** 
- 数据只在共享期间存在
- 停止共享后立即删除
- 不保存任何历史记录

### Q: 免费吗？
**A:** 
- Firebase 免费套餐完全够用
- 支持 100 并发用户
- 无需信用卡

---

## 📞 需要帮助？

- 📖 详细文档：[MULTIPLAYER_GUIDE.md](MULTIPLAYER_GUIDE.md)
- 🔧 配置指南：[FIREBASE_SETUP.md](FIREBASE_SETUP.md)
- 📝 项目说明：[README.md](README.md)

---

## 🎉 开始体验

**现在就配置 Firebase，邀请朋友一起跑步吧！**

**网站地址：** https://pfliu-nlp.github.io/app/

**祝你跑步愉快！🏃‍♂️💨**

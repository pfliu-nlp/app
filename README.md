# 北京二环马拉松路线图 - 分享指南

## 🚀 最快分享方法（3种）

### 方法1️⃣：微信/QQ直接发文件（最简单）
1. 直接把 `beijing_second_ring_marathon.html` 文件发给朋友
2. 朋友下载后用手机浏览器打开即可
3. ✅ 优点：最快，1分钟搞定

### 方法2️⃣：启动本地服务器（同WiFi可访问）
```bash
cd /home/pfliu/github/test2
python3 -m http.server 8000
```
然后：
- 查看你的IP地址：`hostname -I`
- 告诉朋友访问：`http://你的IP:8000/beijing_second_ring_marathon.html`
- 朋友需要和你在同一WiFi下
- ✅ 优点：实时预览，可以边改边看

### 方法3️⃣：Netlify Drop（永久链接，最推荐）
1. 访问 https://app.netlify.com/drop
2. 拖拽 `beijing_second_ring_marathon.html` 文件到页面
3. 立即获得永久链接（如：https://xxx.netlify.app）
4. 分享链接给朋友
5. ✅ 优点：永久有效，专业，免费

## 📱 生成二维码（可选）
部署后，访问 https://cli.im 输入网址生成二维码，朋友扫码即可访问

## 🎯 推荐流程
**今天下午就要用** → 方法1（微信发文件）
**想要专业分享** → 方法3（Netlify）
**在家测试** → 方法2（本地服务器）
#!/bin/bash

# Firebase 配置更新脚本
# 使用方法: ./update_firebase_config.sh

echo "=========================================="
echo "  Firebase 配置更新工具"
echo "=========================================="
echo ""
echo "请按照提示输入你的 Firebase 配置信息"
echo "（可以从 Firebase Console 复制）"
echo ""

# 读取配置信息
read -p "API Key: " API_KEY
read -p "Auth Domain (例如: your-project.firebaseapp.com): " AUTH_DOMAIN
read -p "Database URL (例如: https://your-project-default-rtdb.firebaseio.com): " DATABASE_URL
read -p "Project ID: " PROJECT_ID
read -p "Storage Bucket (例如: your-project.appspot.com): " STORAGE_BUCKET
read -p "Messaging Sender ID: " MESSAGING_SENDER_ID
read -p "App ID: " APP_ID

echo ""
echo "正在更新配置..."

# 更新 index.html
sed -i "s|apiKey: \"YOUR_API_KEY\"|apiKey: \"$API_KEY\"|g" index.html
sed -i "s|authDomain: \"YOUR_PROJECT_ID.firebaseapp.com\"|authDomain: \"$AUTH_DOMAIN\"|g" index.html
sed -i "s|databaseURL: \"https://YOUR_PROJECT_ID-default-rtdb.firebaseio.com\"|databaseURL: \"$DATABASE_URL\"|g" index.html
sed -i "s|projectId: \"YOUR_PROJECT_ID\"|projectId: \"$PROJECT_ID\"|g" index.html
sed -i "s|storageBucket: \"YOUR_PROJECT_ID.appspot.com\"|storageBucket: \"$STORAGE_BUCKET\"|g" index.html
sed -i "s|messagingSenderId: \"YOUR_MESSAGING_SENDER_ID\"|messagingSenderId: \"$MESSAGING_SENDER_ID\"|g" index.html
sed -i "s|appId: \"YOUR_APP_ID\"|appId: \"$APP_ID\"|g" index.html

# 更新 beijing_second_ring_marathon.html
sed -i "s|apiKey: \"YOUR_API_KEY\"|apiKey: \"$API_KEY\"|g" beijing_second_ring_marathon.html
sed -i "s|authDomain: \"YOUR_PROJECT_ID.firebaseapp.com\"|authDomain: \"$AUTH_DOMAIN\"|g" beijing_second_ring_marathon.html
sed -i "s|databaseURL: \"https://YOUR_PROJECT_ID-default-rtdb.firebaseio.com\"|databaseURL: \"$DATABASE_URL\"|g" beijing_second_ring_marathon.html
sed -i "s|projectId: \"YOUR_PROJECT_ID\"|projectId: \"$PROJECT_ID\"|g" beijing_second_ring_marathon.html
sed -i "s|storageBucket: \"YOUR_PROJECT_ID.appspot.com\"|storageBucket: \"$STORAGE_BUCKET\"|g" beijing_second_ring_marathon.html
sed -i "s|messagingSenderId: \"YOUR_MESSAGING_SENDER_ID\"|messagingSenderId: \"$MESSAGING_SENDER_ID\"|g" beijing_second_ring_marathon.html
sed -i "s|appId: \"YOUR_APP_ID\"|appId: \"$APP_ID\"|g" beijing_second_ring_marathon.html

echo ""
echo "✅ 配置更新完成！"
echo ""
echo "接下来："
echo "1. 在 Firebase Console 中启用 Realtime Database"
echo "2. 设置数据库安全规则（参考 FIREBASE_SETUP.md）"
echo "3. 提交并推送到 GitHub"
echo "4. 等待 GitHub Pages 部署完成"
echo ""
echo "完成后访问: https://pfliu-nlp.github.io/app/"
echo ""

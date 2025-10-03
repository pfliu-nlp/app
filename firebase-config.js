// Firebase 配置文件
// 请按照 FIREBASE_SETUP.md 中的说明获取你的配置信息并替换下面的值

const firebaseConfig = {
  apiKey: "YOUR_API_KEY",
  authDomain: "YOUR_PROJECT_ID.firebaseapp.com",
  databaseURL: "https://YOUR_PROJECT_ID-default-rtdb.firebaseio.com",
  projectId: "YOUR_PROJECT_ID",
  storageBucket: "YOUR_PROJECT_ID.appspot.com",
  messagingSenderId: "YOUR_MESSAGING_SENDER_ID",
  appId: "YOUR_APP_ID"
};

// 导出配置（如果使用模块化）
if (typeof module !== 'undefined' && module.exports) {
  module.exports = firebaseConfig;
}

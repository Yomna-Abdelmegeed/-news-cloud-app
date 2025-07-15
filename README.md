# 📰 News Cloud App

A simple Flutter app that displays breaking news from Egypt, with support for categories and viewing detailed articles inside a WebView.

This app fetches news data from free APIs and presents it in a clean, scrollable interface.

---

## 📱 Features

✅ Display top headlines from Egypt (Arabic language supported)  
✅ Browse news by category (e.g. business, sports, technology)  
✅ View detailed news articles inside the app using WebView  
✅ Loading indicators while fetching news  
✅ Graceful handling of missing images or failed API calls  

---

## 🛠 Built With

- Flutter — cross-platform UI toolkit  
- Dio — for making HTTP requests  
- webview_flutter — to display full news articles  
- NewsData.io / NewsAPI — as data sources  

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK installed
- Android Studio / VS Code with Flutter plugin
- API key for your chosen news API (e.g. [newsdata.io](https://newsdata.io))

---

### Installation

git clone https://github.com/Yomna-Abdelmegeed/-news-cloud-app.git
cd -news-cloud-app
flutter pub get
flutter run

---

## 🌍 APIs Used

### NewsAPI (optional / dev use)
https://newsapi.org/v2/top-headlines?country=eg&apiKey=YOUR_API_KEY


### NewsData.io
https://newsdata.io/api/1/latest?apikey=YOUR_API_KEY&country=eg&language=ar&category=YOUR_CATEGORY

➡ Example:
https://newsdata.io/api/1/latest?apikey=pub_b8b3e5ebb7694acc9bccf3cb786ca45d&country=eg&language=ar&category=business

---

## 📌 Notes

- This app is for educational / demo purposes — free news APIs often have usage limits.
- If you plan to publish the app, check the API's terms of service.

---

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you’d like to change.

---

## 📄 License

This project is open source — feel free to add your preferred license.

---

## ✨ Author

Yomna Abdelmegeed — [GitHub Profile](https://github.com/Yomna-Abdelmegeed)

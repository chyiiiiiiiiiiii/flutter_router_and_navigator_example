# Flutter Router and Navigator Example

[![English](https://img.shields.io/badge/README-English-blue)](README.md)

這個範例可以搭配 Flutter 書籍一起閱讀。

## 描述
本專案全面探索了 Flutter 應用中的導航技術。它展示了各種導航策略，包括自訂導航、命名路由，以及使用 `go_router` 套件進行更進階的路由場景。該專案旨在為開發者提供如何有效管理 Flutter 應用程式導航的深入理解。

## 目錄
- [Flutter Router and Navigator Example](#flutter-router-and-navigator-example)
  - [描述](#描述)
  - [目錄](#目錄)
  - [使用方法](#使用方法)
  - [功能](#功能)
  - [貢獻](#貢獻)
  - [許可證](#許可證)
  - [聯繫](#聯繫)

## 使用方法
項目分為不同的導航策略：

1. **自訂導航器**：示範了使用 `Navigator` 小工具的自訂導航設定。
 - 程式碼參考：`lib/custom_navigator/main.dart`

2. **命名路由**：利用命名路由進行導航，允許參數傳遞和路由管理。
 - 程式碼參考：`lib/navigator/main.dart`

3. **Go Router**：實作了 `go_router` 套件的宣告式路由，包括嵌套路由和重定向。
 - 程式碼參考：`lib/go_router/main.dart`
 - 程式碼參考：`lib/go_router/app_router.dart`
 - 程式碼參考：`lib/go_router/router_refresh_stream.dart`

## 功能
- **自訂導覽**：學習如何實現具有動畫過渡的自訂導航邏輯。
- **命名路由**：了解如何使用命名路由實現更清晰和更易於管理的導航。
- **Go Router**：探索使用 `go_router` 套件的高階路由功能，包括路由守衛和狀態管理。

## 貢獻
歡迎貢獻！如果您有建議或改進，請 fork 倉庫並提交 pull request。對於重大更改，請先開啟一個 issue 以討論您想要更改的內容。

## 許可證
本項目採用 MIT 許可證 - 詳情請參閱 [LICENSE](LICENSE) 文件。

## 聯繫
如有問題或回饋，請聯絡：

- 信箱：ab20803@gmail.com
- Twitter：[yiichenhi](https://twitter.com/yiichenhi)
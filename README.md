# Fildig

## 概要
　Film（映画）をdig（探索）する、[Fildig](http://www.fildig.com)
　映画をいろんな探し方のできるサイトです

## テストユーザーログイン情報
- URL : http://www.fildig.com
 - ユーザー名 : user1
 - パスワード : userpass

## 機能一覧
- ユーザー認証機能
- 映画の検索/保存
- 映画への評価/レビューの投稿
- 他ユーザーのフォロー

## 使用技術一覧
### 言語、フレームワーク
- ruby '2.5.5'
- rails '5.2.3'
- jQuery

### railsライブラリ
- gem 'devise'
- gem 'refile'
- gem 'refile-mini_magick'
- gem 'kaminari'
- gem 'acts-as-taggable-on'
- gem 'bootstrap', '4.3.1'

### デプロイ環境
- AWS(EC2,RDS,EIP)
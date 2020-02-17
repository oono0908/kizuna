# README
# Kizunaアプリ

### 概要
- このアプリはマイナースポーツをするアスリート（社会人、学生）の為の情報共有アプリです。
### アプリケーション情報
- 接続先情報
  - URL http://18.176.40.116/
  - テスト用アカウント
    - メールアドレス hoge@hoge
    - パスワード oono0908
### 制作理由
  マイナースポーツをしているアスリートの情報不足による成長の鈍化を防ぐ為に作りました。
  私は大学在学時と、卒業してから約２年間陸上競技の十種競技をしていました。大学から初めて十種競技というスポーツを始めた為、分からないことが多く、中学から陸上を続けている同期と比べると多くの課題に直面しました。しかし、マイナー競技であるが故に、直面した課題を解決するための情報取得に非常に苦労しました。サッカーや野球であれば本屋に行けば無数に参考書が置いてあり、snsを開けばトップで活躍するアスリートの情報を即座に見ることができます。しかし、十種競技というマイナースポーツをしている私は本屋に行こうが、snsを開こうが満足のいく情報を獲得することは非常に困難でした。そんなときに、十種競技をしている選手間で気軽にいつでも、どこからでも情報を共有して見ることが出来るアプリのようなものがあれば、限られた選手生命の中で効率的に選手の能力を最大限に発揮できるなのになと考えていたのがきっかけです。そして、もちろん十種競技に限らず、他のマイナースポーツのアスリート（スカッシュ、ボブスレー、女子ラグビー、アルティメット等）も同様のことを考えているはずです。そこで今回、マイナースポーツアスリートが情報を共有できるアプリを作成しました。
### 開発環境
  - ruby/Ruby on Rails/jquery/javascript/MySQL/Github/AWS/Visual Studio Code
### DB
#### userテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|unique: true, null: false|
|email|string|unique: true, null: false|
|age|integer|
|career|string|
|comment|string|
#### Association
has_many :groups, through: :groups_users
has_many :messages
has_many :groups_users
has_many :comments
has_many :likes
has_many :liked_posts, through: :likes, sorce: :comment
has_many :trains
has_many :hips
has_many :calves
has_many :thighs
has_many :arms
has_many :backs
has_many :chests
has_many :bellies
#### groupテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|name|string|unique: true, null: false|

#### Association
has_many :group_users
has_many :users, through: :group_users
has_many :messages
has_many :comments
#### group_userテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|group_id|integer|null: false|

#### Association
belongs_to :group
belongs_to :user
#### messageテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|content|string|null: false|
|image|string|
#### Association
belongs_to :group
belongs_to :user
has_many :comments
#### commentテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|message_id|integer|null: false|
|content|string|null: false|
|image|string|
#### Association
belongs_to :group
belongs_to :message
belongs_to :user
has_many :likes
has_many :liked_users, through: :likes, source: :user
#### likeテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|comment_id|integer|null: false|
#### Association
belongs_to :comment
belongs_to :user
#### trainテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|short|integer|null: false|
|jump|integer|null: false|
|side|integer|null: false|
|long|integer|null: false|
|hand|integer|null: false|
|situp|integer|null: false|

#### Association
belongs_to :user
#### armテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|content|string|null: false|
|image|string|
#### Association
belongs_to :user
#### backテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|content|string|null: false|
|image|string|
#### Association
belongs_to :user
#### hipテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|content|string|null: false|
|image|string|
#### Association
belongs_to :user
#### chestテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|content|string|null: false|
|image|string|
#### Association
belongs_to :user
#### calfテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|content|string|null: false|
|image|string|
#### Association
belongs_to :user
#### bellyテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|content|string|null: false|
|image|string|
#### Association
belongs_to :user
#### thighテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|content|string|null: false|
|image|string|
#### Association
belongs_to :user
## ER図
![ER](https://i.gyazo.com/03346b28a6e4e6efc7f241fc46b6f244.png)

## 機能説明
  ![index](https://i.gyazo.com/a67beb610e99d93deb058b85e2b61fb9.jpg)
  - 上記の画像はログイン後のグループ作成時の画像になります。
    - 1.グループ作成画面へ
    - 2.クリックしたグループ質問画面への切り替え
    - 3.user詳細画面へ
    - 4.user編集画面へ
    - 5.今日のスポーツニュース。今日のスポーツニュースがリアルタイムで流れてきます。
    - 6.競技グループ編集画面へ
    - 7.今日のスポーツニュース一覧へ。５つのスポーツニュースサイトを閲覧することができます。
    - 8.スポーツテストランク判定画面へ
    - 9.筋力トレーニング情報共有画面へ
    - 10.動体視力トレーニング画面へ
    - 11.質問入力欄
    - 12.動画投稿欄
    - 13.質問送信ボタン
 ### 1.グループ作成画面
 作成したいグループ名を書きグループを作成できます。またこのアプリは紹介制のアプリです。招待したい仲間を検索し追加することができます。
 ![make_group](https://i.gyazo.com/83a7ead0ee37d1e5db8eee2efe6ba34e.png)
 ### 2.11.12.13クリックしたグループ質問画面
 自分の疑問点や改善点の質問と動画を投稿することができます（画像はできません）。質問をすると画面右に自分の質問、また、グループに参加しているメンバーの質問を見ることができます。他のメンバーの質問に対して回答したい場合は回答ボタンを押すと回答ページに遷移することができます。
 ![group](https://i.gyazo.com/c8a595271fe091fc17db27341973027d.jpg)
 ### 回答ページ
 イイね機能がついています。
 ![answer](https://i.gyazo.com/dcf0f685bf7d52a3b56f0b221d6b5ecf.jpg)
 ### 3.user詳細画面
index画面、質問画面、回答画面などuserの名前がクリックできます。各ユーザーの詳細ページに遷移できます。
![user_detail](https://i.gyazo.com/27c31a20c3a81ede62a327339432b15e.jpg)
 ### 7.最新ニュース一覧
 5つのニュースサイトのトップページに表示されている最新のニュースを見ることができます。
 ![news](https://i.gyazo.com/a7e65825b071481f4fb9f15eb1f97a62.jpg)
 ### 8.スポーツテスト判定
 学生のときに手書きで行っていたスポーツテストの判定を自動で処理できます。
 ![test](https://i.gyazo.com/aa49910db39b421b70e46d5195278ad7.jpg)
 ### 9.筋力トレーニング情報共有ページ
 まずアイコンをクリックすると下記のような画面に遷移します。鍛えたい部位の場所をクリックするとその部位に応じたトレーニング情報の共有と投稿できる画面に遷移できます。
 ![muscle](https://i.gyazo.com/1ec9fcd1df42f1515fc5bce1d9d6b23d.jpg)
 上記の画像の筋肉の部位をクリックすると下記の画面へ遷移します。ここでは、各部位に応じた自分のトレーニング、他のメンバーのトレーニングを投稿、見ることができます。
 ![muscle_detail](https://i.gyazo.com/a27e897b24de1cccac92ee5496421180.jpg)
 ### 10.動体視力トレーニング
 スポーツ選手には欠かせない動体視力をトレーニングすることができます。スタートボタンをクリックすると、1秒毎にひとつのボタンが黄色に変化します。黄色く変化したボタンをクリックしてください。1クリック成功毎に画面下のtotalの場所に1ポイントずつ加算されていきます。30秒経つと終了です。終了後はresetボタンを必ず押してください。
![eye](https://i.gyazo.com/b4a63a92846c6f5357f68181c1ded73d.jpg)
user編集機能、グループ編集機能は説明不要かと思いますので説明は割愛させていただきます。以上がこのアプリの機能の全てです。
## 今後について
今後についてはトップで活躍するマイナーアスリートとアマチュアアスリートが交流できるようなアプリを開発したいと考えています。特にマイナーアスリートとして活動している社会人の方たちは何よりも資金面で苦労することが多いかと思います。なので資金面でも少しでもサポートできるようなアプリを作成できたらなと考えています。例えば、月額制にして、アマチュアアスリートの質問に対して登録しているトップアスリートが回答するといくつかトップアスリート側にポイントが入り、ポイントと何か粗品を交換出来るようなシステムなど。最後に、このアプリは学校の部活動内での情報共有にも最適だと考えています。学生の時期は多感でなかなか自分の意見を率直に伝えることが難しい時期です。限られた3年間、4年間という短い期間で成果を出すには効率的に練習することが大切です。ぜひこのアプリを使って情報共有し自分の持っている力を最大限に発揮してほしいと思います。

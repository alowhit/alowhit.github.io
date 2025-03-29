---
  title: "如何在Github佈置Hugo（blowfish主題）"
  date: 2025-03-29
  tags: ["website", "Hugo", "blowfish"]
---


如果你之前沒有使用過 Hugo，你首先需要了解[在本地機器安装 Hugo](https://gohugo.io/getting-started/installing)。你可以通過運行命令 `hugo version` 来檢查是否安裝完成。

如果你之前連Go和Git都沒有使用過，那你更需要先去了解一下[在本地機器安裝 Git](https://git-scm.com/)
，再從[Go官網給本地機器安裝 Go](https://go.dev/)，版本需要1.23.0或以上。

#### 創建一個git項目

為你的網站鏈接創建一個git項目，創建的repo名需要以 `<username>.github.io` 的方式去命名，它也會作為你的網站域名入口而被創立。
之後，在你的項目資料夾中輸入`git init -b main`，從而初始化你的 **git** repo。

#### 部署Git並為Github的網頁服務做前置準備

本文就不多著墨在同步Git和Github的相關用法了。
經過上方的做法，你默認的branch會是**main**。
其次，我們還會需要一個叫做**gh-pages**的分支；
該分支將會用於日後的 **workflows** ，也就是Github提供的Action服務，
能夠根據你推送的網頁更新作自動化生成，並掛載Hugo來架設對外瀏覽用的頁面。
`branch :` `main` `gh-pages`

#### .gitignore的文件

要無視的文件

```text
#others
node_modules
.hugo_build.lock

# Hugo
public
```

#### 創建一個工作流

在資料夾創建一個`.github/workflows`的空白資料夾，再把這個檔案命名為`gh-pages.yml`，在程式碼下面能夠看到：
當你推送`main`的相關資料後，工作流就會自動創建`build-deploy`，最後在`gh-pages`進行網頁內容架設。

```yaml
# .github/workflows/gh-pages.yml

name: GitHub Pages

on:
  push:
    branches:
      - main

jobs:
  build-deploy:
    runs-on: ubuntu-20.04
    concurrency:
      group: ${{ github.workflow }}-${{ github.ref }}
    steps:
      - name: Checkout
        uses: actions/checkout@v3
        with:
          submodules: true
          fetch-depth: 0

      - name: Setup Hugo
        uses: peaceiris/actions-hugo@v2
        with:
          hugo-version: "latest"

      - name: Build
        run: hugo --minify

      - name: Deploy
        uses: peaceiris/actions-gh-pages@v3
        if: ${{ github.ref == 'refs/heads/main' }}
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_branch: gh-pages
          publish_dir: ./public
```

**‼注意:** 你需要給你的repo打開自動化的讀寫權限以及選擇對外展示的Pages的branch，從而實現架設網站。

#### 如何調整Action的寫入權限

先打開Actions的寫入權限：
> Settings->Code and automation->Actions->General->
> 側邊頁->Workflow permissions->
> 把圓點選擇為Read and write permissions->按下Save儲存變更

接著是選擇你的掛載頁面的branch：
> Settings->Code and automation->Pages->側邊頁->
> Build and deployment->
> Branch->下拉把main改gh-pages->選擇Save儲存變更

#### 創建新站點

如果你打算在一個已經創建的空資料夾下創建網站資料，使用`hugo new site .` 進行創建基本的Hugo項目。（假設資料夾已經有東西，可使用`--force`來強制初始化`hugo new site . --force`）
若你還未有空的網站項目資料夾，可以使用 `hugo new site mywebsite` 命令，可以在`mywebsite`目錄下創建一个新的 Hugo 站點。

接下來，去下載[blowfish主題](https://blowfish.page/zh-cn/docs/installation/#%E4%B8%8B%E8%BD%BD-blowfish-%E4%B8%BB%E9%A2%98) 選擇你想使用的渠道，筆者用的是手動文件複製，也就是直接下載最新版的source_code並且解壓縮至 `./theme/blowfish`。

#### 設置主題的配置文件

你在的網站根目錄中，刪除 Hugo 自動生成的 `hugo.toml` 文件。取而代之的，我們會使用主題中存在的 `*.toml` 文件，將`./theme/blowfish/config/_defualt` 中擁有的相關後綴名文件，搬到網頁根目錄的 `./config/_default/` 目錄中。這將確保你的主題設置準確無誤，並且在此基礎上也能輕鬆地自定義相關主題。

 **‼注意: 如果項目中已經存在了 `module.toml` 文件，請不要覆蓋它！**

在你複製了這些文件之後，你的 config 目錄應該如下圖所示：

```shell
config/_default/
├─ hugo.toml
├─ languages.en.toml
├─ markup.toml
├─ menus.en.toml
├─ module.toml  # 通过 Hugo 模块安装
└─ params.toml
```

**‼重要:** 如果你沒有用 Hugo 的模塊安裝 Blowfish，那你必須要在 `hugo.toml` 文件中添加 `theme = "blowfish"`。（或你應該會在對應文件看到`# theme = "blowfish" # UNCOMMENT THIS LINE`，刪除注釋即可套用相關主題）

### 下一步

基本的 Blowfish 安裝已經完成。請繼續閱讀原文教學的 [入门指南](https://blowfish.page/zh-cn/docs/getting-started/)，來了解更多關於主題配置的相關內容。
我也會在之後撰寫對應的文章來介紹簡單的網頁設定。
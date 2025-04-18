---
  title: "EP.1 開始製作卡牌遊戲框架復刻的日誌記錄 feat.《星界英雄》"
  date: 2025-04-05
  tags: ["Godot", "CardGame", "ZodiacChampion"]
  series: ["ZodiacChampion"]
  series_order: 1
---

很高興獲得了來自《星界英雄》設計者帥狗的許可，
我可以使用Godot來將相關遊戲玩法電子化，並能使用遊戲框架和玩法使用在項目中。
我獲得的許可如下：

- 對相關學習專案寫日誌並發佈到個人網站
- 我承諾只能部分公開，因此局限於我認識的朋友。

條件如下：

- 禁止商用
- 禁止直接使用原發售卡牌的插畫。

同時，設計者帥狗也表示了希望能試玩，我也會很樂意分享給他（在完成該學習項目後）。

#### 開始理清相關遊戲規則

既然是要做一個卡牌遊戲，那我第一件事就是先把關鍵的核心，卡牌給還原出來。

而還原一個卡牌，那我必須要定義一張卡牌上面有的資訊。

在遊戲內雖然有三種不同的卡牌，但他們身上的資訊是差不多的。

#### 卡牌資訊

分為 星使牌、星術牌、星神牌
而它們都可以作為星術牌來使用，這代表它們的設計有一定程度的相似。

那一張卡牌有什麼資訊呢？

- 卡牌名稱
- 卡牌資訊：繪師、系列編號、種類（背景顏色）、星座圖標（或特定圖標）
- 卡牌屬性：（太陽/月亮）
- 卡牌效果

星使牌和星神牌是差不多的東西，它們共通點為

- 代價需求：激活該卡需要特定的代價 及其 數字

而星使牌更是多出了三個屬性

- 力量：攻擊判定時，若超出對方護盾則視為攻擊成功。
- 護盾：攻擊判定時，若受擊方該數值多於攻擊方的力量，則視為攻擊失敗（不計算傷害，但計算*攻擊事件）
- 傷害：用來決定該卡攻擊成功後的基礎傷害

#### 基於卡牌資訊進行遊戲資產的製作

理解了以上的資訊後，接下來就輪到繪製卡牌資訊的動作了。

我選擇對目前官網FB釋出的所有圖片進行二次創作，也就是
透過與原本卡牌完全不同的卡面、故事、卡牌名來還原原本的卡牌設計，既能還原原本的框架，也避免了使用版權圖造成的問題。

接下來的規劃會是繪製**卡牌屬性**、**十二星座**、**代價需求**等等的資訊相關圖標或者是卡牌的排版。

同時，我會希望將星術牌和星神牌的下方能力欄，像星使牌一樣貼上左上角的屬性，方便識別。

剩下的遊戲系統以及遊戲規則將會在繪製完成後，在下一篇的日誌進行補全。

![卡牌設計示例](godot-card-game-ep1/img_1.png)

#### 下集預告

預計會將目前的玩法視為 **常規玩法**，預計會先往製作常規玩法的**場地佈置**、**組牌需求**開始做起。

未來將會有更多的像是**回合判定**、**傷害計算**、**卡牌連鎖對應**、**卡牌資料**、**卡牌實例**等各種坑要填。

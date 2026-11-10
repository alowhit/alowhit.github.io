---
  title: "EP.2 Drawing the Basic Game Assets — Zodiac Champion"
  date: 2025-04-06
  tags: ["Godot", "CardGame", "ZodiacChampion"]
  series: ["ZodiacChampion"]
  series_order: 2
---

Today I am making card assets, focusing on reproducing the information displayed on the original game's cards.

First, I need to identify the basic information shown on screen. I will start with the elements used by 星使牌.

![Information displayed on a 星使牌 card](/godot-card-game-ep2/img_3.png)

After two hours of work, I produced these assets and adjusted the card UI framework that I will use later.

![Information placed on the card face](/godot-card-game-ep2/img_2.png)

I referred to the newer UI to add a frame for the Damage stat and adjust the placement of some information. For the overall style, however, I still want to recreate the older UI that I have available as a reference.

![A screenshot of the Godot editor](/godot-card-game-ep2/img_1.png)

I am running out of time today. Later, I will also add the information panels for **星術牌** and **星神牌**.

I would also like to try a holographic foil effect for card rarity. It is not a priority, so I will leave that shader for a later stage.

#### Next Time

I will probably write the basic **card information setup script** and standardize how the information is displayed. Then I will try recreating the game's cards one by one, building a **card database** around that goal.

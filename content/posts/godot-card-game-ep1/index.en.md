---
  title: "EP.1 Starting a Card Game Framework Recreation — Zodiac Champion"
  date: 2025-04-05
  tags: ["Godot", "CardGame", "ZodiacChampion"]
  series: ["ZodiacChampion"]
  series_order: 1
---

I am glad to have permission from the designer of *Zodiac Champion* (《星界英雄》), 帥狗, to adapt the gameplay into a digital project using Godot and use its framework and mechanics in this learning project.

The permission covers:

- Writing development logs about the learning project and publishing them on my personal website.
- Limited sharing of the project, restricted to friends I know.

The conditions are:

- No commercial use.
- No direct use of the illustrations from the commercially released cards.

The designer also said he would like to try it. I will be happy to share it with him once the learning project is finished.

#### Understanding the Rules

Since this is a card game, my first task is to recreate its core component: the cards.

To recreate a card, I need to define the information it contains. The game has three types of cards, but they share much of the same information.

#### Card Information

The three types are 星使牌, 星術牌, and 星神牌. All three can also be used as 星術牌, so their designs have some common requirements.

A card contains:

- Its name.
- General information: illustrator, set number, type or background color, and a zodiac or other specific icon.
- Its attribute: Sun or Moon.
- Its effects.

星使牌 and 星神牌 both have an activation cost, specifying the required resources and their quantities.

星使牌 have three additional stats:

- **Power:** an attack succeeds if this exceeds the opponent's Shield.
- **Shield:** if the defender's Shield exceeds the attacker's Power, the attack fails. It deals no damage, but still counts as an attack event.
- **Damage:** determines the base damage dealt by a successful attack.

#### Creating Assets from the Card Information

With this information understood, the next step is to draw the elements used to present it.

I chose to create new designs based on the card information shown in images released on the official Facebook page. The card faces, stories, and names will be completely different, while preserving the underlying design and framework without reusing the original card illustrations.

Next, I plan to draw icons for **card attributes**, the **twelve zodiac signs**, and **cost requirements**, and work on the card layout.

I also want to add an attribute symbol to the upper-left corner of the lower ability area on 星術牌 and 星神牌, as on 星使牌, to make them easier to identify.

Once the graphics are finished, I will cover the remaining systems and rules in the next log.

![Example card design](/godot-card-game-ep1/img_1.png)

#### Next Time

I plan to treat the current rules as the **standard format**, beginning with the **play area layout** and **deck-building requirements**.

There is still plenty to implement: **turn resolution**, **damage calculations**, **card chains and responses**, **card data**, and **card instances**.

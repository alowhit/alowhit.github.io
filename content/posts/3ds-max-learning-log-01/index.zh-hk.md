---
title: "3ds Max 學習記錄 01：課程整理與水波紋 Shader"
date: 2026-11-10T22:00:00+08:00
lastmod: 2026-11-10T22:00:00+08:00
summary: "整理 48 段教學的入口、工程與下載，記錄水波紋的四層材質結構，以及仍未完成的部分。"
categories: ["學習記錄"]
tags: ["3ds Max", "Arnold", "Shader"]
series: ["3ds Max Learning Log"]
series_order: 1
draft: false
---

這次把現有的 3ds Max 練習整理成[教學學習站](/learn/)，方便從效果預覽找到對應課程，再下載工程對照。**目前是階段成果，七項考核作業仍未全部完成，完整驗收為 0 / 7。**

## 從哪裡開始

- [按作業查看成果](/classroom/results.html)：火球、氣 Buff、刀光、雨滴、龍捲風、破碎和期末仿製，各自保留入口。
- [48 段原教學視頻下載](/classroom/video-downloads.html)：下載 MP4 後，可在課程頁選擇本機文件，配合時間定位按鈕學習。
- [水波紋課程](/learn/course05/#four-layer-grain)：查看目前的四層材質、渲染預覽、工程下載和參數來源。

刀光與破碎尚未授課；有工程或預覽的項目，也不代表已達到完整考核要求。

## 這次水波紋做了什麼

目前工程把顆粒與環形分支接入四層 **Composite**，再經過 **Gradient Ramp** 上色，最後送入 Arnold 材質的 **Emission Color**。另一個徑向 **Gradient Ramp** 接到 **Opacity**，控制邊緣的透明範圍。

可以先把三件事分開理解：

1. **Pattern**：先用黑白圖案決定環形和顆粒出現的位置。
2. **Color**：用 Gradient Ramp 把黑白值轉成藍色層次。
3. **Opacity**：用獨立遮罩讓外緣消失，避免看見方形平面。

### 已從原片讀到的數值

| Node / Parameter | Value | 用途 |
| --- | --- | --- |
| Cellular #15 / Size | 0.02 | 控制這一分支的顆粒尺寸 |
| Cellular #15 / Spread | 0.3 | 調整細胞與邊界的分佈 |
| Cellular #15 / Iterations | 3 | 設定 Fractal 細節層數 |
| Gradient Ramp #19 / Position 0 | RGB 0 / 16 / 44 | 深色端 |
| Gradient Ramp #19 / Position 50 | RGB 13 / 51 / 127 | 中間藍色 |
| Gradient Ramp #19 / Position 100 | RGB 175 / 240 / 255 | 亮色端 |
| Gradient Ramp #21 / Position 36 | White | 保留內側可見區域 |
| Gradient Ramp #21 / Position 83 | Black | 控制外側消失位置 |
| Gradient Ramp #21 / Interpolation | Ease Out | 改變色標之間的過渡曲線 |

這些數值對應課程頁中的原片時間證據。RGB 使用原片色標欄顯示值，不與色彩選擇器的 Display RGB 混用。

### 哪些仍是補充值

Gradient Ramp #16 / #17 的完整色標尚未讀到，目前使用 **0 Black、50 RGB 128 / 128 / 128、100 White** 作為補充。早期試過中點白色，顆粒會被沖淡，改回中灰後保留了較多細節。這是本次工程的調整，**不是老師已確認的數值**。

Composite #5 仍以徑向圖案暫代，尚未完整重建老師的 Waves / Swirl / Radial 分支。場景、Camera、燈光和 Animation 也未完成逐項對照。

## 如何核對工程

目前四層版本已保存、重新開啟，並輸出了黑白遮罩與藍色透明效果兩張實際 Arnold 渲染。這驗證了當前工程能運作，但不能證明它與老師完全一致。

打開課程頁的最新版 `.max` 後，先比較 Pattern，再看 Color，最後打開 Opacity。一次只檢查一個分支，會比同時改很多參數更容易看出差異。

## 下一步

補齊前置 Waves / Swirl 分支、核對其餘色標與 Composite 混合方式，再繼續場景、Camera 和 Animation。各項最新狀態以[成果目錄](/classroom/results.html)與對應課程頁為準。

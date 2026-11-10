---
title: "3ds Max 學習記錄 05：讀取保存的 Falloff 曲線"
date: 2026-11-11T01:34:30+08:00
lastmod: 2026-11-11T01:34:30+08:00
tags: ["3ds Max", "Arnold", "Falloff"]
series: ["3ds Max Learning Log"]
series_order: 5
draft: false
summary: "補齊源工程精確曲線參數，並核對雨滴04工程是否完整保留。"
categories: ["學習記錄"]
---

`Test4.max` 的四個 Falloff 共包含11個控制點。普通 MAXScript 路徑只能讀到引用和點數，沒有讀出坐標；改用本機 .NET SDK 的 `ICurve.GetPoint` 後，成功讀取保存的點位置、輸入／輸出手柄偏移及原生 Flags，沒有修改源文件。

Falloff #45 的左端點為 `(0, 0.40591394901275635)`，輸出手柄偏移為 `(0.17578125, 0.5940860509872437)`，因此手柄位置為 `(0.17578125, 1)`。這是源工程保存狀態，不代表原片每個中間階段。對101個輸入點獨立計算 Bézier，與 Max 的最大差異約為0.00000144。

接著重開雨滴04工程，用相同 SDK 讀取並比較：11個點、手柄偏移和 Flags 全部一致，四條曲線各101個採樣值的差異均為0。兩個文件的原始雜湊保持不變。這證明這些曲線完整保留，並不等於整套雨滴作業通過。

[查看精確參數表與曲線圖](/learn/course08/#drop-exact-mixcurves)，或[查看雨滴04一致性證據](/learn/course08/#rain04-curve-equivalence)。完整建模歷史、原片中途修改、粒子參數及最終視覺考核仍未完成。

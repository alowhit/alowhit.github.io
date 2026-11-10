---
title: "3ds Max 學習記錄 06：區分房間遮擋與 UV 接縫"
date: 2026-11-11T01:55:00+08:00
lastmod: 2026-11-11T01:55:00+08:00
tags: ["3ds Max", "Arnold", "UV"]
series: ["3ds Max Learning Log"]
series_order: 6
draft: false
summary: "四方向診斷與06工程Render Setup讀回。"
categories: ["學習記錄"]
---

在氣 Buff 06工程的第45幀，讓相機繞Target轉到0°、90°、180°及270°，共渲染四個方向。保留Room時，側面視角被房間外牆遮住；這些畫面無法用來判斷UV接縫。

臨時隱藏Room後，以同樣設定再渲染四張圖。此幀、640×480預覽下未見明顯的竪向條紋斷裂。這不是全部動畫幀或老師手工UV流程的驗收。診斷後恢復Room及原相機，06源文件雜湊未變。

另外讀回了06的Render Setup：Arnold、Camera (AA) 3、Adaptive Sampling Off、GPU rendering False、Threads 8、640×480、30 fps及0–100幀。發現Save File關閉且Output Filename為空；已有101幀動畫是腳本指定路徑輸出的，原生工程輸出配置仍需補齊。

[查看四方向對照與操作說明](/learn/course57/#gasbuff-multiview06)。下一步補原生輸出設定，再繼續其他幀與最終畫質檢查；整份作業尚未完成。

---
title: "3ds Max Learning Log 04: Fade Handles and Matching Versions"
date: 2026-11-11T00:55:24+08:00
lastmod: 2026-11-11T00:55:24+08:00
tags: ["3ds Max", "Arnold", "Animation"]
series: ["3ds Max Learning Log"]
series_order: 4
draft: false
summary: "Completing the version 05 animation and checking version 06 fade handles against source evidence."
categories: ["Learning Logs"]
---

The Gas Buff version 05 animation is complete: 101 frames from 0 through 100, at 640×480 and 30 fps, with the MP4 decoded in full. The main assignment page pairs that animation with its version 05 project. Version 06 changes the fade handles and currently has four test renders; the version 05 video is not a version 06 preview.

## Matching Keys Does Not Guarantee Matching Motion

The source keeps black at Frame 15, white at Frame 30, and black at Frame 70. The teacher then extends Frame 70's incoming handle to the left. The old project used default Slow tangents: its normalized value at Frame 45 was about 0.68, while the source curve was approximately 0.31. Matching the endpoints alone left a visible timing difference.

The local Color Correction uses a four-component `bezier_rgba` controller. Version 06 preserves that controller and its keys, adjusts the RGB incoming handles, and keeps Alpha at 1 throughout. Writing the first normalized candidate did not produce the expected native curve, so that failed candidate was not saved as a deliverable. A later candidate was checked in Max, saved separately, reopened, and sampled across 101 frames.

Against approximate samples from the compressed source screenshot, RMSE fell from about 0.238 to 0.0023. This supports the estimated curve; it does not establish the teacher's undisplayed handle precision. The filename therefore retains `ESTIMATED`.

[View the version 05 animation, version 06 project, and matching-frame comparisons](/learn/course57/#fade06-delivery). The [source handle evidence](/learn/course57/#fade-handle-source) shows the separate RGB adjustments.

## Remaining Work

Version 06 still needs a full animation and visual review. Camera and scene matching, broad translucent bands, and seams from other angles remain unresolved. The [18-item assessment evidence table](/classroom/gasbuff-assessment-evidence.html) retains those gaps without awarding marks. More downloadable versions do not mean the assessment has passed.

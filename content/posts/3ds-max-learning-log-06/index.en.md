---
title: "3ds Max Learning Log 06: Separating Room Occlusion from UV Seams"
date: 2026-11-11T01:55:00+08:00
lastmod: 2026-11-11T01:55:00+08:00
tags: ["3ds Max", "Arnold", "UV"]
series: ["3ds Max Learning Log"]
series_order: 6
draft: false
summary: "Four-angle diagnostics and a render-output gap in revision 06."
categories: ["Learning Logs"]
---

At frame 45 of Gas Buff revision 06, I rendered four camera azimuths: 0°, 90°, 180°, and 270°. With Room visible, the side views were blocked by its exterior walls. Those images could not establish whether the UV seam was visible.

I temporarily hid Room and rendered the same four views again. No obvious vertical stripe discontinuity was visible at this frame and the 640×480 preview resolution. This does not verify every animation frame or reproduce the teacher’s complete manual UV workflow. Room and the original camera were restored afterward; the source MAX file hash remained unchanged.

The revision 06 Render Setup readback also confirmed Arnold, Camera (AA) 3, Adaptive Sampling Off, GPU rendering False, Threads 8, 640×480, 30 fps, and frames 0–100. It exposed an output gap: Save File is off and Output Filename is empty. The existing 101-frame animation was exported using script-supplied paths; the saved scene still needs its native output settings completed.

[View the four-angle comparison and instructions](/learn/course57/#gasbuff-multiview06). Next comes the native output setup, followed by further frame and final-quality checks. The assignment remains incomplete.

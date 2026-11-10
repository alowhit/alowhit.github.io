---
title: "3ds Max Learning Log 05: Reading the Saved Falloff Curves"
date: 2026-11-11T01:34:30+08:00
lastmod: 2026-11-11T01:34:30+08:00
tags: ["3ds Max", "Arnold", "Falloff"]
series: ["3ds Max Learning Log"]
series_order: 5
draft: false
summary: "Extracting exact source curve values and checking that Rain04 preserves them."
categories: ["Learning Logs"]
---

Four Falloff maps in `Test4.max` contain 11 control points. The ordinary MAXScript path exposed their references and point counts, but did not expose their coordinates. The installed .NET SDK provided `ICurve.GetPoint`, allowing the saved positions, incoming and outgoing handle offsets, and raw flags to be read without modifying the file.

For Falloff #45, the left point is `(0, 0.40591394901275635)`. Its outgoing offset is `(0.17578125, 0.5940860509872437)`, placing that handle at `(0.17578125, 1)`. This is the saved source state, not a claim about every intermediate frame of the lesson. An independent Bézier calculation across 101 inputs differed from Max by at most approximately 0.00000144.

The Rain04 project was then reopened and read through the same SDK. All 11 points, handle offsets and flags matched the source, and all four sets of 101 samples had zero difference. Both files retained their original hashes. This verifies preservation of these curves, not the entire rain assignment.

[Open the exact parameter tables and curve plots](/learn/course08/#drop-exact-mixcurves), or [review Rain04 equivalence evidence](/learn/course08/#rain04-curve-equivalence). Complete modeling history, intermediate source edits, particle parameters and final visual assessment remain unfinished.

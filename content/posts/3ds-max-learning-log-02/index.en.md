---
title: "3ds Max Learning Log 02: Impact Ripples and Backdrop Modeling"
date: 2026-11-10T23:30:00+08:00
lastmod: 2026-11-10T23:30:00+08:00
summary: "Rendering the 121-frame rain preview and building a three-panel backdrop, with verification results and remaining work."
categories: ["Learning Logs"]
tags: ["3ds Max", "Arnold", "Particle Flow"]
series: ["3ds Max Learning Log"]
series_order: 2
draft: false
---

Two more results can now be inspected directly: the complete rain version 04 preview and the Course 10 backdrop stages. **Full assessment acceptance remains at 0 / 7. These are intermediate results.**

## Rain: Matching the Preview to Its Project

The main project already included impact ripples, but the website still showed the version 03 movie without them. Version 04 has now been rendered from Frame 0 through 120: 121 frames at 30 fps and 640 × 480, lasting about 4.03 seconds. Every PNG was checked for readability, the MP4 was decoded in full, and SHA-256 hashes link the movie to its source MAX.

[Watch the updated animation and download the project](/learn/course08/#rain-impact-animation). After a drop hits the surface, Collision Spawn creates a ring. Shape Instance uses Event Start to play the Torus expansion and thinning animation. This is a supplemental geometry method, not a value-for-value recreation of the teacher's procedural shader. The rings remain faint in the wide shot; final image quality, particle settings, and the teacher's ring shader still need matching.

## Scene Setup: Building the Backdrop

Reviewing the start of Course 10 confirmed the initial Plane settings: Length 300 cm, Width 190 cm, Length Segs 3, and Width Segs 1. The teacher then converts it to Editable Poly and folds it into a floor, back wall, and top panel.

[See the source steps and editable backdrop projects](/learn/course10/#backdrop-native). New files cover the flat plane, raised far vertices, folded backdrop, and an integrated version 09 tornado scene. After saving and reopening, the backdrop's eight world-space vertices and three quadrilateral faces were read back and checked. Actual renders were also produced.

The starting dimensions and segment counts are confirmed from the video. The folded vertex coordinates remain reconstruction choices based on the images. The current camera, material, and lights are for structural inspection: the result is dark, and the top panel obscures part of the view. Exact source movements, any chamfer operation, and final camera and lighting settings remain unverified.

## Remaining Work

- Rain: procedural ring shaders, complete modeling and UV steps, final image quality, and assessment checks.
- Tornado: backdrop and camera matching, UV and animation settings, and the remaining particle and FumeFX course work.
- Other assignments retain their own [results and unfinished-work lists](/classroom/results.html). These two updates do not establish completion of the full course.

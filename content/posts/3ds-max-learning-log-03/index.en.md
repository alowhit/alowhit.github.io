---
title: "3ds Max Learning Log 03: Gas Buff UV Seams and Assessment Evidence"
date: 2026-11-11T00:04:00+08:00
lastmod: 2026-11-11T00:25:11+08:00
summary: "Separating mesh holes from texture seams, keeping diagonal stripes, and mapping the 18 Gas Buff assessment requirements."
categories: ["Learning Logs"]
tags: ["3ds Max", "Arnold", "UV", "Particle Flow"]
series: ["3ds Max Learning Log"]
series_order: 3
draft: false
---

The Gas Buff already has particles and a Bloom animation, but the cylinder stripes still need seam work. Version 03 is a separate study derived from version 02, with controlled comparisons at Frames 35, 45, and 60 using the same camera, exposure, and Bloom. Full assessment acceptance remains incomplete; three frames do not verify an entire animation.

## A Seam Does Not Necessarily Mean a Hole

The earlier inspection found no vertical opening in the cylinder geometry, while the UV boundary differs by one unit in U. That is a normal boundary for an unwrapped cylinder. After texture rotation, however, its two sides may sample different positions in the gradient. Adding more Sides does not automatically fix that mismatch.

[See the periodic UV experiment and editable project](/learn/course57/#periodic-uv). The new Channel 2 uses `U2 = U1 - 0.625 × V1`. The stripe uses Map Channel 2, U Tiling 4, W Angle 0, and U Mirror. The UV shape supplies the diagonal direction; one circuit crosses two complete mirrored cycles. Channel 1 remains available to the original height fade and color maps. This is a supplemental design that slightly changes stripe density, not the teacher's original settings.

The first positive shear reversed the spiral. Comparing actual renders revealed the mistake, so it was changed to negative shear, saved, reopened, and rendered again. Passing a numerical check still requires a visual check.

## Tracking All 18 Assessment Requirements

The [Gas Buff evidence table](/classroom/gasbuff-assessment-evidence.html) maps C3–C16 and C25–C28 to existing records and remaining work. Particle speed, direction, lifetime, and Bloom have native project evidence. Supplemental values, estimated curves, camera matching, and final image quality still need work. No marks have been self-awarded.

At the initial writing, the main preview used version 02 and version 03 had only three comparison frames. The update below records the subsequent full animation and version 04 revision. Other viewing angles and remaining material layers still need checks.

## Update: Full Version 03 Animation and Exact Scale in Version 04

Version 03 now has all 101 frames from 0 through 100 rendered at 640×480 and 30 fps. The MP4 was decoded in full, and the main assignment page pairs it with the version 03 project. Sixteen sampled frames were visually reviewed. Early framing remains small, broad translucent bands still need work, and alternate-view seam checks and full visual acceptance remain incomplete.

The source video's Scale key dialogs at 27:34 and 27:40 show more precise values: Frame 15 has X/Y 35.597% and Z 8.405%; Frame 70 has X/Y 109.643% and Z 144.879%. Version 04 applies those displayed values. It was saved, reopened, checked across 101 Scale samples, and rendered at four test frames. The supplemental Frame 0 hold and approximate Slow tangents remain; version 04 does not yet have a full animation.

[View the version guide, version 03 animation, and latest version 04 project](/learn/course57/#gasbuff-revisions). Original screenshots and editing steps are in the [Scale key evidence section](/learn/course57/#scale-exact-source). Matching endpoints does not prove that every intermediate frame matches. Full assessment acceptance remains incomplete.

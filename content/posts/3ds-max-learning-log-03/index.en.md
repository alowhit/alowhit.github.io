---
title: "3ds Max Learning Log 03: Gas Buff UV Seams and Assessment Evidence"
date: 2026-11-11T00:04:00+08:00
lastmod: 2026-11-11T00:04:00+08:00
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

The assignment page still uses the complete version 02 animation as its main preview. Version 03 is a separate repair study. Its full Frame 0–100 animation, other viewing angles, and remaining material layers must be checked before it can replace the main project.

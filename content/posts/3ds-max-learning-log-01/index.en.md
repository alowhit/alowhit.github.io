---
title: "3ds Max Learning Log 01: Organizing the Courses and Building a Ripple Shader"
date: 2026-11-10T22:00:00+08:00
lastmod: 2026-11-10T22:00:00+08:00
summary: "Organizing 48 tutorial videos, project downloads, and a four-layer ripple material, with a clear account of what remains unfinished."
categories: ["Learning Logs"]
tags: ["3ds Max", "Arnold", "Shader"]
series: ["3ds Max Learning Log"]
series_order: 1
draft: false
---

> This log records the project 02 stage. The later [project 03 branch study](/learn/course05/#waves-swirl-base) uses actual Waves / Swirl / Radial nodes, with numerical and visual matching still unfinished.


The existing 3ds Max exercises are now organized into a [learning site](/learn/), connecting effect previews with lessons and downloadable projects. **These are work-in-progress results: none of the seven assessment assignments has passed full acceptance yet (0 / 7).**

## Where to Start

- [Results by assignment](/classroom/results.html): separate entries for Fireball, Gas Buff, Slash, Rain, Tornado, Fracture, and the final recreation project.
- [Download the 48 original tutorial videos](/classroom/video-downloads.html): download an MP4, select it locally on its lesson page, and use the timestamp buttons to follow the source.
- [Ripple lesson](/learn/course05/#four-layer-grain): the current four-layer material, render previews, project downloads, and parameter evidence.

Slash and Fracture have not been taught yet. An available project or preview does not mean that an assignment meets every assessment requirement. The linked course pages are currently in Chinese, with English parameter names.

## What Changed in the Ripple Material

The current project connects grain and ring branches through a four-layer **Composite**, colors the result with **Gradient Ramp** maps, and sends it to the Arnold material's **Emission Color**. A separate radial **Gradient Ramp** drives **Opacity**, controlling the transparent outer edge.

It helps to separate three jobs:

1. **Pattern:** use a grayscale map to determine where rings and grain appear.
2. **Color:** use Gradient Ramp to turn grayscale values into shades of blue.
3. **Opacity:** use a separate mask to hide the outer edge so the square plane is not visible.

### Values Read from the Source Video

| Node / Parameter | Value | Purpose |
| --- | --- | --- |
| Cellular #15 / Size | 0.02 | Controls grain size in this branch |
| Cellular #15 / Spread | 0.3 | Adjusts the distribution of cells and boundaries |
| Cellular #15 / Iterations | 3 | Sets the number of Fractal detail iterations |
| Gradient Ramp #19 / Position 0 | RGB 0 / 16 / 44 | Dark end |
| Gradient Ramp #19 / Position 50 | RGB 13 / 51 / 127 | Mid-blue |
| Gradient Ramp #19 / Position 100 | RGB 175 / 240 / 255 | Bright end |
| Gradient Ramp #21 / Position 36 | White | Keeps the inner region visible |
| Gradient Ramp #21 / Position 83 | Black | Sets where the outer region disappears |
| Gradient Ramp #21 / Interpolation | Ease Out | Changes the transition curve between flags |

The lesson page links these values to source-video timestamps. RGB values follow the source's gradient flag readout and are not mixed with the color picker's Display RGB values.

### Values That Are Still Supplemented

The complete flags for Gradient Ramp #16 / #17 have not been read from the source. The current supplement is **0 Black, 50 RGB 128 / 128 / 128, and 100 White**. An earlier white midpoint washed out the grain; changing it to mid-gray preserved more detail. This is a reconstruction adjustment, **not a verified teacher setting**.

Composite #5 still uses a radial placeholder instead of the teacher's complete Waves / Swirl / Radial branch. Scene setup, Camera, lighting, and Animation have not been fully matched either.

## Checking the Project

The four-layer version has been saved, reopened, and rendered in Arnold as both a grayscale mask and a blue transparent effect. This confirms that the current project works, but does not establish an exact match to the teacher's result.

After opening the latest `.max` from the lesson page, compare Pattern first, then Color, and finally enable Opacity. Checking one branch at a time makes the differences easier to understand than changing many parameters at once.

## Next Steps

Rebuild the earlier Waves / Swirl branch, verify the remaining flags and Composite blending settings, and continue matching the scene, Camera, and Animation. Check the [results directory](/classroom/results.html) and each lesson page for the latest status.

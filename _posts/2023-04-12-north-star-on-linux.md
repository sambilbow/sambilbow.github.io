---
layout: post
title: northstar on linux
date: 2023-04-12 11:12:00-0400
description: towards an open-source workflow
tags: open-source linux augmented-reality
categories: wip
related_posts: false
---

The past few weeks have been spent getting familiar with a North Star (NS) headset workflow on Linux. As part of CoMuse I hope to move towards a fully open-source stack for multi-user musical AR experience. Instructions are for Arch-based systems, e.g. EndeavourOS, and assumes a Wayland compositor (rather than X11).

**Current Windows Workflow**

North Star → Project Esky → Unity → Unity Scene

**Proposed Linux Workflow**

North Star → OpenXR → Monado → Application


## OpenXR (Open Standard XR API)
- openxr-git

## Monado (OpenXR Runtime for GNU/Linux)
- monado-git

## Ultraleap (Hand Tracking)
📄 [Linux Documentation](https://docs.ultraleap.com/linux/)

Ultraleap have released their Gemini V5 tracking software as a beta for Ubuntu 22.04 LTS. However, the binaries are still accessible via their repository for non-Debian Linux systems. The repository links are provided below for those not on Debian-based systems:
- [⬇️](https://repo.ultraleap.com/apt/pool/main/u/ultraleap-hand-tracking-service/ultraleap-hand-tracking-service_5.6.3.0-18a4db52-1.0_amd64.deb) `ultraleap-hand-tracking-service`  - a background service that attaches to Ultraleap devices.
- [⬇️](https://repo.ultraleap.com/apt/pool/main/u/ultraleap-hand-tracking-control-panel/ultraleap-hand-tracking-control-panel_684937.deb) `ultraleap-hand-tracking-control-panel`  - a GUI application that shows cameras & info.
- [⬇️](https://repo.ultraleap.com/apt/pool/main/o/openxr-layer-ultraleap/openxr-layer-ultraleap_1.3.1_amd64.deb) `openxr-layer-ultraleap`  - an OpenXR layer that allows Ultraleap devices connect at the API layer.

Unarchive the `.deb` from each repository, then do the same with the `data.tar.xz` inside (you can ignore `control.tar.xz`, this only contains meta-information about the package), and place all sub-directory files in their respective folders on your operating system using `sudo mv [file path] [destination path]`.

A quirk of running North Star on Linux is that the UVC

## Intel RealSense (6DoF Tracking)

## Uploading sketches to the North Star Integrator
- Arduino IDE
- North-Star-Integrator [Sketches](https://github.com/sambilbow/North-Star-Integrator/tree/master/firmware/ExampleSketches)

<!-- **EndeavourOS**

`yay -S openxr-git monado-git` -->

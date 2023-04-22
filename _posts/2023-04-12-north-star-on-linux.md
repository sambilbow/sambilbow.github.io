---
layout: post
title: <img id="emoji" src="/assets/img/emoji/collabora.png"> northstar on linux [wip]
seo_title: northstar on linux [wip]
date: 2023-04-12 11:12:00-0400
description: towards an open-source workflow
tags: open-source linux augmented-reality
categories: wip
related_posts: false
---
## Summary
---
The past few weeks have been spent getting familiar with a North Star (NS) headset workflow on Linux. As part of [CoMuse](/projects/comuse/) I hope to move towards a fully open-source stack for multi-user musical AR experience. Instructions are for [Arch-based systems](https://wiki.archlinux.org/), e.g. [EndeavourOS](https://endeavouros.com/), and assumes a [Wayland compositor](https://wiki.archlinux.org/title/wayland#Compositors), rather than X11, e.g. [`kwin_wayland`](https://community.kde.org/KWin/Wayland).

**Current Windows Workflow**

North Star → Project Esky → Unity → Unity Scene

**Proposed Linux Workflow**

North Star → OpenXR → Monado → Application

<br>

## Installation
---
<h3><img id="emoji" src="/assets/img/emoji/oxr.webp"> OpenXR (Open Standard XR API)</h3>

Download, build, and install `openxr-git` from the [AUR](https://aur.archlinux.org/packages/monado-git), i.e. `yay -S monado-git`
 
<br>
<h3><img id="emoji" src="/assets/img/emoji/collabora.png"> Monado (OpenXR Runtime for GNU/Linux)</h3>

- Download, build, and install `monado-git` from the [AUR](https://aur.archlinux.org/packages/openxr-git), i.e. `yay -S openxr-git`
- Make sure you Monado is set as your active OpenXR runtime. Check via the environment variable: `echo $XR_RUNTIME_JSON`. If there is no output, follow [these](https://monado.freedesktop.org/getting-started.html#selecting-the-monado-runtime-for-openxr-applications) instructions.

- Set `~/.config/monado/config_v0.json` to the following: 
{% gist 3b7b257b535b3dd6fa7b53ad7e453ed0 %}

- Set `~/.config/monado/NorthStarCalibration.json` to the following:
{% gist 91e1f794a6c757aa368c17ee8e01a20e %}






<br>
<h3><img id="emoji" src="/assets/img/emoji/ul_wave.webp"> Ultraleap (Hand Tracking)</h3>

As written in the [Linux documentation](https://docs.ultraleap.com/linux/), Ultraleap have released their Gemini V5 tracking software as a beta for Ubuntu 22.04 LTS. However, the files are accessible via their repository for non-Debian Linux systems. I have created a [meta-package <img id="emoji" src="/assets/img/emoji/arch.webp">](https://aur.archlinux.org/packages/ultraleap-hand-tracking) for all three required packages below on the `AUR`. It can be installed via `yay -S ultraleap-hand-tracking` and accepting default options when prompted. 

Here are the individual packages, with links to their official Debian repository location, and their `AUR` counterpart:
- [:arrow_down_small:](https://repo.ultraleap.com/apt/pool/main/u/ultraleap-hand-tracking-service/ultraleap-hand-tracking-service_5.6.3.0-18a4db52-1.0_amd64.deb) [<img id="emoji" src="/assets/img/emoji/arch.webp">](https://aur.archlinux.org/packages/ultraleap-hand-tracking-service) `ultraleap-hand-tracking-service` - a background service that attaches to Ultraleap devices.
- [:arrow_down_small:](https://repo.ultraleap.com/apt/pool/main/u/ultraleap-hand-tracking-control-panel/ultraleap-hand-tracking-control-panel_684937.deb) [<img id="emoji" src="/assets/img/emoji/arch.webp">](https://aur.archlinux.org/packages/ultraleap-hand-tracking-control-panel) `ultraleap-hand-tracking-control-panel` - a GUI application that shows cameras & info.
- [:arrow_down_small:](https://repo.ultraleap.com/apt/pool/main/o/openxr-layer-ultraleap/openxr-layer-ultraleap_1.3.1_amd64.deb) [<img id="emoji" src="/assets/img/emoji/arch.webp">](https://aur.archlinux.org/packages/openxr-layer-ultraleap) `openxr-layer-ultraleap` - an OpenXR layer that allows Ultraleap devices connect at the API layer.

If you don't want to use the `AUR`, unarchive the `.deb` from each repository, then do the same with the `data.tar.xz` inside (you can ignore `control.tar.xz`, this only contains meta-information about the package). Place all sub-directory files in their respective folders on your operating system using `sudo mv [file path] [destination path]`.

<br>
<h3><img id="emoji" src="/assets/img/emoji/intel.png"> RealSense (6DoF Tracking)</h3>
`librealsense` is installed as part of `monado-git`, nothing to do here.

<br>
<h3><img id="emoji" src="/assets/img/emoji/arduino.png"> Arduino (Firmware)</h3>
1. Download, build, and install `arduino` from the `community` repository, i.e. `yay -S arduino`
2. Download the Linux compatible `North-Star-Integrator` [sketches](https://github.com/sambilbow/North-Star-Integrator/tree/master/firmware/ExampleSketches)

<br>

## Running Demos
---

### Setting Environment Variables
If you want [direct-mode](https://monado.freedesktop.org/direct-mode.html), you have to use an X11 compositor, its not currently supported on Wayland or Xwayland. That said, I wanted to use Wayland because :shrug:, I'm also used to extended-mode from the Unity Windows workflow so lack of direct-mode doesn't bother me right now. Either way, you will need to set the following environment variables in your shell config, this guide assumes `zsh`, and therfore `~/.zshrc`.

```zsh
# Set path to North Star calibration file.
export NS_CONFIG_PATH=~/.config/monado/NorthStarCalibration.json

# Keep Monado open even if no apps running.
export XRT_COMPOSITOR_DISABLE_DEFERRED=true

# Force an X11 window, thus causing Xwayland.
export XRT_COMPOSITOR_FORCE_XCB=1

# Fullscreen variable for X11/Xwayland.
export XRT_COMPOSITOR_XCB_FULLSCREEN=1
```

After setting these variables, either restart your terminal or run `exec zsh`.

### Hardware
1. Plug in your North Star via USB 2.0 (either use a hub or a motherboard port, depending on whether or not you have a 2.0 port). Using Ultraleap devices through USB 3 on Linux is not currently supported due to driver shenanigans. [Source: <img src="/assets/img/monado-discord.png">  <img id="emoji" src="/assets/img/emoji/discord.png">](https://discord.com/channels/994213697490800670/1061452346686713957/1062331957456928848)
2. Plug in your North Star via DisplayPort to your graphics card.
3. Force `portReset()` on your North Star, via holding down the circle and dot buttons for 5 seconds. This power cycles your USB 3 header sensors (Stereo IR 170 and Intel T261) and ensures that they enumerate properly.
4. Check that the sensors are working correctly
   1. 


<br>

<h3><img id="emoji" src="/assets/img/emoji/stardust.gif"> StardustXR</h3>
`tba`


<br>

## Uploading Sketches
---
On Linux, you may have to add yourself to the usergroup that `/dev/ttyACM0` (the Arduino Leonardo's serial port) is part of if you are receiving errors uploading sketches.

1. Run `stat /dev/ttyACM0` in a terminal
2. Note the user group that the serial port is assigned to, e.g. `dialout` or `plugdev`
3. Add your user to this group with `sudo usermod -a -G [group] [username]` 
 4. `sudo` run command as superuser 
 5. `usermod` modify user attributes
 6.  `-a` append 
 7.  `-G` group
4. Add the `../libraries/SX1508` folder to your Arduino library directory (default on Linux: `/home/[user]/Arduino/libraries`)
   - `../libraries/SX1508/src/util/sx1508_registers.h` has been renamed to `SX1508_registers.h` in this repo because I was getting errors when I tried to access this file in the Arduino IDE on Linux, I believe this was because of [UNIX case-sensitivity](https://en.wikipedia.org/wiki/Case_sensitivity).
5. Open a sketch in Arduino IDE
6. Install any additionally required libraries (on Linux I needed to add the `Keyboard` library)
7. Set the correct Port and Board in `Tools > `
8. Verify and Upload the sketch.
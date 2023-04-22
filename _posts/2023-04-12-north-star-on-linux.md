---
layout: post
title: <img id="emoji" src="/assets/img/emoji/collabora.png"> northstar on linux
seo_title: 🐧 northstar on linux
date: 2023-04-12 11:12:00-0400
description: towards an open-source workflow for AR musical instruments
tags: open-source linux augmented-reality
related_posts: false
img: /assets/projects/04-postdoctoral/comuse/banner.png
---
## Summary
---
The past few weeks have been spent getting familiar with a North Star (NS) headset workflow on Linux. As part of [CoMuse](/projects/comuse/) I hope to move towards a fully open-source stack for multi-user musical AR experience. Here's a bunch of instructions on how to get started with North Star on Linux. Instructions are for [Arch-based systems](https://wiki.archlinux.org/), e.g. [EndeavourOS](https://endeavouros.com/), and assumes a [Wayland compositor](https://wiki.archlinux.org/title/wayland#Compositors), rather than X11, e.g. [`kwin_wayland`](https://community.kde.org/KWin/Wayland). Also familiarity with a terminal emulator, e.g. `alacritty`.

**Current Windows Workflow**

North Star → Project Esky → Unity → Unity Scene

**Proposed Linux Workflow**

North Star → OpenXR → Monado → Application

<br>

## Installation for Robots
---

Hey there! If you're feeling adventurous and trust me enough to run a bash script, then boy oh boy do I have a treat for you. I've created a script that will get you started with North Star on Linux.

Now, I know what you're thinking. "Why on earth would I trust some random person on the internet with access to my terminal?" Well, let me tell you, friend. You can trust me because... uh... it was partially created by ChatGPT, a highly advanced, eloquent and benevolent artificial intelligence programmed to assist and guide humans with their tasks. ChatGPT is great, in fact, ChatGPT wrote this paragraph! So yeah, thats why you can trust ~~it~~ me... Yeah, let's go with that.

So, if you're feeling stupid, go ahead and run this command in your terminal:

```shell
curl -sS https://www.sambilbow.com/assets/code/ns-monado.sh | bash && leapctl eula
```

and skip to [Getting Started](#getting-started)

***I take no responsibility if your computer suddenly gains sentience and starts plotting world domination.***

<br>

## Installation for Humans
---
<h3><img id="emoji" src="/assets/img/emoji/oxr.webp"> OpenXR (Open Standard XR API)</h3>

Download, build, and install `openxr-git` from the [AUR](https://aur.archlinux.org/packages/openxr-git), i.e. `yay -S openxr-git`
 
<br>
<h3><img id="emoji" src="/assets/img/emoji/collabora.png"> Monado (OpenXR Runtime for GNU/Linux)</h3>

Download, build, and install `monado-git` from the [AUR](https://aur.archlinux.org/packages/monado-git), i.e. `yay -S monado-git`

<br>
<h3><img id="emoji" src="/assets/img/emoji/ul_wave.webp"> Ultraleap (Hand Tracking)</h3>

As written in the [Linux documentation](https://docs.ultraleap.com/linux/), Ultraleap have released their Gemini V5 tracking software as a beta for Ubuntu 22.04 LTS. However, the files are accessible via their repository for non-Debian Linux systems. I have created a [meta-package <img id="emoji" src="/assets/img/emoji/arch.webp">](https://aur.archlinux.org/packages/ultraleap-hand-tracking) for all three required packages below on the `AUR`. It can be installed via `yay -S ultraleap-hand-tracking` and accepting default options when prompted. 

Here are the individual packages, with links to their official Debian repository location, and their `AUR` counterpart:
- [:arrow_down_small:](https://repo.ultraleap.com/apt/pool/main/u/ultraleap-hand-tracking-service/ultraleap-hand-tracking-service_5.6.3.0-18a4db52-1.0_amd64.deb) [<img id="emoji" src="/assets/img/emoji/arch.webp">](https://aur.archlinux.org/packages/ultraleap-hand-tracking-service) `ultraleap-hand-tracking-service` - a background service that attaches to Ultraleap devices.
- [:arrow_down_small:](https://repo.ultraleap.com/apt/pool/main/u/ultraleap-hand-tracking-control-panel/ultraleap-hand-tracking-control-panel_684937.deb) [<img id="emoji" src="/assets/img/emoji/arch.webp">](https://aur.archlinux.org/packages/ultraleap-hand-tracking-control-panel) `ultraleap-hand-tracking-control-panel` - a GUI application that shows cameras & info.
- [:arrow_down_small:](https://repo.ultraleap.com/apt/pool/main/o/openxr-layer-ultraleap/openxr-layer-ultraleap_1.3.1_amd64.deb) [<img id="emoji" src="/assets/img/emoji/arch.webp">](https://aur.archlinux.org/packages/openxr-layer-ultraleap) `openxr-layer-ultraleap` - an OpenXR layer that allows Ultraleap devices connect at the API layer.

If you don't want to use the `AUR`, unarchive the `.deb` from each repository, then do the same with the `data.tar.xz` inside (you can ignore `control.tar.xz`, this only contains meta-information about the package). Place all sub-directory files in their respective folders on your operating system using `sudo mv [file path] [destination path]`.

> Run `leapctl eula` after installing, to accept the Ultraleap EULA.

<br>
<h3><img id="emoji" src="/assets/img/emoji/intel.png"> RealSense (6DoF Tracking)</h3>
Download, build, and install `librealsense` and `libuvc` from the [AUR](https://aur.archlinux.org/packages/librealsense), i.e. `yay -S librealsense libuvc`

<br>
<h3><img id="emoji" src="/assets/img/emoji/arduino.png"> Arduino (Firmware)</h3>
Download, build, and install `arduino` from the `community` repository, i.e. `yay -S arduino`


<br>

## Monado Configuration
---
- Make sure you Monado is set as your active OpenXR runtime. Check via the environment variable: `echo $XR_RUNTIME_JSON`. If there is no output, follow [these](https://monado.freedesktop.org/getting-started.html#selecting-the-monado-runtime-for-openxr-applications) instructions.

- Set `~/.config/monado/config_v0.json` to the [following](https://gist.github.com/sambilbow/3b7b257b535b3dd6fa7b53ad7e453ed0): 
{% gist 3b7b257b535b3dd6fa7b53ad7e453ed0 %}

- Set `~/.config/monado/NorthStarCalibration.json` to the [following](https://gist.github.com/sambilbow/91e1f794a6c757aa368c17ee8e01a20e), replacing the `uv_to_rect` attributes with your own [V2 calibration results](https://docs.projectnorthstar.org/calibration/2d-calibration):
{% gist 91e1f794a6c757aa368c17ee8e01a20e %}


### Setting Environment Variables
If you want [direct-mode](https://monado.freedesktop.org/direct-mode.html), you have to use an X11 compositor with Monado, its not currently supported on Wayland or Xwayland. That said, I wanted to use Wayland because :shrug:, I'm also used to extended-mode from the Unity Windows workflow so lack of direct-mode doesn't bother me right now. Either way, you will need to set the following Monado environment variables in your shell configuration file, this guide assumes `zsh`, and therfore `~/.zshrc`. Feel free to add them with this command: 
```zsh
echo '
export NS_CONFIG_PATH=~/.config/monado/NorthStarCalibration.json # Set path to North Star calibration file.
export XRT_COMPOSITOR_DISABLE_DEFERRED=true # Keep Monado open even if no apps running.
export XRT_COMPOSITOR_FORCE_XCB=1 # Force an X11 window, thus causing Xwayland.
export XRT_COMPOSITOR_XCB_FULLSCREEN=1 # Fullscreen variable for X11/Xwayland.
' >> ~/.zshrc && exec zsh
```
<br>

## Getting Started
---

### Hardware
1. Plug in your North Star via USB 2.0 (either use a hub or a motherboard port, depending on whether or not you have a 2.0 port). Using Ultraleap devices through USB 3 on Linux is not currently supported due to driver shenanigans. [Source: <img src="/assets/img/monado-discord.png">  <img id="emoji" src="/assets/img/emoji/discord.png">](https://discord.com/channels/994213697490800670/1061452346686713957/1062331957456928848)
2. Plug in your North Star via DisplayPort to your graphics card.
3. Force `portReset()` on your North Star, via holding down the circle and dot buttons for 5 seconds. This power cycles your USB 3 header sensors (Stereo IR 170 and Intel T261) and ensures that they enumerate properly.
4. Check that the sensors are working correctly
   1. Run RealSense Viewer and check that the T261 is listed under sources.
   2. Run Ultraleap Control Panel and verify that the camera feed is being received.
   3. Close both.


<br>

### Starting Monado
1. Run `monado-service`. If all goes well, you should be greeted with an output log that mentions your NorthStarCalibration.json being read. Look for  `INFO [p_create_system] Creating system:`, specifically the lines:
   ```
   Got devices:
   	0: Intel RealSense Device-SLAM
   	1: North Star
   ```
2. A grey, fullscreen Xwayland Monado window should open on your main display.
3. Move it to your North Star display, e.g by using the Kwin shortcut `Meta-Shift-right`
4. Congratulations, you win :tada:
5. You can check Monado has access to your sensors by running a demo.
6. Open a new terminal, download this simple [demo](https://gitlab.freedesktop.org/monado/demos/openxr-simple-playground), enter the directory, make and run the demo with:
   ```zsh
   git clone https://gitlab.freedesktop.org/monado/demos/openxr-simple-playground && \
   cd openxr-simple-playground && \ 
   cmake ./ && \
   make && \
   ./openxr-playground
   ```
7. You should have hand and 6DoF tracking working. Congratulations, you won again :tada:

<br>

<h2><img id="emoji" src="/assets/img/emoji/stardust.gif"> Stardust XR</h2>
---
> _"Stardust XR (informally known as Stardust) is an XR display server for Linux-based distros (possibly most unix-based too, but untested). Unlike display servers of the past that were run on bounded 2D screens, Stardust has to break convention in order to account for unbounded 3D space in any potential virtual or real environment."_ 
> <span> - </span>[Stardust XR, 2023](https://stardustxr.org/docs/getting-started/overview)

Instructions `tba`


<br>

## Uploading Integrator Sketches
---
1. Download the Linux compatible `North-Star-Integrator` [sketches](https://github.com/sambilbow/North-Star-Integrator/tree/master/firmware/ExampleSketches):
   ```zsh
   git clone https://github.com/sambilbow/North-Star-Integrator.git && \
   cd North-Star-Integrator/firmware/ExampleSketches
   ```
2. You may have to add yourself to the usergroup that `/dev/ttyACM0` (the Arduino Leonardo's serial port) is part of if you are receiving errors uploading sketches.
   1. Run `stat /dev/ttyACM0` in a terminal
   2. Note the user group that the serial port is assigned to, e.g. `dialout` or `plugdev`
   3. Add your user to this group with `sudo usermod -a -G [group] [username]` 
    4. `sudo` run command as superuser 
    5. `usermod` modify user attributes
    6.  `-a` append 
    7.  `-G` group
3. Add the `../libraries/SX1508` folder to your Arduino library directory (default on Linux: `/home/[user]/Arduino/libraries`)
   ```zsh
   mkdir -p ~/Arduino/libraries && \
   cp ../libraries/SX1508 ~/Arduino/libraries/
   ```
   - `../libraries/SX1508/src/util/sx1508_registers.h` has been renamed to `SX1508_registers.h` in this repo because I was getting errors when I tried to access this file in the Arduino IDE on Linux, I believe this was because of [UNIX case-sensitivity](https://en.wikipedia.org/wiki/Case_sensitivity).
4. Open a sketch from the folder in Arduino IDE
5. Install any additionally required libraries (on Linux I needed to add the `Keyboard` library)
6. Set the correct Port and Board in `Tools > `
7. Verify and Upload the sketch.
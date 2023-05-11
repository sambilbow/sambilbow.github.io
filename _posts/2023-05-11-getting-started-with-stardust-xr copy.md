---
layout: post
title: <img id="emoji" src="/assets/img/emoji/stardust.gif"> getting started with stardust xr
seo_title: ✨ getting started with stardust xr
date: 2023-05-11 00:00:00-0000
description: an open-source linux xr display server
tags: open-source linux augmented-reality
related_posts: false
img: /assets/img/emoji/stardust.gif
---
## Summary
---
As part of [CoMuse](/projects/comuse/) I hope to move towards a fully open-source stack for multi-user musical AR experience. In my [last post](/blog/2023/north-star-on-linux) on this topic, I went through how I set up Linux with Monado and OpenXR to recognise the North Star headset, and utilise its hand and head tracking sensors. This post will be about [Stardust XR](https://stardustxr.org/).

Stardust is a system UI framework where multiple different clients (programs that connect to Stardust directly) can create objects for the user to interact with their apps and device. The user can choose to use the objects that work best for their current scenario, and default setups can easily be created so users start out with all the essentials.

The value of this for [CoMuse](/projects/comuse/) lies in the ability to render and interact with software that exists in 2D forms without having to rebuild or port them to AR. This sits within the developer workflow nicely as it allows for a fully AR setup without switching between AR and 2D displays. Additionally it benefits the participant or audience, as they will likely be experiencing pre-composed Godot scenes or applications built with Stereokit that can sit within Stardust XR.

Some preliminary ideas for developer workflow bindings
- Gestural interactions with already visual languages like [PureData](https://puredata.info/)
- Adding gestural interactivity for code-based computer music languages, like [Supercollider](https://supercollider.github.io/) and [Glicol](https://glicol.org/)

Some preliminary ideas for audience interface with Stardust
- Ease of switching between experiences via panel shells
- Menu style launcher
- Modularity between instruments, which could be their own OpenXR applications.

**Revised Linux Stack**

North Star → OpenXR → Monado → Stardust XR → Application(s), both 2D and 3D

<br>

## Installation of Stardust XR
---
1. Install prerequisites found [here](https://stardustxr.org/docs/getting-started/install), i.e.: 
   ```sh
   yay -S cargo flatbuffers seatd fontconfig wayland openxr-git libglvnd mesa libx11 libxext libxfixes --needed
   ```
3. Download [telescope](https://github.com/StardustXR/telescope), a bash setup guide for Stardust XR.
   ```sh
   git clone https://github.com/StardustXR/telescope
   ```
4. Enter the folder and run the setup to download Stardust XR's first party clients.
   ```sh
   cd telescope && \
   ./setup.sh
   ```
5. For each first-party client you want to run, enter its folder now downloaded into `repos/` and build. We'll build `stardust-xr-server` and `comet`.
   ```sh
   cd server && \
   cargo build --release && \
   cd ../comet && \
   cargo build --release
   ```
6. For ease, lets add the binaries that have been build in each `target/release/` folder to our `zsh` `PATH` so that we can run them from anywhere. Add the following to your ~/.zshrc using a text editor like `vim` or `nano`
   ```sh
   export PATH=$PATH$(find <repository location>/StardustXR/telescope/repos/*/target/release/ -maxdepth 1 -type f -executable -printf ":%h")
   ```
7. Close and open a new terminal window or run `exec zsh` to refresh. Check that `PATH` was updated with `echo $PATH`. You should see the Stardust release folders added at the end.

<br>

## Running a `comet`, a first-party Stardust XR client
---
Stardust XR is an OpenXR client itself, but it runs on top of Monado for now. This means that you must have `monado-service` running, so that the server can connect to it, and serve clients.
1. Plug in your North Star headset via USB 2.0
2. Plug in your North Star via DisplayPort to your graphics card.
3. Force `portReset()` on your North Star, via holding down the circle and dot buttons for 5 seconds.
4. Open three terminal windows
5. Run `monado-service` in the first terminal window.
6. A grey, fullscreen Xwayland Monado window should open on your main display. Move it to your North Star display, e.g by using the Kwin shortcut `Meta-Shift-right`
7. In the second terminal window, run `stardust-xr-server`. The display of the headset should switch from grey to black
8. In the third terminal window, run `comet`
9. If all goes well you should have 6DoF and hand tracking running in Stardust XR, and you should be able to grab the red pen in front of / above you and draw with it.

<br>

## Example video
---
<div class="row" >
    <div class="col-sm mt-3 mt-md-0">
        <div class ="embed-responsive embed-responsive-16by9"><iframe src="https://www.youtube-nocookie.com/embed/zG__m-gV1qI" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
    </div>
</div>

>I have to use `gravity` here to run `comet` with an offset, as it seems all of my clients like to run about a metre above my head for some reason!

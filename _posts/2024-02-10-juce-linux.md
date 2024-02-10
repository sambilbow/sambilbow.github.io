---
layout: post
title: "🐧 juce development on linux"
seo_title: 
date: 2024-02-10 08:00:00-0000
description: "exploring juce tutorials"
tags: music opensource software
related_posts: false
img: /assets/img/juce-tutorial-0.png
---

## Arch Linux / EndeavourOS install
- `yay -S juce` This seems to install JUCE to `/usr/share/docs/juce` and `/usr/share/juce`, comes with Projucer, but doesn't include examples. Therefore lets manually install them:
- `git clone https://github.com/juce-framework/juce <install_directory>`
- Change to the directory, and build the examples using:
- `cmake . -B cmake-build -DJUCE_BUILD_EXAMPLES=ON -DJUCE_BUILD_EXTRAS=ON`
- `cmake --build cmake-build --target DemoRunner` (DemoRunner seems to crash straight away on my PC -- lets ignore this for the moment 😂)
- [Optional] Point Projucer to the repository files rather than the defaults `File > Global Paths` then choose where you've installed the JUCE git repository
- Projucer should now see the examples

## Setting up a JUCE Projects
- Use Projucer to create a new audio plugin
- Open the project in VS Code
- Import `.vscode` and `.gitignore`, stored [here](https://github.com/sambilbow/juce-template-vscode)
  - Inspiration comes from  [catman85/juce-plugin-template-vscode](https://github.com/catman85/juce-plugin-template-vscode)
  - Additionally [icq4ever/emptyJUCEProject](https://github.com/icq4ever/emptyJUCEProject)
  - Maybe look at WolfSound's [setup](https://github.com/JanWilczek/audio-plugin-template) one day.
- Make debug using `ctrl-shift-b` and select `Build debug`
- Run the standalone by `cd Builds/LinuxMakeile/builds` and `./<project_name>`

## Create a basic Audio/MIDI plugin, Part 1: Setting up
Source Tutorial: [@ JUCE Docs](https://docs.juce.com/master/tutorial_create_projucer_basic_plugin.html)


---
layout: page
title: c++ with juce
description: "Developing in modern C++ with the JUCE Framework"
img: assets/projects/05-freelance/juce/juce-logo.png
importance: 0
permalink: /projects/juce/
category: freelance
---

<!-- ![Stylised icon for the coMuse project](/assets/projects/04-postdoctoral/comuse/banner.png){: .rounded .z-depth-1 .mx-auto .d-block height="200px"} -->

<!-- <div class="caption">
    <a href="#"><img src="https://img.shields.io/badge/Platform-Linux-yellow?style=flat-square&logo=linux&logoColor=white"></a>
    <a href="https://docs.juce.com/"><img src="https://img.shields.io/badge/Environment-JUCE-orange?style=flat-square&logo=godot&logoColor=white"></a>
    <!-- <a href="https://www.youtube.com/watch?v=zOeXI_WvzJA&list=PLA1CN3oynXG32NicEi72nnXsIp1anyWSr"><img src="https://img.shields.io/badge/Performances-Playlist-green?style=flat-square&logo=actigraph&logoColor=white"></a>
    <a href="https://github.com/sambilbow/polygons/wiki"><img src="https://img.shields.io/badge/Guide-Wiki-red?style=flat-square&logo=todoist&logoColor=white"></a>
    <a href="https://github.com/sambilbow/comuse/"><img src="https://img.shields.io/badge/Code-GitHub-blue?style=flat-square&logo=github&logoColor=white"></a>
</div> -->



## Summary
Inspired by the recent release of Animoog Galaxy, a spatial AR instrument developed by Moog for the Apple Vision Pro, I've picked up JUCE as a framework (which I assume it uses) for developing audio applications in XR. Here I will keep devblogs and any useful information I pick up along the way for developing in C++ with JUCE. I don't have an Apple Vision Pro, but I [recently attained a Lynx R-1](/blog/2024/lynxr1).


<div class="row">
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/05-freelance/juce/moog-galaxy-1.png" title="" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/05-freelance/juce/moog-galaxy-2.png" title="" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/05-freelance/juce/moog-galaxy-3.png" title="" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">   
    The Animoog Galaxy app        
</div>   

## JUCE, coMuse, and Godot
JUCE provides a great framework for building audio applications, and could be the ideal audio backend for [coMuse](/projects/comuse/), a work-in-progress project that will enable musicians to develop, design, play, compose, and perform novel and experimental instruments in AR in real time, and collaboratively. It builds on findings in [polaris~](/projects/polaris/) and [polygons~](/projects/polygons/).

JUCE + Blender + Godot + Monado = Open Source XR Fun on the Lynx-R1? 

## Development blogs
- [🐧 juce development on linux](/blog/2024/juce-linux)
- [🎛️ making a simple EQ with juce](/blog/2024/juce-eq)

<!-- youtube videos embed -->
<!-- {: .text-center}
[![{coMuse Proposal}](https://ytcards.demolab.com/?id=lkLRmX3Kumw&title=coMuse+Proposal&lang=en&timestamp=1657900736&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&width=250&duration=157 "coMuse Proposal")](https://youtu.be/lkLRmX3Kumw) -->
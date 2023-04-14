---
layout: page
title: polaris~
description: An Audiovisual Augmented Reality Experience Built on Open-Source Hardware and Software (2021)
permalink: /projects/polaris/demos
---
<div class="caption">
    <a href="https://www.microsoft.com/en-gb/windows/"><img src="https://img.shields.io/badge/Platform-Windows-yellow?style=flat-square&logo=windows"></a>
    <a href="https://unity.com/"><img src="https://img.shields.io/badge/Environment-Unity%20&%20Pd-orange?style=flat-square&logo=unity&logoColor=white"></a>
    <a href="https://doi.org/10.21428/92fbeb44.8abb9ce6"><img src="https://img.shields.io/badge/Publication-NIME-green?style=flat-square&logo=readthedocs&logoColor=white"></a>
    <a href="https://github.com/sambilbow/polaris/wiki"><img src="https://img.shields.io/badge/Guide-Wiki-red?style=flat-square&logo=todoist&logoColor=white"></a>
    <a href="https://github.com/sambilbow/polaris/"><img src="https://img.shields.io/badge/Code-GitHub-blue?style=flat-square&logo=github&logoColor=white"></a>
</div>
<b style="text-align: center;" id="bottom-nav"><a href="calibration.html">← Software: Calibration</a><a href="software.html">Software: Planning Musical AR Instruments →</a></b>
<hr class="rounded">

## Software: Running Demos (May - July 2021)
### Through-Combiner Recording
In July I added a camera to the headset, to be specific, I have a Raspberry Pi Zero, taking power over USB 2 ribbon cable from the CombineReality Integrator, connected to a ZeroCam (small camera), placed just to the right of the left screen on the headset. This results in the camera being in front of my left eye. Despite making it harder to see objects, for documentation and archival purposes, the camera has been a great addition. Following these instructions, the camera shows up as a standard USB camera through the headset's USB 3 cable. This cable to the PC is now not only powering and transferring data to and from the sensors and displays, but now also the new camera, all through one cable!

    
<div class="row">
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-016.JPEG" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-017.JPEG" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-018.JPEG" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class = "caption">
    Raspberry Pi Zero + ZeroCam Through-Combiner Setup
</div>


In order to take these videos, I use <a href="https://obsproject.com/">OBS</a> to composite my webcam, specific portions of my screen (during Unity Demos), as well as the through-combiner camera I have set up, and later on, binaural audio. Overall, whilst it looks and feels hacked together, and could probably do with a 3D printed enclosure, the system works perfectly well for documenting the experience of wearing the headset.
<div class="row">
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-019.gif" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class = "caption">
    Pressing a button whilst running the OBS camera/screen/audio compositing setup
</div>

### Paint & Cubes
Now that the headset is built, the SDKs are installed, and I have a 2D optical calibration, it was time to run a few demos. The first video above shows this original Unity demo from Leap Motion. As mentioned in the <a href="calibration.html">calibration page</a> , if you want to run this yourself, you need to be on the multi-device support SDK.  

<div class="row" >
    <div class="col-sm mt-3 mt-md-0">
        <div class ="embed-responsive embed-responsive-16by9"><iframe src="https://www.youtube.com/embed/4t80D4CcjSQ" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
    </div>
</div><br>

### Project Esky 
Project Esky is a open-source software platform apable of high fidelity natural hand-interactions with virtual content, high field of view, and spatial mapping for environment interactions. This is the software framework by which I am creating my AR experiences in Unity. It is developed by <a href="https://dl.acm.org/doi/10.1145/3380867.3426220">Damien Rompapas</a>, who has helped a lot in helping my project run smoother. Esky allows the North Star to be emulated as a Windows Mixed Reality Headset, meaning that you can use the Microsoft Mixed Reality Toolkit in Unity3D for desigining interactions (like the Microsoft Hololens 2 does).

<div class="row" >
    <div class="col-sm mt-3 mt-md-0">
        <div class ="embed-responsive embed-responsive-16by9"><iframe src="https://www.youtube.com/embed/qGXAgjjVXpw" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
    </div>
</div><br>

There are a couple of important steps I had to go through before I could use Esky properly, importing calibration, setting up display settings, and aligning my hands. The third video covers importing my optical calbration into Project Esky, and the fourth video covers hand alignment, which makes sure that your virtual and real hands are aligned.


<div class="row" >
    <div class="col-sm mt-3 mt-md-0">
        <div class ="embed-responsive embed-responsive-16by9"><iframe src="https://www.youtube.com/embed/6XIZZD9S-dk" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
    </div>
    <div class="col-sm mt-3 mt-md-0">
        <div class ="embed-responsive embed-responsive-16by9"><iframe src="https://www.youtube.com/embed/XeKTBSjXWn4" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
    </div>
</div><br>

From here on, when working in Unity 3D, it is assumed that I am referring to the Project Esky Unity Implementation.

   
<b style="text-align: center;" id="bottom-nav"><a href="calibration.html">← Software: Calibration</a><a href="software.html">Software: Planning Musical AR Instruments →</a></b>

<br><br>
<div style="text-align: center;">
    <h3>Resources</h3>
    <b><a href="https://docs.projectnorthstar.org/">Headset Documentation: Project North Star</a></b><br>
    <b><a href="https://discord.gg/wBsV2ehpq2">Community: Project North Star Discord Server</a></b><br>
    <b><a href="https://github.com/HyperLethalVector/ProjectEsky-UnityIntegration">Repository: Project Esky Renderer</a></b><br>
    <br><br>
</div>
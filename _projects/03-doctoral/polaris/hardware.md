---
layout: page
title: polaris~
description: An Audiovisual Augmented Reality Experience Built on Open-Source Hardware and Software (2021)
permalink: /projects/polaris/hardware/
---
<div class="caption">
    <a href="https://www.microsoft.com/en-gb/windows/"><img src="https://img.shields.io/badge/Platform-Windows-yellow?style=flat-square&logo=windows"></a>
    <a href="https://unity.com/"><img src="https://img.shields.io/badge/Environment-Unity%20&%20Pd-orange?style=flat-square&logo=unity&logoColor=white"></a>
    <a href="https://doi.org/10.21428/92fbeb44.8abb9ce6"><img src="https://img.shields.io/badge/Publication-NIME-green?style=flat-square&logo=readthedocs&logoColor=white"></a>
    <a href="https://github.com/sambilbow/polaris/wiki"><img src="https://img.shields.io/badge/Guide-Wiki-red?style=flat-square&logo=todoist&logoColor=white"></a>
    <a href="https://github.com/sambilbow/polaris/"><img src="https://img.shields.io/badge/Code-GitHub-blue?style=flat-square&logo=github&logoColor=white"></a>
</div>
<b style="text-align: center;" id="bottom-nav"><a href="../inspiration/">← Inspiration & Rationale</a><a href="../calibration/">Software: Calibration →</a></b>
<hr class="rounded">

## Hardware 
**(July - December 2020)**


### Shopping List (prices / stores outdated)

£300 [CombineReality Deck X Kit A (pending refresh)](https://shop.ahead.io/product/deck-x-kit-one/)

£110 [Intel T261 (discontinued)](https://www.mouser.co.uk/new/intel/intel-realsense-t261-module/)

£100 [Ultraleap Stereo IR 170](https://www.smart-prototyping.com/index.php?route=product/product&product_id=44582)

£510 Total Cost (£610 if you don't have access to a 3d printer)

### 3D Printing
I started printing the parts [(which are available here)](https://github.com/AheadIO/Deck-X/tree/main/Deck_X/STL_files) between July and September,

<div class="row">
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-004.JPEG" title="£D printed parts for North Star headset calibration stand and headgear" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-005.JPEG" title="Original Leap Motion Controller optics bracket for North Star headset" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-006.JPEG" title="Assembled headgear with rails for North Star headset" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="row">

    
</div>

### Electricals and Sensors
Building the headset involves assembling the electrical components and the sensors into the 3D printed parts. For the Deck X, these electrical components are:

- Intel T261 (6DOF Sensor)
- Ultraleap Stereo IR 170 (Hand Sensor)
- Display Board (The board which provides power to the two displays, and receives their signal via a mini Display Port cable)
- CombineReality Integrator (CR's solution to reduce cables: in older iterations of the HMD, you needed a USB cable to power the display board as well as each of the sensors. This amounted to four cables. The Integrator 'integrates' everything with one unidirectional USB C - A cable.
    - It contains a USB C hub to power and relay sensor data from two USB 3.1 and one USB 2.0 connectors
    - Sends power to the Display Board via a connector and capacitor board.
    - Contains a 3GB on-board flash drive
    - Features an arduino-compoatible microcontroller (allows further sensors, and integrates the D-Pad on the lid)
    - Power for a fan to cool the T261 and all other inner components
- Lid D-Pad (CR's 6 button solution to allow hassle-free calibration and easy resetting)
- Capacitor Board (to power the Display Board from the Integrator)
- Screens (two screens that add up to a 2880x1600 120Hz display extension to your computer)




<div class="row">
    <div class="col-sm mt-2 mt-md-0">
            {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-011.JPEG" title="North Star headset display trays with adaptors and flex cables showing" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-007.JPEG" title="Part-assembled North Star headset optics bracket with Leap Motion Controller, and Intel Realsense T261" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-008.JPEG" title="Assembled North Star headset (missing lid) with Leap Motion Controller, and Intel Realsense T261" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

<div class="row">
    <div class="col-sm mt-2 mt-md-0">
            {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-009.JPEG" title="Printing the North Star headset lid." class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-010.JPEG" title="Me trying the North Star headset for the first time" class="img-fluid rounded z-depth-1" %}
    </div>

</div>
<div class="caption">
    Some photos of my 3D printing process. Around January I updated to the Ultraleap Stereo IR 170 hand tracker from the Leap Motion Controller, which offers higher field-of-view. This required a reprint of the main optics bracket which is why the headset might look different in some pictures further along the process
</div>

### Assembly
The full assembly guide for the CombineReality Deck X version of the North Star HMD is available [here](https://docs.projectnorthstar.org/mechanical/combine-reality-deck-x/deck-x-assembly-guide).

<b style="text-align: center;" id="bottom-nav"><a href="../inspiration/">← Inspiration & Rationale</a><a href="../calibration/">Software: Calibration →</a></b>

<br><br>


<div style="text-align: center;">
    <h3>Resources</h3>
    <b><a href="https://docs.projectnorthstar.org/">Headset Documentation: Project North Star</a></b><br>
    <b><a href="https://discord.gg/wBsV2ehpq2">Community: Project North Star Discord Server</a></b><br>
    <b><a href="https://github.com/HyperLethalVector/ProjectEsky-UnityIntegration">Repository: Project Esky Renderer</a></b><br>
    <br><br>
</div>
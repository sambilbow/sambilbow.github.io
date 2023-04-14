---
layout: page
title: polaris~
permalink: /projects/polaris/calibration
---
<div class="caption">
    <a href="https://www.microsoft.com/en-gb/windows/"><img src="https://img.shields.io/badge/Platform-Windows-yellow?style=flat-square&logo=windows"></a>
    <a href="https://unity.com/"><img src="https://img.shields.io/badge/Environment-Unity%20&%20Pd-orange?style=flat-square&logo=unity&logoColor=white"></a>
    <a href="https://doi.org/10.21428/92fbeb44.8abb9ce6"><img src="https://img.shields.io/badge/Publication-NIME-green?style=flat-square&logo=readthedocs&logoColor=white"></a>
    <a href="https://github.com/sambilbow/polaris/wiki"><img src="https://img.shields.io/badge/Guide-Wiki-red?style=flat-square&logo=todoist&logoColor=white"></a>
    <a href="https://github.com/sambilbow/polaris/"><img src="https://img.shields.io/badge/Code-GitHub-blue?style=flat-square&logo=github&logoColor=white"></a>
</div>
<b style="text-align: center;" id="bottom-nav"><a href="hardware.html">← Hardware</a><a href="demos.html">Software: Running Demos →</a></b>
<hr class="rounded">

## Software: Calibration (December - May 2021)
### Initiation
Originally, my system was very temperatmental. After much deliberation, I realised I must have shorted some part of my integrator. After replacing it, everything is plug and play. Luckily I was mainly working on written parts of my PhD during this period of time.

For best results I plug in the USB, and then the DP cable into my computer, and unplug them in the opposite order. 

### Software Development Kits
I required the following SDKs to get North Star working on Windows.

#### Intel Realsense SDK (enables head tracking)
- [Latest Intel RealSense SDK 2.0](https://github.com/IntelRealSense/librealsense/releases) - you're looking for an asset file like "Intel.RealSense.SDK-WIN10-2.47.0.3309.exe"


#### Ultraleap Gemini SDK (enables hand tracking)
- [Leap Developer Kit 5.0.0-preview+52386](https://developer.leapmotion.com/tracking-software-download)
- [Leap Developer Kit 4.0.0+52238](https://github.com/leapmotion/UnityModules/tree/feat-multi-device/Multidevice%20Service) - need to rollback to this driver to run Leap Motion example demonstrations such as [Paint and Cubes](https://drive.google.com/drive/u/0/folders/1o6NCmuz8T7k9R7Mh66pI_O3nZSzBuHJP)


### Optical Calibration

Calibrating the headset is necessary due to the large amount of small variables between headsets this stage. Lets have a look at some things that might not be the same for everyone:

- 3D Filament Type (material and layer height)
- 3D Printer Tolerances (how accurate the print is +/- mm)
- Resultant Inter-Hardware Position (the above two factors might result in minute differences in position between hardware components)

For this reason, it is commonplace to "calibrate" your headset through software, by creating a file which contains information about the various positions of hardware (I believe mainly the screens). This already sounds very difficult, so how does it work?

Historically, there are two different types of calibration, 3D and 2D. 3D came first, and is therefore (frustratingly) sometimes referred to as V1 calibration. 2D came second, and is referred to as V2 calibration. See the differences [here](https://docs.projectnorthstar.org/calibration/getting-started).

- 3D Calibration (V1) requires the use of two extra cameras and is therefore more expensive and a longer process. It was necessary to do this before the North Star had a 6DoF sensor with a dual-camera at its disposal
- 2D Calibration (V2) uses the dual-camera in the 6DoF sensor (Intel T261), and is therefore cheaper and quicker.

<div class="row">
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-012.JPEG" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-013.JPEG" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="row">
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-014.JPEG" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-015.JPEG" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class = "caption">
    Historical 2D (V2) Calibration Stand vs New T26x Hybrid Calibrator
</div>

2D (V2) calibration used to require placing the headset on a special calibration stand, taking the T261 and anchoring it where the eyes would sit behind the headset. These are the first photos in the slideshow.

Thanks to the new <a href="https://github.com/AheadIO/Deck-X/blob/main/Deck_X/STL_files/Calibration_Accessories/DX_T261_Hybrid_Calibrator.stl">T26x Hybrid Calibrator</a>, the stand is no longer necessary, as is shown in the last two photos.

Calibration is fairly simple and requires running premade python scripts. <a href="https://docs.projectnorthstar.org/calibration/2d-calibration">Instructions are here</a> (I created a custom anaconda virtual environment (venv) to install the packages and run the calibration scripts from this venv). The output are four number arrays, which can later be used in Unity to make sure that each eye receives calibrated visuals from the screens. I keep these arrays in a sacred folder called `CALIBRATIONS DO NOT TOUCH/`.
   
<b style="text-align: center;" id="bottom-nav"><a href="hardware.html">← Hardware</a><a href="demos.html">Software: Running Demos →</a></b>

<br><br>
<div style="text-align: center;">
    <h3>Resources</h3>
    <b><a href="https://docs.projectnorthstar.org/">Headset Documentation: Project North Star</a></b><br>
    <b><a href="https://discord.gg/wBsV2ehpq2">Community: Project North Star Discord Server</a></b><br>
    <b><a href="https://github.com/HyperLethalVector/ProjectEsky-UnityIntegration">Repository: Project Esky Renderer</a></b><br>
    <br><br>
</div>
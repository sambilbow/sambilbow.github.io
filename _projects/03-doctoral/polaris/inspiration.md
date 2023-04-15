---
layout: page
title: polaris~
description: An Audiovisual Augmented Reality Experience Built on Open-Source Hardware and Software (2021)
permalink: /projects/polaris/inspiration
---
<div class="caption">
    <a href="https://www.microsoft.com/en-gb/windows/"><img src="https://img.shields.io/badge/Platform-Windows-yellow?style=flat-square&logo=windows"></a>
    <a href="https://unity.com/"><img src="https://img.shields.io/badge/Environment-Unity%20&%20Pd-orange?style=flat-square&logo=unity&logoColor=white"></a>
    <a href="https://doi.org/10.21428/92fbeb44.8abb9ce6"><img src="https://img.shields.io/badge/Publication-NIME-green?style=flat-square&logo=readthedocs&logoColor=white"></a>
    <a href="https://github.com/sambilbow/polaris/wiki"><img src="https://img.shields.io/badge/Guide-Wiki-red?style=flat-square&logo=todoist&logoColor=white"></a>
    <a href="https://github.com/sambilbow/polaris/"><img src="https://img.shields.io/badge/Code-GitHub-blue?style=flat-square&logo=github&logoColor=white"></a>
</div>

<b style="text-align: center;" id="bottom-nav"><a href="../">← Summary</a><a href="../hardware/">Hardware Process →</a></b>
<hr class="rounded">      

## Inspiration & Rationale 
**(May - July 2020)**

<div class="row">
    <div class="col-sm mt-1 mt-md-0" align="center">
        <div class ="embed-responsive embed-responsive-16by9">
            <iframe src="https://www.youtube.com/embed/7m6J8W6Ib4w" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
        </div>
    </div>
</div>
<div class="caption">   
    LeapMotion video from 2018 showcasing through-combiner footage of the robust hand tracking in North Star        
</div>     

During the development of the pilot study for my PhD: [the area~ system](../area/index.html), I came across the open-source Project North Star AR headset. It had a very clear set of advantages detailed below:

**Visual Display**
- 2K resolution per-eye OLED displays

**Tracking**
- Hand Tracking [(Ultraleap Stereo IR 170)](https://www.ultraleap.com/product/stereo-ir-170/)
- 6DoF Body Tracking [(Intel T261)](https://dev.intelrealsense.com/docs/tracking-camera-t265-datasheet)

**Software**
- Unity Implementation [(Project Esky)](https://github.com/HyperLethalVector/ProjectEsky-UnityIntegration)

**Others**
- Community of makers (> 2000 people)
- Open-sourced design - ability to expand to other sensory modalities
- `.stl` files for 3D Printing
- Cheap in comparison to Microsoft HL2 and Magic Leap ML-1

I therefore thought it would be a good platform to design my further studies with. Either in conjunction with wireless bone conduction headphones, or via desigining, 3D printing, and implementing a bone conduction solution for the headset.

<div class="row">
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-001.png" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-002.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-2 mt-md-0">
        {% include figure.html path="assets/projects/03-doctoral/polaris/northstar-003.jpg" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
                
<b style="text-align: center;" id="bottom-nav"><a href="../">← Summary</a><a href="../hardware/">Hardware Process →</a></b>

<br><br>
<div style="text-align: center;">
    <h3>Resources</h3>
    <b><a href="https://docs.projectnorthstar.org/">Headset Documentation: Project North Star</a></b><br>
    <b><a href="https://discord.gg/wBsV2ehpq2">Community: Project North Star Discord Server</a></b><br>
    <b><a href="https://github.com/HyperLethalVector/ProjectEsky-UnityIntegration">Repository: Project Esky Renderer</a></b><br>
    <br><br>
</div>
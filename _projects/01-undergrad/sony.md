---
layout: page
title: S*ny Sampler
description: "MIDI mapped musical game controller (May 2016)"
img: assets/projects/01-undergrad/sony/sony.jpg
importance: 5
permalink:  projects/sony/
category: undergrad
---


<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <div class ="embed-responsive embed-responsive-16by9"><iframe src="https://player.vimeo.com/video/419609007?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
    </div>
</div>
<div class="caption">
    <!-- <a href="https://arduino.cc/"><img src="https://img.shields.io/badge/Platform-Arduino-yellow?style=flat-square&logo=arduino&logoColor=white"></a> -->
    <a href="https://puredata.info/"><img src="https://img.shields.io/badge/Environment-PureData-orange?style=flat-square&logo=max&logoColor=white"></a>
    <!-- <a href="https://github.com/sambilbow/weathersynth/"><img src="https://img.shields.io/badge/Code-GitHub-blue?style=flat-square&logo=github&logoColor=white"></a> -->
    <br>
    <br>
    <a href="https://www.sussex.ac.uk/study/modules/undergraduate/2021/W3077-creative-music-technologies"><img src="https://img.shields.io/badge/Module-Creative Music Technologies-red?style=flat-square&logo=todoist&logoColor=white"></a>
    <a href="../assets/projects/01-undergrad/gloveduino/essay.pdf"><img src="https://img.shields.io/badge/Coursework-Essay-green?style=flat-square&logo=readthedocs&logoColor=white"></a>
</div>

The aims of my project were to create an easy to use, musical sounding sampler which operated through the use of a game controller. The idea of a controller being used in the composition has been around since the 1981 with the implementation of MIDI in keyboard controllers.
   
I decided that I wanted to use something less intrinsically musical to control the samples, an idea that Don Buchla and Morton Subotnik had when they were building their modular synthesizers such as the 200e. I chose the Sony PS4 controller, because it has 18 assignable buttons and two 360° toggles. Using the [HID] object, I was able to map all of these button outputs to samples.

Although it is not natively supported by the [HID] object, I would like to be able to route the audio out of the patch to the small speaker in the controller as it would be interesting to have the PS4 as a standalone sampler, adding to this idea, putting the patch onto a small Bluetooth enabled device like a Raspberry PI or Arudino and then mounting it on the controller would make the concept completely computer free. I feel that my patch allows users to look at composition in a different way. Although the PS4 controller is not intrinsically musical, it is a control device, just as a MIDI keyboard and a drum pad are, and hopefully could inspire someone to become a professional PS4 controller musician!
---
layout: page
title: Therephone
description: "Motion-sensing solenoid xylophone. (December 2017)"
img: assets/projects/01-undergrad/therephone/therephone.jpg
importance: 2
permalink:  projects/therephone/
category: undergrad
---


<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <div class ="embed-responsive embed-responsive-16by9"><iframe src="https://player.vimeo.com/video/419616191?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
    </div>
</div>
<div class="caption">
    <a href="https://bela.io/"><img src="https://img.shields.io/badge/Platform-Bela-yellow?style=flat-square&logo=arduino&logoColor=white"></a>
    <a href="https://puredata.info/"><img src="https://img.shields.io/badge/Environment-PureData-orange?style=flat-square&logo=max&logoColor=white"></a>
    <!-- <a href="https://github.com/sambilbow/bandar/"><img src="https://img.shields.io/badge/Code-GitHub-blue?style=flat-square&logo=github&logoColor=white"></a> -->
    <br>
    <br>
    <a href="https://www.sussex.ac.uk/study/modules/undergraduate/2019/W3093-generative-arts-and-musical-machines"><img src="https://img.shields.io/badge/Module-Generative Art and Musical Machines-red?style=flat-square&logo=todoist&logoColor=white"></a>
    <a href="../../assets/projects/01-undergrad/therephone/journal.pdf" target="_blank"><img src="https://img.shields.io/badge/Coursework-Journal-green?style=flat-square&logo=readthedocs&logoColor=white"></a>
    <a href="../../assets/projects/01-undergrad/therephone/essay.pdf" target="_blank"><img src="https://img.shields.io/badge/Coursework-Essay-green?style=flat-square&logo=readthedocs&logoColor=white"></a>
</div>


For this project, I have created and engineered a xylophone that responds to movement when placed  in  any  room  environment.  Using  two  HC-SR04  ultrasound  sensors,  8  actuating  5V solenoids  and  a  PureData  patch  containing  the  control  logic,  the  distance  that  someone  is from either side of  the xylophone affects both the pitch and tempo of  the played notes on the xylophone.  Inspiration  for  this  project  stemmed  primarily  from  my  long-standing  interest  of  the   Theremin,   but   also   from   watching   Wintergatan’s   demonstration   of    their   ‘Marble Machine’  (Wintergatan,  2016).    Both  of   these  machines  combined  in  my  head  to  make  a robotic mechanical theremin which I have called the Therephone.

The Therephone succeeds to fulfil the criteria of  a musical robot by being active (it contains eight  actuating  solenoids,  that  move  freely  without  direct  human  input),  responsive  (the  two ultrasound  sensors  allow  the  machine  to  sense  directional  distance  data  and  respond accordingly),  musically  intelligent  (it  contains  internal  pattern  generation  processes  within PureData and C++), and social (it can interact with humans on an instrument level, but also on an installation level with any moving objects within the throw of  the ultrasound sensors).
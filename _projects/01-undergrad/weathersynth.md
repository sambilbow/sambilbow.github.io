---
layout: page
title: WeatherSynth
description: "UK weather API sonification (May 2017)"
img: assets/projects/01-undergrad/weathersynth/weathersynth.jpg
importance: 3
permalink:  projects/weathersynth
category: undergrad
---


<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        <div class ="embed-responsive embed-responsive-16by9"><iframe src="https://player.vimeo.com/video/419623542?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
    </div>
</div>
<div class="caption">
    <a href="https://www.apple.com/macos"><img src="https://img.shields.io/badge/Platform-Mac-yellow?style=flat-square&logo=apple&logoColor=white"></a>
    <a href="https://cycling74.com/products/max"><img src="https://img.shields.io/badge/Environment-Max-orange?style=flat-square&logo=max&logoColor=white"></a>
    <a href="https://github.com/sambilbow/weathersynth/"><img src="https://img.shields.io/badge/Code-GitHub-blue?style=flat-square&logo=github&logoColor=white"></a>
    <br>
    <br>
    <a href="https://www.sussex.ac.uk/study/modules/undergraduate/2020/W3082-digital-music-cultures"><img src="https://img.shields.io/badge/Module-Digital Music Cultures-red?style=flat-square&logo=todoist&logoColor=white"></a>
    <a href="../assets/projects/01-undergrad/weathersynth/journal.pdf"><img src="https://img.shields.io/badge/Coursework-Journal-green?style=flat-square&logo=readthedocs&logoColor=white"></a>
</div>

Ever since the [Interactive Music Systems module](https://sambilbow.com/projects/gloveduino), I have had a deep interest using VPLs (visual programming languages) to create systems that create music out of interesting and unusual data, data that you wouldn't normally attribute music to. After being shown a CNMAT Max patch created by Michael Zbyszynski that interprets XML weather data, I decided to focus on the weather as it is something that constantly changes over time and is never exactly the same in two places. The different weather conditions affect different parameters on the synthesiser.

My patch downloads, parses and then uses Logic Pro X to synthesise weather data from an online API.
---
layout: page
title: polaris~
description: An Audiovisual Augmented Reality Experience Built on Open-Source Hardware and Software (2021)
img: assets/projects/03-doctoral/polaris/polaris.jpg
importance: 2
permalink: /projects/polaris/
category: phd/postdoc
---
<b style="text-align: center;" id="bottom-nav"><a href="#"> </a><a href="inspiration/">Inspiration & Rationale →</a></b>
<hr class="rounded">      


<div class="row">
    <div class="col-sm mt-1 mt-md-0" align="center">
        {% include figure.html path="assets/projects/03-doctoral/polaris/demo.gif" title="Animated screenshot of the Unity Editor during a polygons experience" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    <a href="https://www.microsoft.com/en-gb/windows/"><img src="https://img.shields.io/badge/Platform-Windows-yellow?style=flat-square&logo=windows"></a>
    <a href="https://unity.com/"><img src="https://img.shields.io/badge/Environment-Unity%20&%20Pd-orange?style=flat-square&logo=unity&logoColor=white"></a>
    <a href="https://doi.org/10.21428/92fbeb44.8abb9ce6"><img src="https://img.shields.io/badge/Publication-NIME-green?style=flat-square&logo=readthedocs&logoColor=white"></a>
    <a href="https://github.com/sambilbow/polaris/wiki"><img src="https://img.shields.io/badge/Guide-Wiki-red?style=flat-square&logo=todoist&logoColor=white"></a>
    <a href="https://github.com/sambilbow/polaris/"><img src="https://img.shields.io/badge/Code-GitHub-blue?style=flat-square&logo=github&logoColor=white"></a>
</div>

## Summary
If an AR system can be thought of as one that combines real and virtual processes, is interactive in real-time, and is registered in three dimensions; why do we witness the majority of AR applications utilising primarily visual displays of information? I propose a practice-led compositional approach for developing multisensory AR experiences’, arguing that, as an medium that combines real and virtual multisensory processes, it must explored with a multisensory approach.

This project uses the open-source [Project North Star](https://docs.projectnorthstar.org/) HMD from Leap Motion alongside bone-conduction headphones to deliver a spatialised audio-visual experience via Unity called polaris~. This repository started off as a fork of the [Software Companion](https://github.com/HyperLethalVector/ProjectEsky-UnityIntegration) for Project North Star, hence the other repository contributors and long list of commits. However, the experience itself including all audio-visual / artistic / musical content was added afterwards.    

This page outlines my use of the system which started around June of 2020 and is ongoing. To clarify, the original design has been open sourced by Leap Motion since 2018, but there have been a fair few community revisions and updates to the design [see more here](https://docs.projectnorthstar.org/#variations). This page documents the development of the Combine Reality Deck X version of the Project North Star HMD. Combine Reality is run by Noah Zerkin, who has provided countless support to my own project, so thanks Noah! He's also pretty much the only inexpensive parts sourcer of the electrical bits needed for the headset. **These pages act more like a devblog of my first year with North Star as a platform, its not to be taken as project instructions. Those can be found on the [wiki guide](https://github.com/sambilbow/polaris/wiki)**


[![{Presentation}](https://ytcards.demolab.com/?id=eCdQku5hFOE&title=Presentation&lang=en&timestamp=1655660340&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&width=250&duration=548 "Presentation")](https://youtu.be/eCdQku5hFOE)
[![{Demonstration}](https://ytcards.demolab.com/?id=lCBgMs8ULj0&title=Demonstration&lang=en&timestamp=1634924340&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&width=250&duration=529 "Demonstration")](https://youtu.be/lCBgMs8ULj0)
[![{Prototype}](https://ytcards.demolab.com/?id=gY2QtK907cU&title=Prototype&lang=en&timestamp=1632850740&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&width=250&duration=174 "Prototype")](https://youtu.be/gY2QtK907cU)
[![{Palm Synth}](https://ytcards.demolab.com/?id=miQI4jetETs&title=Palm+Synth&lang=en&timestamp=1629308340&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&width=250&duration=90 "Palm Synth")](https://youtu.be/miQI4jetETs)
[![{Finger Synth}](https://ytcards.demolab.com/?id=dJUd0186NbA&title=Finger+Synth&lang=en&timestamp=1629135540&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&width=250&duration=36 "Finger Synth")](https://youtu.be/dJUd0186NbA)
[![{LibPd Explainer}](https://ytcards.demolab.com/?id=CzJlEEcOt-A&title=LibPd+Explainer&lang=en&timestamp=1629049140&background_color=%230d1117&title_color=%23ffffff&stats_color=%23dedede&width=250&duration=799 "LibPd Explainer")](https://youtu.be/CzJlEEcOt-A)

## Inspiration and Similar Projects
 
- [Listening Mirrors](http://listeningmirrors.net/): an audio AR interactive installation by my PhD supervisors
- [Laetitia Sonami](https://sonami.net/): pioneer in early glove-based interactive music systems
- [Atau Tanaka](https://www.youtube.com/watch?v=p8CKjmE7zys): interactive gestural synthesis using muscle sensors
- [Keijiro Takahashi](https://github.com/keijiro) specifically their work with audio-reactivity in Unity.
- [Tekh:2](https://github.com/TEKH2/XR-Audio-Visual-Instruments) has created XR instruments using granular synthesis in Unity.
- [Amy Brandon](https://www.amybrandon.ca/) creates amazing musical AR performances.

## Acknowledgements

- [Noah Zerkin](https://twitter.com/noazark) (CombineReality) for their help in understanding some specifics workings of the North Star headset.
- [Damien Rompapas](https://www.linkedin.com/in/dr-damien-rompapas-3a4b63170/?originalSubdomain=jp) (BEERLabs / ThinkDigital) for their explaining and debugging of the Software Companion to me.
- [Bryan Chris Brown](https://twitter.com/BryanChrisBrown) (CombineReality) for their moderation of the very friendly [Discord server](https://discord.gg/WnzNZa3qnf) and considerable explanations of the benefits of working with the North Star headset.

## Credits

- [Project North Star](https://docs.projectnorthstar.org/) is the 3D printable AR headset by LeapMotion that has been open-source since 2018.
- [Software Companion](https://github.com/HyperLethalVector/ProjectEsky-UnityIntegration) for Project North Star is developed by [Damien Rompapas](/) at BEERLabs / ThinkDigital. **If you use polaris~ in an academic context, please cite [their paper](https://dl.acm.org/doi/10.1145/3411763.3451804)**
- [LibPdIntegration](https://github.com/LibPdIntegration/LibPdIntegration) is developed by [Niall Moody](http://www.niallmoody.com) at [Abertay University](http://www.abertay.ac.uk), with assistance from [Yann Seznec](http://www.yannseznec.com/). It is licensed under the [MIT License](https://github.com/LibPdIntegration/LibPdIntegration/blob/master/LICENSE.txt).
- [Automatonism](https://www.automatonism.com/the-software) is developed by [Johan Erikkson](https://www.linkedin.com/in/johan-eriksson-ph-d-84393a56/).


<b style="text-align: center;" id="bottom-nav"><a href="#"> </a><a href="inspiration/">Inspiration & Rationale →</a></b>
<br><br>
<div style="text-align: center;">
    <h3>Resources</h3>
    <b><a href="https://docs.projectnorthstar.org/">Headset Documentation: Project North Star</a></b><br>
    <br>
    <b><a href="https://discord.gg/wBsV2ehpq2">Community: Project North Star Discord Server</a></b><br>
    <br>
    <b><a href="https://github.com/HyperLethalVector/ProjectEsky-UnityIntegration">Repository: Project Esky Renderer</a></b><br>
    <br>
</div>
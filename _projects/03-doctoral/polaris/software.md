---
layout: page
title: polaris~
description: "Software: Planning Musical AR Instruments (July - August 2021)"
permalink: /projects/polaris/software
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

## Software: Planning Musical AR Instruments (July - August 2021)    
</div>
<b style="text-align: center;" id="bottom-nav"><a href="demos.html">← Software: Running Demos</a><a href="pd.html">Software: Musical AR Instruments in PureData →</a></b>

<div id="text" class="text">
    <hr class="rounded">
    <h2>Software: Planning Musical AR Instruments (July - August 2021)</h2>
    
    <h3>Current state of the ARt</h3>
    <p>At this stage, I have a working visual AR headset... what about audio? As mentioned in the <a href="/inspiration.html">inspiration</a> for this project I am using wireless <a href="https://aftershokz.co.uk/products/aeropex">bone conduction headphones</a>, after trialling their use for audio AR in the <a href="../area/index.html">area~ project</a>. I use these because they serve as an aural equivalent to the method of visual mediation being used with the headset ('see-through' = 'hear-through'), that is to say, just as the headset does not occlude the sight of real physical objects in the participant's environment by using a half-mirror to combine virtual objects into the participants field of view, bone conduction headphones sit on the temple of the participant, rather than in the ear canal, and so they do not diminish the ability to hear sounds originating from real (not virtual) objects or processes in their environment.</p>
        
    <p>The content for this headset and headphones is visually and auditorily assembled in three dimensions by the Unity engine in conjunction with real-time head and hand tracking data! What a sentence, and what a feat in itself -- the credit for which lays soley with those genius minds that have enabled this open-source North Star project in the first place!</p> 
    <br>
    <h3>"So what are you looking (listening) for?"</h3>
    
    <p>I am interested in creating expressive musical instruments that are situated in AR; that is to say, they are spatially and contextually relevant to their real world environment, not only the virtual environment they are necessarily spawned into.</p>
    <br>
    <h3>"Ok, but how will you make musical instruments in a 3D game engine?"</h3>

    <p>At this point, I would prefer to draw from an <span style="color: var(--gruv-red);">audio engine or audio-focused programming language</span> that I already have some experience in, not only because it would be more familiar, but also because there are a few technical difficulties in trying to realise everything in Unity (more on that later). Sticking to one <span style="color: var(--gruv-red);">engine/language for prototyping audio interactions</span> from the outset would be preferable in order to maintain progress and proficiency</p>
    <br>
    <h3>"How will you choose from Supercollider, Max MSP, PureData, Wwise, and FMOD amongst others?"</h3>

    <p>In order to plan for the long-term relevance of this project in creating interactable, tangible, and expressive AR musical instruments, the features that this <span style="color: var(--gruv-red);">audio engine or audio-focused programming language</span> would need are:</p>
    
    <h4>1. Uses In-Built Unity Audio Spatialisation</h4>
    <p>
       Unity is a great 3D engine, with native (in-built) spatialisation of creatable elements called "GameObjects", that can have:
    </p>
       <p>
        (1) visual attributes such as three-dimensional meshes, material colours, and textural properties 
       </p>
       <p>
        (2) physical attributes such as edges, position, mass, velocity
       </p>
       <p>
        (3) auditory attributes such as a sound source with pitch and volume dependent on the physical attributes of position and velocity (things further away from the AudioListener component, which is assigned to the position of the headset, are quieter for example) 
       </p>
    <p>
       For these reasons, keeping audio "inside" Unity, and using its native audio spatialisation based on physical transform (x,y,z, velocity etc) values of the GameObjects is a feature that the project would benefit massively from in terms of labour. If instead I chose to have a separate <span style="color: var(--gruv-red);">audio engine/server</span> running in the background, it would have to have its own "knowledge" of the physical attributes of <span style="font-style:italic;">all</span> of the GameObjects in Unity, and then spatialise everything itself. This (whilst possible) is probably outside of the scope of this project as long as an alternative is available that can exist "inside" Unity.
    </p>

    <h4>2. Cheap Instantiable Audio</h4>
        <p>
            The chosen <span style="color: var(--gruv-red);">audio engine / language</span> needs to have the functionality of being able to create simple templates of audio algorithms that are then called into existence or "instantiated" tens to <b>hundreds</b> of times as the auditory output of certain GameObjects in Unity.
           
    <h4>3. Extended Audio Techniques Available</h4>
        <p>
             It's not enough for the chosen <span style="color: var(--gruv-red);">audio engine/language</span> to only have access to sample-based audio techniques (e.g. pressing a button triggers a pre-recorded sound file). It is definitely a feature I will need, as it is in cases more computationally "cheaper" to do so versus some synthesis techniques. However, due to the demands of real-time interaction in this project, and the aims of fine-grained expressive adaptation of musical textures, real-time synthesis will be one of the more often used techniques. More broadly and in the long-run, this project would benefit from being able to use as many audio techniques rather than having a cramped palette of 2 or 3 -- drawing from this early choice the ability to create a wide variety of AR musical instruments - each of them having their own nuanced interaction methods, creative expressivities, and modes sensory perception modulation.
        </p>

    <h4>4. Real-Time Parameter Control</h4>
        <p>
           Building on the last two features, the project would call for the ability to change in real-time, parameters of the audio algorithms being used. This would be the main source interactibility with an instrument, as having no parameters to control would likely mean that the instrument would not be instrumental in doing anything. Additionally, it would reduce the extent of co-adaptation of musical textures between participant and their instrument if there were not any parameters of the sound that were effectable in real-time. Therefore, this <span style="color: var(--gruv-red);">audio engine/language</span> must have the ability to expose its own parameters to Unity via C# scripting (which is the native language of Unity projects) so that attributes and values inherent to the associated GameObjects can be mapped to have effects on the audio algorithms. This would make interactions such as touching an object (which is an event that happens in Unity) be able to have effects such as increasing the pitch of the sound coming out of the object, randomising the volume, or changing the scale (which would be values inside the <span style="color: var(--gruv-red);">audio engine/language</span>). 
        </p>   
    
    <h4>5. Allows Rapid Prototyping</h4>
        <p>
           In order to iterate quickly and efficiently on the design of instruments, whatever <span style="color: var(--gruv-red);">engine or language</span> I am using must support quick changes to the structure and logic of the instrument and its audiovisual properties.
    </p>
    
    <h4>6. Open-Source, Free, and Cross-Platform</h4>
        <p>
           It would be preferable that this <span style="color: var(--gruv-red);">audio engine/language</span> is open-source, free and cross-platform in order to be as inclusive as possible to a wide range of computational artists, designers, and developers wanting to implement and make their own AR musical instruments.
    </p>
    <br>

    <h3>What to use then?</h3>
    <p>The following are only some of the available options, but are those that tick the most boxes feature-wise.</p>
    <h4>Unity's AudioSource Component</h4>
    <table class="table">
        <th class="table-header">Rating</th>
        <th class="table-header">Notes</th>
        <tr> 
            <td>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Uses Unity Spatialisation <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Cheap Instantiable Audio <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;</span>&#9734;&#9734;&#9734; Extended Audio Techniques Available <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;</span>&#9734;&#9734; Real-Time Parameter Control <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;</span>&#9734;&#9734; Allows Rapid Prototyping <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Open-Source, Free, and Cross-Platform <br>
            </td>
            <td>
                No real-time synthesis means that instruments would be fairly simple sample triggerers with not much parameterisation available.  <div class="table-youtube-video"><div class ="embed-responsive embed-responsive-16by9"><iframe src="https://www.youtube.com/embed/ngH9x8HtTaU" frameborder="0" height="200" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div></div>
            </td>
        </tr>
    </table>
   
    <h4>C# Granulator Synth via <a style="color: var(--gruv-yellow);" href="https://github.com/emmmmmmm/Granulator">Granulator</a></h4>
    <table class="table">
        <th class="table-header">Rating</th>
        <th class="table-header">Notes</th>
        <tr> 
            <td>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Uses Unity Spatialisation <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Cheap Instantiable Audio <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;</span>&#9734;&#9734; Extended Audio Techniques Available <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;</span>&#9734; Real-Time Parameter Control <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;</span>&#9734;&#9734; Allows Rapid Prototyping <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Open-Source, Free, and Cross-Platform <br>
            </td>
            <td>
                Granular synthesis only, would be a fairly limited set of options for building parameterised instruments.     <div class="table-youtube-video"><div class ="embed-responsive embed-responsive-16by9"><iframe src="https://www.youtube.com/embed/qqEANHSY1hY" frameborder="0" height="200" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div></div>
            </td>
        </tr>
    </table>

    <h4>Supercollider</h4>
    <table class="table">
        <th class="table-header">Rating</th>
        <th class="table-header">Notes</th>
        <tr> 
            <td>
                &#9734;&#9734;&#9734;&#9734;&#9734; Uses Unity Spatialisation <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Cheap Instantiable Audio <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;</span>&#9734; Extended Audio Techniques Available <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Real-Time Parameter Control <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Allows Rapid Prototyping <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Open-Source, Free, and Cross-Platform <br>
            </td>
            <td>
                No integration with Unity means two engines running (scsynth+Unity), and hence there would be a lot of work associated with attaining the same level of 3D audio believability that Unity provides natively. I would have to send all GameObject object, head, hand transforms to Supercollider and re-create the 3D engine environment before even getting to synthesis.
            </td>
        </tr>
    </table>

    <h4>MaxMSP</h4>
    <table class="table">
        <th class="table-header">Rating</th>
        <th class="table-header">Notes</th>
        <tr> 
            <td>
                &#9734;&#9734;&#9734;&#9734;&#9734; Uses Unity Spatialisation <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;</span>&#9734; Cheap Instantiable Audio <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Extended Audio Techniques Available <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Real-Time Parameter Control <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Allows Rapid Prototyping <br>
                <span style="color: var(--gruv-red);">&#9733;</span>&#9734;&#9734;&#9734;&#9734; Open-Source, Free, and Cross-Platform <br>
            </td>
            <td>
                Same issue as Supercollider, but is also not free nor open-source.
            </td>
        </tr>
    </table>

    <h4>Pure Data via <a style="color: var(--gruv-yellow);" href="https://blog.audiokinetic.com/how-sound-designers-use-pd-heavy-to-develop-dsp-plugins-part1/">Heavy Compiler and Wwise</a></h4>
    <table class="table">
        <th class="table-header">Rating</th>
        <th class="table-header">Notes</th>
        <tr> 
            <td>
                &#9734;&#9734;&#9734;&#9734;&#9734; Uses Unity Spatialisation <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;</span>&#9734;&#9734; Cheap Instantiable Audio <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Extended Audio Techniques Available <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Real-Time Parameter Control <br>
                <span style="color: var(--gruv-red);">&#9733;</span>&#9734;&#9734;&#9734;&#9734; Allows Rapid Prototyping <br>
                <span style="color: var(--gruv-red);">&#9733;</span>&#9734;&#9734;&#9734;&#9734; Open-Source, Free, and Cross-Platform <br>
            </td>
            <td>
                Not being comfortable with Wwise means this is a poor option. It would also require using a separate 3D audio engine such as Resonance or Microsoft 3D Audio. It would be slow to prototype due to the time compiling patches into C for Wwise.
            </td>
        </tr>
    </table>

    <h4>Pure Data via <a style="color: var(--gruv-yellow);" href="https://github.com/LibPdIntegration/LibPdIntegration">LibPdIntegration</a></h4>
    <table class="table">
        <th class="table-header">Rating</th>
        <th class="table-header">Notes</th>
        <tr> 
            <td>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Uses Unity Spatialisation <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Cheap Instantiable Audio <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Extended Audio Techniques Available <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Real-Time Parameter Control <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Allows Rapid Prototyping <br>
                <span style="color: var(--gruv-red);">&#9733;&#9733;&#9733;&#9733;&#9733;</span> Open-Source, Free, and Cross-Platform <br>
            </td>
            <td>
                This is the way to go!<div class="table-youtube-video"><div class ="embed-responsive embed-responsive-16by9"><iframe src="https://www.youtube.com/embed/CzJlEEcOt-A" frameborder="0" height="200" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div></div>
            </td>
        </tr>
    </table>

    <br>
   
<b style="text-align: center;" id="bottom-nav"><a href="demos.html">← Software: Running Demos</a><a href="pd.html">Software: Musical AR Instruments in PureData →</a></b>

<br><br>
<div style="text-align: center;">
    <h3>Resources</h3>
    <b><a href="https://docs.projectnorthstar.org/">Headset Documentation: Project North Star</a></b><br>
    <b><a href="https://discord.gg/wBsV2ehpq2">Community: Project North Star Discord Server</a></b><br>
    <b><a href="https://github.com/HyperLethalVector/ProjectEsky-UnityIntegration">Repository: Project Esky Renderer</a></b><br>
    <br><br>
</div>
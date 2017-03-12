**IMPORTANT:** All code committed to this repository, preferrably, should follow [these style guidelines](https://github.com/Radfordhound/HedgeLib/wiki/Code-Style).

This repository contains the following tools/libraries:

# HedgeLib
A C# library [under the MIT license](https://github.com/Radfordhound/HedgeLib/blob/master/License.txt) that aims to make modding games in the Sonic the Hedgehog franchise easier, similar to Dario's excellent "[LibGens](https://github.com/DarioSamo/libgens-sonicglvl)."

Right now it supports the following:

##Hedgehog Engine
- Reading lights.

##Havok
- Reading/Writing XML Havok data.

##Generations/Unleashed
- Reading/Writing uncompressed archives.
- Reading set data.
- Reading/Writing terrain groups.
- Reading/Writing light lists.

##Lost World
- Reading/Writing BINA headers/footers.
- Reading/Writing GISM files.

# HedgeEdit
**IMPORTANT:** Please compile HedgeLib using Visual Studio and the sln file provided before opening HedgeEdit in Unity!
If done correctly, Visual Studio should automatically copy the generated DLL file to the HedgeEdit Assets\Libraries folder.


A Unity-based level editor designed to carry much of the same functionality as "SonicGlvl," but with support for a large number of games in the series, rather than just Generations.

Right now it's a major WIP.

# HedgeTools
A collection of miscellaneous tools that utilize HedgeLib to allow editing a wide array of formats.

Right now this includes the following:

- Hedge Archive Editor
  * A GUI/Command-Line tool that allows editing of archiving formats from all games HedgeLib supports.

- Hedge GISM Editor
  * A GUI tool that allows editing of the Lost World GISM format (basically a list of "Gismos" used by a stage).

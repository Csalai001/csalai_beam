This example mod shows you the basics on how the different systems in BeamNG communicate with eachother, it also teaches you how to structure a mod and how to find things.
It does not show you how to make vehicles since I don't know how to do that.

Throughout each file, you will find comments with some basic explanations.

Things covered in this example:
    Regular extensions
    Vehicle extensions
    UI Apps

    How the systems above can communicate with each other.

    Custom inputs and callbacks


When testing the mod and playing about with it, open the Lua console to see what's happening, that's where things get logged to (I know, it's magic)

If you have noticed, the structure of this mod is similar to the game's. We have a `lua/` and `ui/` folder. Because of this, if we follow the path of a random Lua file in the game directory
and create it in this mod, we can overwrite it. Same goes for vehicles and UI. Note: You cannot publish your mod if you do this since it will cause compatibility issues with future game updates.



To get started, I recommend opening the whole BeamNG folder in an editor (VSCode since you probably have it). Also open this mod in the editor.
You can cross-reference things as you go through this example mod to get a better understanding.

Start off by looking at `exampleMod/lua/ge/extensions/exampleMod.lua` and just go through it. Feel free to mess around with whatever you'd like
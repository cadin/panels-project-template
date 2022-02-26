# Panels Project Template
A starter template for your [Panels](https://github.com/cadin/panels) comic (with examples).


## Setup
This is a [Template Repo](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template). Click "Use this template" to create your own fresh repo with all the contents of this template.

This template includes the Panels framework as a git submodule. Be sure to properly [initialize the submodule](https://www.w3docs.com/snippets/git/how-to-clone-including-submodules.html) when cloning the repo.

If you're not using git, you can download this code as a ZIP file. In that case you'll also need to download the code from the [Panels repo](https://github.com/cadin/panels) and place it in the `source/libraries/panels/` folder of this template.

## Get Started
Edit the table in `source/myComicData.lua` to start building your comic.

Edit `source/main.lua` to add [game credits](http://cadin.github.io/panels/docs/credits-screen) or alter [Panels settings](http://cadin.github.io/panels/docs/settings).

## Documentation

Check out the full set of documentation here:
### [📄 Panels Documentation](//cadin.github.io/panels)


## Examples

This template includes some example sequences to help you get started:

1. **Simple Comic**  
    Create a series of panels with image layers with parallax scrolling.
2. **Animation**  
    Set a layer to animate across the screen as the panel scrolls, or when the user presses a specific button.
3. **Image Transitions**  
    Transition between two images on the same layer based on panel scroll position, or button press.
4. **Custom Functions**  
    Create custom render, advance, and reset functions to take over drawing and behavior of a single panel.
5. **Audio**  
    Play background audio for an entire sequence or a single panel. Trigger a sound effect synced with an animation.

Look in the `source/examples/` folder to find data tables for each sequence.

If you do not need the examples you can delete the entire `examples` folder from your project. Also remove the example assets in `source/images` and `source/audio`.


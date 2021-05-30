# zett-darkstone-editor
An isometric tile selection and placement editor by [Zett Darkstone](https://darkstone.nl) written in MSX BASIC, with modifications by [Filip H.F. "FiXato" Slagter](https://contact.fixato.org).

### E20.bas
* Use `q w e r t y u i` to place corresponding tiles from the first row directly from the placement editor
* Use `Q W E R T Y U I` to place corresponding tiles from the second row directly from the placement editor
* Press `+` or `-` while in the placement editor to adjust the cursor sensitivity
* Press `h` to hide the placement cursor sprite; press `H` to make it visible again
* Refactoring

### E21.bas
* Tile-set selector
* Fixed y-position for hiding tile selector sprite
* Ugly proof-of-concept tile-set for composing faces for avatars.
* Replaced `autoexec.bas` with just a simple `RUN` of the `editor.asc` file which should be the most recent version anyway. Old menu is now at `selEdit.bas`

## TODO:
* Add a help menu with usage instructions (and perhaps display them on the tile-set selector at the start)
* Show a preview of the current tile on its current location (though that might be tricky considering layering...)
* Export options?

## Try online
Want to give it a try, but don't have an emulator installed?
Load the [Editor via WebMSX](https://webmsx.org/?disk=https://github.com/FiXato/zett-darkstone-editor/releases/download/21/z3d-21-fixato.dsk).

# zett-darkstone-editor
An isometric tile selection and placement editor by [Zett Darkstone](https://darkstone.nl) written in MSX BASIC, with modifications by [Filip H.F. "FiXato" Slagter](https://contact.fixato.org).

## Controls
* Use `q w e r t y u i` to place corresponding tiles from the first row directly from the placement editor. `q` is actually an empty block you can use to undo a tile.
* Use `Q W E R T Y U I` to place corresponding tiles from the second row directly from the placement editor.
* Use space bar in the placement editor to place the currently active tile.
* Cursor keys move the placement cursor along the x- and y-axes.
* `z` and `x` (or `Z`) move the placement cursor up and down along the z-axis.
* While in the placement editor press `+` to increase or `-` to reduce the cursor sensitivity.
* Press `h` to hide the placement cursor sprite; press `H` to make it visible again.
* Press `S` (shift+s) in the placement editor to store the current screen to disk as an `.SC5` file.
* Press `c` to open the tile selector.
* Use cursor keys to move the selection cursor around in the tile selector.
* Use space bar to confirm your choice in the tile selector and return to the placement editor. (Top-left item is an empty block to erase tiles.)
* Pressing 'c' in the opening tile file selection menu will now allow you to specify the filename of any *.SC5 file on the disk.
* If a *.CO5 file is present with the same name as the selected .SC5 file, it will automatically be BLOAD'ed as well for its palette colour data.

## Releases
Each significant feature gets its own release as a separate `.BAS` file (and ideally also a `.DSK` file released through GitHub releases)

### 24.bas
* Big refactor and properly store palette info
* Converted tilesets to include their palettes into the SC5 images
* Renamed tilesets to make them more descriptive
* Fixed export so it includes the palette as well in the saved SC5 images
* Exporting pages 1-3 with the same filename as the main canvas image, but with .001-.003 extensions; later on we can use this to also support restoring a previous drawing.
* Reshuffled the code some more into subroutines for a bit better overview.
* Swapped `-` and `+` for adjusting cursor sensitivity around; `-` to reduce sensitivity makes more sense than `+`
* Reduced default cursor sensitivity on turboR machines.
* Added more comments

### 23.bas & 23b.bas
* Fixed issue with filename of stored image and date formats other than Y/M/D.
* Clearing screen at start of programme.
* Added explicit END before the subroutines
* E23b.bas is a bugfix release; if the date was before a certain date, it would result in a filename string that had leading spaces, which caused issues.

### 22.bas
* Save current drawing to .SC5 file with `S` (mind the capital!)

### 21.bas
* Tile-set selector
* Fixed y-position for hiding tile selector sprite
* Ugly proof-of-concept tile-set for composing faces for avatars.
* Replaced `autoexec.bas` with just a simple `RUN` of the `editor.asc` file which should be the most recent version anyway. Old menu is now at `selEdit.bas`

### E20.bas
* Use `q w e r t y u i` to place corresponding tiles from the first row directly from the placement editor
* Use `Q W E R T Y U I` to place corresponding tiles from the second row directly from the placement editor
* Press `+` or `-` while in the placement editor to adjust the cursor sensitivity
* Press `h` to hide the placement cursor sprite; press `H` to make it visible again
* Refactoring

## TODO:
* Add a help menu with usage instructions (and perhaps display them on the tile-set selector at the start).
* Show a preview of the current tile on its current location; though that might be tricky considering layering...
* More Export options?
* Import option?
* Key to make tile you are currently hovering on the active tile
* Key to toggle between current and last-used tile (Enter?)

## Try online
Want to give it a try, but don't have an emulator installed?
Load the [Editor via WebMSX](https://webmsx.org/?disk=https://github.com/FiXato/zett-darkstone-editor/releases/latest/download/z3d-fixato.dsk) or [Editor via WebMSX running as a turbo-R](https://webmsx.org/?MACHINE=MSXTR&disk=https://github.com/FiXato/zett-darkstone-editor/releases/latest/download/z3d-fixato.dsk).

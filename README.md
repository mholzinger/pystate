# pystate
Capture rom save state, save and metadata info for migrating RetroPie data

## Save games & save states
- Find all save games from a specified rom path
- Capture matching rom for save game and hash which matches rom
- Store those values locally (sqlite)

## Box/title art and metadata for rom files
- Locate list of roms and build info on rom art and metadata
- Store those values locally (sqlite)

## Config for roms (if available)
- Locate associated configs for each each core (if applicable mathing specific roms)

## Configure controller presets
- Set differing USB controller types to enable the retroarch menu while in game
- Set default controllers for emulators (analog sticks for psx, snes digital pads for 16 bit)
- Enable controller that launched rom to set itself as default for the session, setting others to shift registers down to secondary, but only for the session which was started

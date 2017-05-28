#!/usr/bin/python

## Save games & save states
# Find all save games from a specified rom path
# Capture matching rom for save game and hash which matches rom
# Store those values locally (sqlite)

## Box/title art and metadata for rom files
# Locate list of roms and build info on rom art and metadata
# Store those values locally (sqlite)

## Config for roms (if available)
# Locate associated configs for each each core (if applicable mathing specific roms)

#--

# Load a game list (use emulationstation to do our work for us)

# Include an XML parser
#import xml.etree.ElementTree
import xml.etree.ElementTree as ET

# Test code, print our game rom list for PlayStation 1
tree = ET.parse('/opt/retropie/configs/all/emulationstation/gamelists/psx/gamelist.xml')
root = tree.getroot()

for game_rom in root.findall('game'):
  game = game_rom.find('path').text
  # Debugging, print out list
  print game

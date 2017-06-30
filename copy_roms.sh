copy_to_path=~/saves
rom_path=~/RetroPie/roms

find "$rom_path"  \( -iname "*.state" -o -iname "*.sav*" -o -iname "*srm" \) -printf '%h\n' -exec mkdir -p -- "$copy_to_path"/{} \;


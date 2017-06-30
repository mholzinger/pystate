copy_to_path=~/saves
rom_path=~/RetroPie/roms

# This copies only the folder path
# find "$rom_path"  \( -iname "*.state" -o -iname "*.sav*" -o -iname "*srm" \) -printf '%h\n' -exec mkdir -p -- "$copy_to_path"/{} \;

# This does an rsync with all the right file extensions
# rsync -a --include '*/' --include '*.mp3' --exclude '*' source/ target/
rsync -a --include '*/' --include '*.srm' --include '*.sav*' --include '*.state' --exclude '*' "$rom_path" "$copy_to_path"

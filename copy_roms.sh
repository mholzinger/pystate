save_copy_path=~/saves
config_copy_path=~/configs

rom_path=~/RetroPie/roms
config_path=/opt/retropie/configs/all/retroarch/config/

# This copies only the folder path
# find "$rom_path"  \( -iname "*.state" -o -iname "*.sav*" -o -iname "*srm" \) -printf '%h\n' -exec mkdir -p -- "$copy_to_path"/{} \;

# This does an rsync with all the right file extensions
# rsync -a --include '*/' --include '*.mp3' --exclude '*' source/ target/
rsync -aL --include '*/' --include '*.srm' --include '*.sav*' --include '*.state' --exclude '*' "$rom_path" "$save_copy_path"


# This does an rsync with all the rom specefic retroarch settings
rsync -aL --include '*/' --include '*.cfg' --exclude '*' "$config_path" "$config_copy_path"

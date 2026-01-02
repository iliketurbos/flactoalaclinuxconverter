# Licensed under the GNU GPLv3
if ! command -v ffmpeg &> /dev/null; then
    echo "Error: ffmpeg is not installed. Please install it first, then try again. (Debian/Ubuntu/Linux Mint:sudo apt install ffmpeg -y Fedora/CentOS Stream:sudo dnf install ffmpeg -y
)
"
    exit 1
fi

echo "Enter the path to the folder containing FLAC file(s):"
read -r input_folder
echo "Enter the path for the ALAC output folder:"
read -r output_folder

mkdir -p "$output_folder"

find "$input_folder" -type f -name '*.flac' -print0 | while IFS= read -r -d '' input_file; do
    
    filename=$(basename "${input_file%.flac}")
    output_file="$output_folder/$filename.m4a"

    ffmpeg -nostdin -n -i "$input_file" -acodec alac -vcodec copy -map_metadata 0 "$output_file" -loglevel error

    if [ $? -eq 0 ]; then
        echo "Successfully converted: $filename"
    else
        echo "Failed or skipped: $filename (Check if it already exists)"
    fi
done

echo "Process complete!"

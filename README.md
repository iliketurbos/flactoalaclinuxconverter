# Lossless FLAC to ALAC converter for Linux

## FAQ

### Is this truly lossless?
Yes, the conversion is completely lossless.

### Will this keep all my tags?
Yes, the line, `-map_metadata 0` explicitly tells the program to take every single metadata entry from the first input file (the FLAC) and write it into the output file (the ALAC).

## How to use

### 1) Download the script

Self explanatory, download the `FLACtoALAC.sh` file, then move it to "Linux Files"

### 2) Download ffmpeg (if not installed already)

Debian/Ubuntu/Linux Mint: `sudo apt install ffmpeg -y`
Fedora/CentOS Stream: `sudo dnf install ffmpeg -y`

### 3) Make the file executable

In terminal, run `cd flactoalacconverter`, then `chmod +x ./FLACtoALAC.sh`

### 4) Make the folders

The folder names don't matter.

### 5) Run the script

Run `./FLACtoALAC.sh`
If you get the error: Error: ffmpeg is not installed. Please install it first, then try again. (Debian/Ubuntu/Linux Mint:sudo apt install ffmpeg -y Fedora/CentOS Stream:sudo dnf install ffmpeg -y) then re-do 2 and come back to the beginning of 5 again. 
Follow the steps, and you should end up with your ALAC's in the provided folder.

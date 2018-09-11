# How do I use zip command to compress a folder?
zip -r filename.zip folder
zip -r filename.zip folder1 folder2
zip -r filename.zip /path/to/folder1 /path/to/file2

# Zip including hidden files
zip -r 1.zip .

# To create compressed archive named data.zip of data folder in the current directory, run:
zip -r data.zip data/

# Simply Unzip
unzip file.zip

# Unzip to folder
unzip file.zip -d destination_folder

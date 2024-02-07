import os
import glob
import sys

folder_path = sys.argv[1]
file_type = sys.argv[2]
desired_slice = int(sys.argv[3])

os.chdir(folder_path)

for file in glob.glob(f"*{file_type}"):
    file_name, extension = os.path.splitext(file)
    new_file_name = f"{file_name[:-desired_slice]}{extension}"
    try:
        os.rename(file, new_file_name)
    except OSError as e:
        print(e)
    else:
        print(f"Rename {file} to {new_file_name}")

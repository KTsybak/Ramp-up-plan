#!/bin/bash
echo "Source: "
read source
echo "Destination: "
read dest 
cp -R "$source"/* "$dest"
echo "Копіювання завершено!"

#!/bin/sh
# http://www.isaced.com/post-247.html

filename="icon.png"

dirname="cutimg"

name_array=("Icon-29.png" "Icon-29@2x.png" "Icon-40@2x.png" "Icon-57.png" "Icon-57@2x.png" "Icon-120.png")
size_array=("29" "58" "80" "57" "114" "120")

mkdir $dirname

for ((i=0;i<${#name_array[@]};++i)); do
    m_dir=$dirname/${name_array[i]}
    cp $filename $m_dir
    sips -Z ${size_array[i]} $m_dir
done

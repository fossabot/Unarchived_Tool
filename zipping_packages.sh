Copyright (C) 2021 BharathKummagoori,


Copyright <YEAR> <COPYRIGHT HOLDER>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


#!/bin/bash

#go to the file where we want to do the sources zipping
#iterate over all the files in the current directory, use a for loop and a glob: 

#Consider also using "shopt -s nullglob" so that an empty directory won't give you a literal '*'.
shopt -s nullglob 

present_dir=$(pwd)
echo "Present working directory is: " $present_dir

#make directory to store the compressed files

mkdir $present_dir"_compressed_files"
new_dir=$present_dir"_compressed_files"

 #   -z : Compress archive using gzip program in Linux or Unix
 #   -c : Create archive on Linux
 #   -v : Verbose i.e display progress while creating archive
 #   -f : Archive File name

compression_format=".zip"

for f in *; do
    [[ -e $f ]] || continue
    echo "Compressing " $f
    zip -r $new_dir/$f$compression_format $f
    #cd $present_dir"_compressed_files"
    #tar -zcvf $f$compression_format $f
    echo "--------------------------------------------------------------------------------------------------------"
done

echo "Process Complete"

#move the compressed files to other folder

echo $new_dir
#mv *\.zip* $new_dir/

#comparing the sources before zipping and after zipping 





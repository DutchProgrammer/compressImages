# compressImages
Compress jpg, jpeg and png

### centos 6 and 7
`yum install epel-release`

### install optipng
`yum install optipng`

###install pngcrush
`yum install pngcrush`

###install jpegoptim
`yum install jpegoptim`


###install advpng
Download lastest version (tar.gz)
http://www.advancemame.it/comp-download.html

`wget https://github.com/amadvance/advancecomp/releases/download/v1.20/advancecomp-1.20.tar.gz`

`tar -zxvf advancecomp-1.20.tar.gz`

`cd advancecomp-1.20`

`./configure`

`sudo make && sudo make install`



### Example script
see [example.sh](example.sh)

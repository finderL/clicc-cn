$ cd temp
$ cp iamcool.txt neat.txt
$ ls
iamcool.txt	neat.txt
$ cp neat.txt awesome.txt
$ ls
awesome.txt	iamcool.txt	neat.txt
$ cp awesome.txt thefourthfile.txt
$ ls
awesome.txt		iamcool.txt		neat.txt		thefourthfile.txt
$ mkdir something
$ cp awesome.txt something/
$ ls
awesome.txt		iamcool.txt		neat.txt		something		thefourthfile.txt
$ ls something/
awesome.txt
$ cp -r something newplace
$ ls newplace/
awesome.txt
$

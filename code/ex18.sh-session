$ cd temp
$ cat > newfile.txt
This is a new file.
This is a new file.
This is a new file.
$ cat > oldfile.txt
This is a old file.
This is a old file.
This is a old file.
$ grep new *.txt
newfile.txt:This is a new file.
newfile.txt:This is a new file.
newfile.txt:This is a new file.
$ grep old *.txt
oldfile.txt:This is a old file.
oldfile.txt:This is a old file.
oldfile.txt:This is a old file.
$ grep file *.txt
newfile.txt:This is a new file.
newfile.txt:This is a new file.
newfile.txt:This is a new file.
oldfile.txt:This is a old file.
oldfile.txt:This is a old file.
oldfile.txt:This is a old file.
$

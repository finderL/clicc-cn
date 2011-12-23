> cd temp
> echo > newfile.txt

cmdlet Write-Output at command pipeline position 1
Supply values for the following parameters:
InputObject[0]: This is a new file.
InputObject[1]: This is a new file.
InputObject[2]: This is a new file.
InputObject[3]:
> echo > oldfile.txt

cmdlet Write-Output at command pipeline position 1
Supply values for the following parameters:
InputObject[0]: This is a old file.
InputObject[1]: This is a old file.
InputObject[2]: This is a old file.
InputObject[3]:
> select-string new *.txt

newfile.txt:1:This is a new file.
newfile.txt:2:This is a new file.
newfile.txt:3:This is a new file.


> select-string old *.txt

oldfile.txt:1:This is a old file.
oldfile.txt:2:This is a old file.
oldfile.txt:3:This is a old file.


> select-string file *.txt

newfile.txt:1:This is a new file.
newfile.txt:2:This is a new file.
newfile.txt:3:This is a new file.
oldfile.txt:1:This is a old file.
oldfile.txt:2:This is a old file.
oldfile.txt:3:This is a old file.


>

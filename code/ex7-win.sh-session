PS C:\Users\zed> cd temp
PS C:\Users\zed\temp> ls


    Directory: C:\Users\zed\temp


Mode                LastWriteTime     Length Name
----                -------------     ------ ----
d----        12/17/2011   9:03 AM            stuff


PS C:\Users\zed\temp> cd stuff/things/frank/joe/alex/john/
PS C:\Users\zed\temp\stuff\things\frank\joe\alex\john> cd ..
PS C:\Users\zed\temp\stuff\things\frank\joe\alex> rmdir john
PS C:\Users\zed\temp\stuff\things\frank\joe\alex> cd ..
PS C:\Users\zed\temp\stuff\things\frank\joe> rmdir alex
PS C:\Users\zed\temp\stuff\things\frank\joe> cd ..
PS C:\Users\zed\temp\stuff\things\frank> rmdir joe
PS C:\Users\zed\temp\stuff\things\frank> cd ..
PS C:\Users\zed\temp\stuff\things> rmdir frank
PS C:\Users\zed\temp\stuff\things> cd ..
PS C:\Users\zed\temp\stuff> ls


    Directory: C:\Users\zed\temp\stuff


Mode                LastWriteTime     Length Name
----                -------------     ------ ----
d----        12/17/2011   9:14 AM            things


PS C:\Users\zed\temp\stuff> rmdir things
PS C:\Users\zed\temp\stuff> cd ..
PS C:\Users\zed\temp> ls


    Directory: C:\Users\zed\temp


Mode                LastWriteTime     Length Name
----                -------------     ------ ----
d----        12/17/2011   9:14 AM            stuff


PS C:\Users\zed\temp> rmdir stuff
PS C:\Users\zed\temp> pwd

Path
----
C:\Users\zed\temp


PS C:\Users\zed\temp> cd ..
PS C:\Users\zed>

> get-childitem Env:

Name                           Value
----                           -----
APPDATA                        C:\Users\zed\AppData\Roaming
COMPUTERNAME                   ZED-PC
...


> $env:TESTING = "bada bada bing"
> $env:TESTING
bada bada bing
> remove-item Env:\TESTING
> get-childitem Env: | select-string TESTING
>

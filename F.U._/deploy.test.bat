set zip=C:\Code\Production\Packages\Admin-Release-000.000.000.000.zip
::set site="WebSite"
::set host=192.168.1.13
::set configDir=demo\.lynda\.com\\Website

set site="latest"
set host=ldc-webdev1.ldcint.com
set configDir=demo\.lynda\.com\\Admin

"%ProgramFiles%\IIS\Microsoft Web Deploy V2\msdeploy.exe" -verb:sync -source:package=%zip% -skip:objectname=filepath,absolutepath=__configuration -replace:objectName=filepath,match=.*__configuration\\%configDir%\\Web.Config,replace=Web.Config -replace:objectName=filepath,match=.*__configuration\\%configDir%\\App_Data\\APISettings.xml,replace=App_Data\\APISettings.xml -replace:objectName=filepath,match=.*__configuration\\%configDir%\\App_Data\\log4net.xml,replace=App_Data\\log4net.xml -dest:contentPath=%site%,computername=%host%

:: Demo-   "Admin", "Author", "Mobile", "WebSite"
:: Stage-  "Admin", "Admin2", "AuthorPortal", "Public", "PublicC"

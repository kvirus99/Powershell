#Install-Language en-GB 
#-CopyToSettings -Verbose

# Import 'International' module to Powershell session
Import-Module International

# Set regional format
Set-Culture en-GB
#Sets displays the UI language
Set-WinUILanguageOverride -Language en-GB
Set-WinUserLanguageList en-GB -Force
#Set system-locle settings to United Kingdom/Great Briton 
Set-WinSystemLocale -SystemLocale en-GB
#Set Location to United Kingdom/ Great Briton 
Set-WinHomeLocation -GeoId 242
#set time zone to GMT
Set-TimeZone -id "GMT Standard Time"
#Sets the System Preferred UI Language to English UK
Set-SystemPreferredUILanguage en-GB
#Restarts the clients device 
#shutdown.exe /r

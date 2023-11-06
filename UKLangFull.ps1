#Install-Language en-GB 
#-CopyToSettings -Verbose

# Import 'International' module to Powershell session
Import-Module International

#install UK Eng language pack
Install-Language en-GB -CopyToSettings -Verbose

#Sets displays the UI language
Set-WinUILanguageOverride -Language en-GB

#resrt computer and continue script 
restart-computer -wait

#Adds Language list 
$lanlist = New-WinUserLanguageList en-GB
Set-WinUserLanguageList $lanlist -Force -Verbose

#resrt computer and continue script 
restart-computer -wait
# Set regional format
Set-Culture en-GB

#Set system-locle settings to United Kingdom/Great Briton 
Set-WinSystemLocale -SystemLocale en-GB
#Set Location to United Kingdom/ Great Briton 
Set-WinHomeLocation -GeoId 242
#set time zone to GMT
Set-TimeZone -id "GMT Standard Time"
#Sets the System Preferred UI Language to English UK
Set-SystemPreferredUILanguage en-GB
#copy the setting system accounts, new users + welcome screen
Copy-UserInternationalSettingsToSystem -WelcomeScreen $True -NewUser $True

write-output "UK Language Script worked" | out-file c:\Scripts\output.txt


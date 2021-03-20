configuration Rob {

    
    Import-DscResource -Module PSDesiredStateConfiguration
    Import-DscResource -Module xPSDesiredStateConfiguration
    Import-DscResource -Module ComputerManagementDsc
    Import-DscResource -Module UpdateServicesDsc
    Import-DscResource -Module NetworkingDsc
    Import-DscResource -Module DscR_FileContent
    Import-DscResource -Module Dscr_LogonScript

    node localhost {


        xRemoteFile BginfoExe 
        {
            DestinationPath = 'C:\BGInfo\Bginfo.exe'
            Uri = 'https://github.com/logicaldevelopments/Public/raw/main/BGInfo/Bginfo.exe'
        }

        xRemoteFile Bginfo64Exe 
        {
            DestinationPath = 'C:\BGInfo\Bginfo64.exe'
            Uri = 'https://github.com/logicaldevelopments/Public/raw/main/BGInfo/Bginfo64.exe'
        }

        xRemoteFile LogonBGI 
        {
            DestinationPath = 'C:\BGInfo\logon.bgi'
            Uri = 'https://github.com/logicaldevelopments/Public/raw/main/BGInfo/logon.bgi'
        }

            
        Registry BGInfoRegKey {
            Key = 'HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run'
            ValueName = 'BgInfo'
            Ensure = 'Present'
            ValueData = 'C:\BgInfo\Bginfo64.exe C:\BgInfo\logon.bgi /timer:0 /nolicprompt'
        }

        Script RungBGInfo
        {
            GetScript = {
                #Do Nothing
            }
   
            SetScript = {
                C:\BgInfo\Bginfo64.exe C:\BgInfo\logon.bgi /timer:0 /nolicprompt
            }
   
            TestScript = {
                $false
            }
         }



    }




}

rob -outputpath C:\DSC -verbose
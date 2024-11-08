Do {

# Enter ROM Path
$path = Read-Host "Enter ROM Path"

# Change directory to path
pushd $path

# BIOS Rom Folder

# Expected path to BIOS folder
$biosFolder = "$path\BIOS"
$biosRoms = dir $path | Where-Object { $_.Name -match "\b(BIOS)\b" }

    if($biosRoms.exists){


            if(!(Test-Path $biosFolder)){

                Write-Output "BIOS Roms Found"
                # Create BIOS folder
                Write-Output "Creating BIOS Directory"
                New-Item -Path $path -Name "BIOS" -ItemType "directory"

            }

                # Move BIOS Roms to BIOS folder
                Write-Output "Moving BIOS Roms to BIOS folder"
               $biosRoms | Move-Item -Destination $biosFolder -Force


    } else {


}

# DLC Content Folder

# Expected path to DLC folder
$DLCFolder = "$path\DLC"
$DLCRoms = dir $path | Where-Object { $_.Name -match "\b(DLC)\b" -or $_.Name -match "\b(Theme)\b" -or $_.Name -match "\b(Avatar)\b" -or $_.Name -match "\b(Soundtrack)\b" }

    if($DLCRoms.exists){

        if(!(Test-Path $DLCFolder)){

                Write-Output "DLC Content Found"
                # Create DLC folder
                Write-Output "Creating DLC Content Directory"
                New-Item -Path $path -Name "DLC" -ItemType "directory"

        }

        
                # Move DLC Content to DLC folder
                Write-Output "Moving DLC Content to DLC folder"
                $DLCRoms | Move-Item -Destination $DLCFolder -Force


    } else {


    }

# Beta Rom Folder

# Expected path to Beta folder
$betaFolder = "$path\Beta"
$betaRoms = dir $path | Where-Object { $_.Name -match "\b(Beta)\b" }

    if($betaRoms.exists){

        if(!(Test-Path $betaFolder)){

                Write-Output "Beta Roms Found"
                # Create Beta folder
                Write-Output "Creating Beta Rom Directory"
                New-Item -Path $path -Name "Beta" -ItemType "directory"

        }

        
                # Move Beta Roms to Beta folder
                Write-Output "Moving Beta Roms to Beta folder"
                $betaRoms | Move-Item -Destination $betaFolder -Force


    } else {


    }

# Demo Rom Folder

# Expected path to Demo folder
$demoFolder = "$path\Demo"
$demoRoms = dir $path -file | Where-Object { $_.Name -match "\b(Demo)\b" }

    if($demoRoms.exists){


        if(!(Test-Path $demoFolder)){

                Write-Output "Demo Roms Found"
                # Create Demo folder
                Write-Output "Creating Demo Directory"
                New-Item -Path $path -Name "Demo" -ItemType "directory"

        }

                
                # Move Demo Roms to Demo folder
                Write-Output "Moving Demo Roms to Demo folder"
               $demoRoms | Move-Item -Destination $demoFolder -Force


    } else {


    }

# Program Rom Folder

# Expected path to Program folder
$programFolder = "$path\Program"
$programRoms = dir $path -file | Where-Object { $_.Name -match "\b(Program)\b" }

    if($programRoms.exists){

        if(!(Test-Path $programFolder)){

                Write-Output "Program Roms Found"
                # Create Program folder
                Write-Output "Creating Program Rom Directory"
                New-Item -Path $path -Name "Program" -ItemType "directory"

        }

        
                # Move Program Roms to Program folder
                Write-Output "Moving Program Roms to Program folder"
                $programRoms | Move-Item -Destination $programFolder -Force


    } else {


    }


# Prototype Rom Folder

# Expected path to Prototype folder
$protoFolder = "$path\Prototype"
$protoRoms = dir $path | Where-Object { $_.Name -match "\b(Proto)\b" -or $_.Name -match "\b(Prototype)\b" }

    if($protoRoms.exists){

        if(!(Test-Path $protoFolder)){

                Write-Output "Prototype Roms Found"
                # Create Prototype folder
                Write-Output "Creating Prototype Rom Directory"
                New-Item -Path $path -Name "Prototype" -ItemType "directory"

        }

        
                # Move Prototype Roms to Prototype folder
                Write-Output "Moving Prototype Roms to Prototype folder"
                $protoRoms | Move-Item -Destination $protoFolder -Force


    } else {


    }

# Unknown Rom Folder

# Expected path to Unknown folder
$unkFolder = "$path\Unknown"
$unkRoms = dir $path | Where-Object { $_.Name -match "\b(Unknown)\b" }

    if($unkRoms.exists){

        if(!(Test-Path $unkFolder)){

                Write-Output "Unknown Roms Found"
                # Create Unknown folder
                Write-Output "Creating Unknown Rom Directory"
                New-Item -Path $path -Name "Unknown" -ItemType "directory"

        }

        
                # Move Unknown Roms to Demo folder
                Write-Output "Moving Unknown Roms to Unknown folder"
                $unkRoms | Move-Item -Destination $unkFolder -Force


    } else {


    }

# North America Rom Folder

# Expected path to North America folder
$NAFolder = "$path\North America"
$NARoms = dir $path | Where-Object { $_.Name -match "\b(USA)\b" -or $_.Name -match "\b(World)\b" -or $_.Name -match "\b(Canada)\b" -or $_.Name -match "\b(Mexico)\b" }

    if($NARoms.exists){

        if(!(Test-Path $NAFolder)){

                Write-Output "North America Roms Found"
                # Create North America folder
                Write-Output "Creating North America Rom Directory"
                New-Item -Path $path -Name "North America" -ItemType "directory"

        }

        
                # Move North America Roms to North America folder
                Write-Output "Moving North America Roms to North America folder"
                $NARoms | Move-Item -Destination $NAFolder -Force


    } else {


}

# Japan Rom Folder

# Expected path to Japan folder
$japanFolder = "$path\Japan"
$japanRoms = dir $path | Where-Object { $_.Name -match "\b(Japan)\b" }

    if($japanRoms.exists){

        if(!(Test-Path $japanFolder)){

                Write-Output "Japan Roms Found"
                # Create Japan folder
                Write-Output "Creating Japan Rom Directory"
                New-Item -Path $path -Name "Japan" -ItemType "directory"

        }

        
                # Move Japan Roms to Japan folder
                Write-Output "Moving Japan Roms to Japan folder"
                $japanRoms | Move-Item -Destination $japanFolder -Force


    } else {


    }

# Europe Rom Folder

# Expected path to Europe folder
$europeFolder = "$path\Europe"
$europeRoms = dir $path | Where-Object { $_.Name -match "\b(Europe)\b" -or $_.Name -match "\b(Germany)\b" -or $_.Name -match "\b(Poland)\b" -or $_.Name -match "\b(Belgium)\b" -or $_.Name -match "\b(United Kingdom)\b" -or $_.Name -match "\b(UK)\b" -or $_.Name -match "\b(Italy)\b" -or $_.Name -match "\b(France)\b" -or $_.Name -match "\b(Spain)\b" -or $_.Name -match "\b(Sweden)\b" -or $_.Name -match "\b(Scandinavia)\b" -or $_.Name -match "\b(Netherlands)\b" -or $_.Name -match "\b(Russia)\b" -or $_.Name -match "\b(Denmark)\b" -or $_.Name -match "\b(Greece)\b" -or $_.Name -match "\b(Australia)\b" }

    if($europeRoms.exists){

        if(!(Test-Path $europeFolder)){

                Write-Output "Europe Roms Found"
                # Create Europe folder
                Write-Output "Creating Europe Rom Directory"
                New-Item -Path $path -Name "Europe" -ItemType "directory"

        }

        
                # Move Europe Roms to Europe folder
                Write-Output "Moving Europe Roms to Europe folder"
                $europeRoms | Move-Item -Destination $europeFolder -Force


    } else {


    }

# South America Rom Folder

# Expected path to South America folder
$SouthAmericaFolder = "$path\South America"
$SouthAmericaRoms = dir $path | Where-Object { $_.Name -match "\b(Brazil)\b" -or $_.Name -match "\b(Argentina)\b" -or $_.Name -match "\b(Portugal)\b" -or $_.Name -match "\b(Latin America)\b" }

    if($SouthAmericaRoms.exists){

        if(!(Test-Path $SouthAmericaFolder)){

                Write-Output "South America Roms Found"
                # Create Brazil folder
                Write-Output "Creating South America Rom Directory"
                New-Item -Path $path -Name "South America" -ItemType "directory"

        }

        
                # Move Brazil Roms to South America folder
                Write-Output "Moving South America Roms to South America folder"
                $SouthAmericaRoms | Move-Item -Destination $SouthAmericaFolder -Force


    } else {


    }


# Asia  Rom Folder

# Expected path to Asia  folder
$AsiaFolder = "$path\Asia"
$AsiaRoms = dir $path | Where-Object { $_.Name -match "\b(Asia)\b" -or $_.Name -match "\b(Korea)\b" -or $_.Name -match "\b(Hong Kong)\b" -or $_.Name -match "\b(China)\b" -or $_.Name -match "\b(Taiwan)\b" -or $_.Name -match "\b(India)\b" }

    if($AsiaRoms.exists){

        if(!(Test-Path $AsiaFolder)){

                Write-Output "Asia Roms Found"
                # Create Asia folder
                Write-Output "Creating Asia Rom Directory"
                New-Item -Path $path -Name "Asia" -ItemType "directory"

        }

        
                # Move Asia Roms to Asia folder
                Write-Output "Moving Asia Roms to Asia folder"
                $AsiaRoms | Move-Item -Destination $AsiaFolder -Force


    } else {


    }

} While ($True)
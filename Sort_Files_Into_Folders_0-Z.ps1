$ErrorActionPreference = "SilentlyContinue"

Do {
# Set the source folder path
#$sourceFolder = "\\192.168.1.8\Video_Games\Console\Sony\Playstation\Demo"
$sourceFolder = Read-Host "Enter ROM Path"

# Get all files in the source folder
$files = Get-ChildItem -Path $sourceFolder -Recurse

# Loop through each file and move it to the appropriate folder

foreach ($file in $files) {

    # Get the first character of the file name
    $firstCharacter = $file.Name.Substring(0, 1)

    # Determine the destination folder based on the first character
    if ($firstCharacter -match "[0-9]") {

        $destinationPath = Join-Path $sourceFolder "0-9"

    } else {

        $destinationPath = Join-Path $sourceFolder $firstCharacter.ToUpper()

    }

    # Create the destination folder if it doesn't exist
    if (!(Test-Path $destinationPath)) {

        New-Item -ItemType Directory -Path $destinationPath

    }

    # Move the file to the destination folder
    Move-Item -Path $file.FullName -Destination $destinationPath
}

Write-Host "Files moved successfully!"

} While ($true)
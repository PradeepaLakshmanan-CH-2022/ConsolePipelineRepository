# Set the application path
$consoleAppPath = "C:\ConsoleApp\src\ConsolePipelineRepository"

# Specify the path for the output file
$outputFilePath = "C:\Outputfile\Output.txt"

# Get the current timestamp
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Run the console application and capture the output
$output = & "dotnet" run --no-restore --no-build --project "$consoleAppPath" 2>&1

# Create the output string with timestamp and output
$outputContent = "Pipeline triggered at: $timestamp`n"
$outputContent += "Console application output:`n"
$outputContent += $output
$outputContent += "`n"

# Write the output to the output file
$outputContent | Out-File -FilePath $outputFilePath -Encoding UTF8

# Read the output file and display its contents
$outputContent = Get-Content -Path $outputFilePath -Raw
Write-Host "Console application output:"
Write-Host $outputContent

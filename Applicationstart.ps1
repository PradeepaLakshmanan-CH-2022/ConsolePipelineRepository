# Stop the console application if it's already running
Get-Process -Name "ConsolePipelineRepository" -ErrorAction SilentlyContinue | Stop-Process -Force

# Set the application path
$consoleAppPath = "C:\HomeApplication\src\ConsolePipelineRepository"

# Specify the path for the output file
$outputFilePath = "C:\Outputfile\Output.txt"

# Get the current timestamp
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Create the output string with timestamp
$outputContent = "Pipeline triggered at: $timestamp`n"

# Run the console application and capture the output
$output = & "dotnet" run --no-restore --no-build --project "$consoleAppPath" 2>&1

# Write the output to the output file
$output | Out-File -FilePath $outputFilePath -Encoding UTF8

# Read the output file and display its contents
$outputContent = Get-Content -Path $outputFilePath -Raw
Write-Host "Console application output:"
Write-Host $outputContent

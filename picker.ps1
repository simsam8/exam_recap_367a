# PowerShell script to randomly display a .md file from a directory

# Set the directory (change path if needed)
$dir = ".\papers\"

# Get all .md files in the directory
$files = Get-ChildItem -Path $dir -Filter "*.md" -File

# Check if any files were found
if ($files.Count -eq 0) {
    Write-Output "No markdown files found in $dir"
    exit 1
}

# Pick a random file
$randomFile = Get-Random -InputObject $files

# Output the file name and contents
Write-Output "Displaying: $($randomFile.FullName)"
Get-Content $randomFile.FullName

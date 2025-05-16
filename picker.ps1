# PowerShell script to randomly display a .pdf file from a directory

# Set the directory (change path if needed)
$dir = ".\pdfs\"

# Get all .pdf files in the directory
$files = Get-ChildItem -Path $dir -Filter "*.pdf" -File

# Check if any files were found
if ($files.Count -eq 0) {
    Write-Output "No PDF files found in $dir"
    exit 1
}

# Pick a random file
$randomFile = Get-Random -InputObject $files

# Output the file name and open file
Write-Output "Opening: $($randomFile.FullName)"
Start-Process -FilePath $randomFile.Fullname

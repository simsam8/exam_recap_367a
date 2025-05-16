# PowerShell script to randomly display a .pdf file and preview its markdown title

# Set the directories
$pdfDir = ".\pdfs\"
$markdownDir = ".\papers\"

# Get all .pdf files in the directory
$pdfFiles = Get-ChildItem -Path $pdfDir -Filter "*.pdf" -File

# Check if any files were found
if ($pdfFiles.Count -eq 0) {
    Write-Output "No PDF files found in $pdfDir"
    exit 1
}

# Pick a random .pdf file
$randomPdf = Get-Random -InputObject $pdfFiles
$baseName = [System.IO.Path]::GetFileNameWithoutExtension($randomPdf.Name)

# Construct corresponding markdown file path
$markdownPath = Join-Path $markdownDir "$baseName.md"

# Display the first line of the markdown file, if it exists
if (Test-Path $markdownPath) {
    Write-Host "Displaying title for: $markdownPath"
    Write-Host "------------------------------"
    Get-Content $markdownPath -TotalCount 1
    Write-Host "------------------------------"
} else {
    Write-Host "No corresponding markdown file found for $baseName"
}

# Wait for user input
Read-Host -Prompt "Press Enter to open the PDF..."

# Open the PDF
Start-Process -FilePath $randomPdf.FullName

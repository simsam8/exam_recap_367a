@echo off
setlocal enabledelayedexpansion
set "pdfDir=pdfs"
set "markdownDir=papers"
set count=0

for %%F in ("%pdfDir%\*.pdf") do (
    set /a count+=1
    set "file[!count!]=%%~nxF"
)

if %count%==0 (
    echo No PDF files found in %pdfDir%
    exit /b 1
)

set /a rand=(%RANDOM% %% count) + 1
set "selectedPdf=!file[%rand%]!"

for %%F in ("%selectedPdf%") do set "baseName=%%~nF"

set "markdownFile=%markdownDir%\%baseName%.md"

if exist "%markdownFile%" (
    echo Displaying title for: %markdownFile%
    echo ------------------------------
    for /f "usebackq delims=" %%A in ("%markdownFile%") do (
        echo %%A
        goto :breakloop
    )
    :breakloop
    echo ------------------------------
) 

set /p dummy=Press Enter to open the PDF...

start "" "%pdfDir%\%selectedPdf%"

endlocal
param(
  [string]$InputFile = "input.ini",
  [string]$OutputFile = "output.ini" 
)

$input = Get-Content $InputFile

$lines = $input -split '\r?\n'
$new_lines = @()

foreach ($line in $lines) {
    if ($line -match '\\n') {
        $parts = $line -split ' = '
        $key = $parts[0]
        $value = $parts[1] -replace '\\n', "`n"
        $value = "<<<END`n$value`nEND"
        $new_lines += "$key = $value"
    }
    else {
        $new_lines += $line
    }
}

$output = $new_lines -join [Environment]::NewLine

Set-Content -Path $OutputFile -Value $output
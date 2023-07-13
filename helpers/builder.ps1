$logo = "https://csit.s3.amazonaws.com/PICS/Brand+CSN+Pulseqwk.png"
$CsvPath = "C:\Users\$User\Downloads\Security Updates 2023-07-13-114240am.csv"
$report = "2023-Jul"
# Generate email content
$HTMLReport = Get-PatchTuesdayReport -csvpath $CsvPath -DateId $Report -LogoUrl $logo -Verbose
$HTMLReport | Out-File C:\temp\$($report).html
Start-Process C:\temp\$($report).html
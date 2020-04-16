function Send-Test{
    param(
    [string]$from, 
    [string]$to,
    [string]$cc,
    [string]$subject,
    [string]$body,
    [string]$server,
    [string]$port
    )
    Send-MailMessage -From $from -To $to -Cc $cc -Subject $subject -Body $body -SmtpServer $server -Port $port -UseSsl -Credential (Get-Credential)
}

Send-Test -from "mail" -to "mail" -cc "mail" -subject "TEST Args" -body "TEST BODY EMAIL" -server "outlook.office365.com" -port "587"

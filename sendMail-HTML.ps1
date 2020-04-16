function buildHtmlBody{
    [string]$body = "
    <h1>TITLE</h1><br>
    <b>Sub Title</b><br>
    <span>this is email body content</span>
    "
    return $body
}

function Send-Mail{
    param(
    [string]$from, 
    [string]$to,
    [string]$cc,
    [string]$subject,
    [string]$server,
    [string]$port
    )
    $body=buildHtmlBody
    Send-MailMessage -From $from -To $to -Cc $cc -Subject $subject -Body $body -BodyAsHtml -SmtpServer $server -Port $port -UseSsl -Credential (Get-Credential)
}
Send-Mail -from "mail" -to "mail" -cc "mail" -subject "TEST Args"  -server "outlook.office365.com" -port "587"
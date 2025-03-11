$scriptDirectory = $PSScriptRoot

$CSV =  Import-Csv -Path "$scriptDirectory\name.csv" -Delimiter ";" -Encoding UTF8

$banner = "
 █████  ███████  ██████         █████  ██████  ██    ██ ███████ ███████ ██████   ██████  ███████ ███    ██ 
██   ██ ██      ██             ██   ██ ██   ██ ██    ██ ██      ██      ██   ██ ██       ██      ████   ██ 
███████ ███████ ██   ███ █████ ███████ ██   ██ ██    ██ ███████ █████   ██████  ██   ███ █████   ██ ██  ██ 
██   ██      ██ ██    ██       ██   ██ ██   ██ ██    ██      ██ ██      ██   ██ ██    ██ ██      ██  ██ ██ 
██   ██ ███████  ██████        ██   ██ ██████   ██████  ███████ ███████ ██   ██  ██████  ███████ ██   ████ 
                                                                                                           
                                                                                                           
"

$pass = "Merc1234!"
$securePass = ConvertTo-SecureString $pass -AsPlainText -Force

write-host "$banner"

$loop1 = read-host "Hvor Mange Bruger?"
$Domain = read-Host "Hvad hedder domain name?"
$TLDvar = read-Host "Hvad er Top Level domæne?"
$OUVar = read-host "Hvilken OU?"

$OUnavn = "OU=$OUVar,DC=$Domain,DC=$TLDvar"

try {
    Get-ADOrganizationalUnit -Identity $OUnavn -ErrorAction Stop
} catch {
    Write-Host "OU ikke fundet eller excistere ikke"
    $OUMVAR = Read-Host "Vil Oprette OU? [y/n]"

    if ($OUMVAR -eq "y") {
        New-ADOrganizationalUnit -Name "$OUVAR" `
        -Path "DC=$Domain,DC=$TLDvar" `
        -ProtectedFromAccidentalDeletion $False `
        } 

    elseif ($OUMVAR -eq "n") {
        Write-Host "Det vil måske ikke virke at oprette bruger."
    }
    
}

$OU2VAR = Read-Host "Vil du oprette en mere OU inden i? [y/n]"

if($OU2VAR -eq "y") {
    $OUnavn2 = Read-Host "Hvad skal den hede?"
    
    $path = "OU=$OUVAR,DC=$Domain,DC=$TLDvar"
    New-ADOrganizationalUnit -Name "$OUnavn2" `
     -Path "$path" `
     -ProtectedFromAccidentalDeletion $False `

    $PATH2 = "OU=$OUnavn2,OU=$OUVAR,DC=$Domain,DC=$TLDvar"
}
elseif($OU2VAR -eq "n") {
    $PATH2 = "OU=$OUVAR,DC=$Domain,DC=$TLDvar"
}

$securitygroup = read-host "Hvilken security gruppe?"

try {
    Get-ADGroup -Identity $securitygroup -ErrorAction Stop
} catch {
    Write-Host "Securitygroup ikke fundet eller excistere ikke"
    $SCMVAR = Read-Host "Vil Oprette Security Group? [y/n]"

    if ($SCMVAR -eq "y") {
        New-ADGroup -Name "$securitygroup" -Groupcategory "Security" -Groupscope "Global" -Path "$PATH2"
    } 
    elseif ($SCMVAR -eq "n") {
        Write-Host "Det vil måske ikke virke at oprette bruger."
    }
    
}

Write-Host ""

for ($i = 0; $i -lt $loop1; $i++) {

    $Navn = $CSV | Get-Random | Select-Object -ExpandProperty Fnavn
    $Efternavn = $CSV | Get-Random | Select-Object -ExpandProperty EFnavn

    $FN = $Navn.Substring(0, 2).ToUpper()
    $EFN = $Efternavn.Substring(0, 3).ToUpper() 

    if ([string]::IsNullOrEmpty($Navn)) { $Navn = "UnknownFirst" }
    if ([string]::IsNullOrEmpty($Efternavn)) { $Efternavn = "UnknownLast" }

    $SAMNavn = "$FN$EFN"
    
    New-ADUser -SamAccountName "$SAMNavn" `
    -UserPrincipalName "$SAMNavn@$Domain.$TLDvar" `
    -Name "$Navn $Efternavn" `
    -GivenName "$Navn" `
    -Surname "$Efternavn" `
    -DisplayName "$Navn $Efternavn" `
    -Initials "$SAMNavn" `
    -Path "$PATH2" `
    -AccountPassword $securePass `
    -Enabled $true

    Add-ADGroupMember -Identity "$securitygroup" -Members "$SAMNavn"

    Write-Host "Initialer er:" "$SAMNavn" 
    Write-Host "Navn: $Navn"
    Write-Host "Efternavn: $Efternavn"
    Write-Host "Adgangskode: $Pass"
    Write-Host "Group: $securitygroup"
    Write-Host ""
}

Pause

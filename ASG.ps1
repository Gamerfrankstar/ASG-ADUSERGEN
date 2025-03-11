$DN = @(
    "Anders", "Bent", "Carl", "David", "Erik", "Frederik", "Gert", "Henrik", "Ib", "Jens",
    "Karl", "Lars", "Mads", "Niels", "Ole", "Per", "Rasmus", "Soren", "Thomas", "Uffe",
    "Viggo", "William", "Xander", "Zacharias", "Alexander", "Benjamin", "Christian", "Daniel", "Emil", "Fabian",
    "Gustav", "Holger", "Ivar", "Jakob", "Kristian", "Loke", "Magnus", "Nicklas", "Oscar", "Peder",
    "Rene", "Simon", "Tobias", "Ulrik", "Viktor", "Walter", "Zane", "Asger", "Bjorn", "Casper",
    "Dennis", "Elliot", "Finn", "Gunnar", "Herman", "Ingvar", "Jonas", "Kai", "Leif", "Mikkel",
    "Nikolaj", "Otto", "Palle", "Rune", "Steen", "Theodor", "Ulf", "Valdemar", "Willem",
    "Xavi", "Ymir", "Zander","Amalie", "Benedikte", "Caroline", "Ditte", "Eva", "Freja", "Gitte", "Hanne", "Ingrid", "Jette",
    "Kirsten", "Lene", "Mette", "Nina", "Olea", "Pernille", "Rosa", "Signe", "Tina", "Ulla",
    "Vibeke", "Wendy", "Alma", "Birgitte", "Charlotte", "Diana", "Elisabeth", "Greta", "Hilda", "Isabel",
    "Josefine", "Karoline", "Lilly", "Maja", "Nora", "Olivia", "Pia", "Rikke", "Sofie", "Tilde",
    "Vera", "Wanda", "Xandra", "Yasmin", "Zelda", "Asta", "Britta", "Clara", "Dagmar", "Ellen",
    "Frida", "Gerda", "Hedvig", "Iben", "Johana", "Kaja", "Lise", "Miriam", "Priscilla", "Rosita",
    "Sonja", "Thilde", "Ursula", "Vivi", "Wera", "Annelise", "Bente", "Camilla", "Edel", "Fanny",
    "Gunda", "Helle", "Ida", "Jasmine", "Kirstine", "Liselotte", "Magda", "Nadja",
    "Alexander", "Bastian", "Christian", "David", "Florian", "Georg", "Heinrich", "Jan", "Lukas", "Maximilian",
    "Niklas", "Otto", "Peter", "Ralf", "Stefan", "Thorsten", "Uwe", "Vincent", "Adrian", "Benjamin",
    "Clemens", "Dominik", "Elias", "Felix", "Gregor", "Hermann", "Igor", "Jorg", "Kurt", "Leon",
    "Matthias", "Nils", "Oliver", "Philipp", "Rainer", "Simon", "Tobias", "Ulrich", "Valentin", "Wolfgang",
    "Xenon", "Yves","Anna", "Berta", "Clara", "Diana", "Eva", "Franziska", "Gisela", "Hannah", "Isabelle", "Julia",
    "Klara", "Lena", "Maja", "Nina", "Olivia", "Paula", "Rosa", "Sophie", "Theresa", "Ursula",
    "Vera", "Wendy", "Adelaide", "Brigitte", "Caroline", "Dorothea", "Elisabeth", "Felicitas", "Greta",
    "Hilda", "Iris", "Jasmin", "Kirsten", "Lieselotte", "Miriam", "Nadine", "Olga", "Priscilla", "Rita",
    "Sonja", "Tina", "Ulla", "Vivi", "Wera", "Yasmin","Alexander", "Bjorn", "Carl", "David", "Erik", "Fredrik", "Gustav", "Henrik", "Isak", "Jakob",
    "Kalle", "Lars", "Magnus", "Niklas", "Olof", "Per", "Rasmus", "Sven", "Tobias", "Ulf",
    "Viktor", "William", "Xander", "Yngve", "Zacharias", "Anton", "Bastian", "Christian", "Daniel", "Emil",
    "Felix", "Gabriel", "Herman", "Ingmar", "Johan", "Kjell", "Loke", "Mans", "Nils", "Oscar",
    "Par", "Rikard", "Simon", "Tommy", "Wilhelm", "Xavi", "Yannick", "Alice", "Birgitta", "Cecilia", "Diana", "Elin", "Freja", "Greta", "Hanna", "Ingrid", "Jenny",
    "Karin", "Lena", "Maja", "Nina", "Olivia", "Pernilla", "Rosa", "Sophie", "Tilde", "Ulla",
    "Vera", "Wendy", "Xandra", "Yvonne", "Zara", "Astrid", "Britta", "Clara", "Dagmar", "Eva",
    "Fanny", "Gunnel", "Helena", "Isabel", "Josefine", "Kirsten", "Lillan", "Miriam", "Nadja", "Oline",
    "Pia", "Rita", "Sofia", "Thilda", "Ursula", "Vivi", "Wera", "Ximena", "Ylva"
)

$DLN = @(
  "Jensen", "Nielsen", "Hansen", "Pedersen", "Andersen", "Christensen", "Larsen", "Sorensen", "Rasmussen", "Jorgensen",
  "Petersen", "Madsen", "Kristensen", "Olsen", "Thomsen", "Knudsen", "Mortensen", "Jacobsen", "Mogensen", "Frederiksen",
  "Lauridsen", "Jeppesen", "Bach", "Bjerregaard", "Boesen", "Bonde", "Brandt", "Bruun", "Dahl", "Dam",
  "Egelund", "Enevoldsen", "Eskildsen", "Fabricius", "Fink", "Friis", "Gade", "Gram", "Gregersen", "Guldberg",
  "Hald", "Haugaard", "Hem", "Holm", "Holst", "Hougaard", "Hviid", "Ibsen", "Isaksen", "Jespersen",
  "Juhl", "Kjeldsen", "Klitgaard", "Koch", "Kruse", "Leth", "Lind", "Lindegaard", "Lund", "Lykke",
  "Markussen", "Meyer", "Nyborg", "Nygaard", "Nyholm", "Overgaard", "Poulsen", "Quist", "Riis",
  "Sandberg", "Schmidt", "Schou", "Simonsen", "Skov", "Steffensen", "Steenberg", "Storm", "Svanholm",
  "Svendsen", "Thorsen", "Toft", "Torp", "Vestergaard", "Vinther", "Weiss", "Westergaard", "Winther", "Zacho", "Abildgaard", "Bang", "Bech", "Birch", "Brogaard", "Damgaard", "Ellegaard", "Frost", "Hesseldahl", "Schmidt", "Muller", "Schneider", "Fischer", "Weber", "Meyer", "Wagner", "Becker", "Hoffmann", "Schulz",
  "Zimmermann", "Klein", "Schroder", "Neumann", "Schmitt", "Braun", "Schuster", "Lange", "Werner", "Bauer",
  "Roth", "Richter", "Weiss", "Krause", "Jager", "Fuchs", "Wolf", "Moller", "Lowe", "Seidel",
  "Weber", "Romer", "Kaiser", "König", "Bergmann", "Sauer", "Vogel", "Hartmann", "Simon", "Bohm","Andersson", "Johansson", "Karlsson", "Nilsson", "Eriksson", "Larsson", "Olsson", "Persson", "Svensson", "Gustafsson",
  "Pettersson", "Jansson", "Hansson", "Jonsson", "Fransson", "Bergstrom", "Nordin", "Lindberg", "Lindstrom", "Mansson",
  "Berg", "Hellstrom", "Lundqvist", "Sjoberg", "Bergman", "Strom", "Viklund", "Abeg", "Dahl", "Lundgren",
  "Olofsson", "Rundberg", "Ahlstrom", "Larsson", "Sandberg", "Gustavsson", "Hoglund"
)

$banner = "
 █████  ███████  ██████         █████  ██████  ██    ██ ███████ ███████ ██████   ██████  ███████ ███    ██ 
██   ██ ██      ██             ██   ██ ██   ██ ██    ██ ██      ██      ██   ██ ██       ██      ████   ██ 
███████ ███████ ██   ███ █████ ███████ ██   ██ ██    ██ ███████ █████   ██████  ██   ███ █████   ██ ██  ██ 
██   ██      ██ ██    ██       ██   ██ ██   ██ ██    ██      ██ ██      ██   ██ ██    ██ ██      ██  ██ ██ 
██   ██ ███████  ██████        ██   ██ ██████   ██████  ███████ ███████ ██   ██  ██████  ███████ ██   ████ 
                                                                                                           
                                                                                                           
"

$pass = "Merc1234!"

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
    Write-Host "Secuirtygroup ikke fundet eller excistere ikke"
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
    $Navn = $DN | Get-Random
    $Efternavn = $DLN | Get-Random

    $FN = $Navn.Substring(0, 2).ToUpper()
    $EFN = $Efternavn.Substring(0, 4).ToUpper() 
    

    $SAMNavn = "$FN$EFN"
    
    New-ADUser -SamAccountName "$SAMNavn$numstand" `
    -UserPrincipalName "$FN$EFN@$Domain.$TLDvar" `
    -Name "$Navn $Efternavn" `
    -GivenName "$Navn" `
    -Surname "$Efternavn" `
    -DisplayName "$Navn $Efternavn" `
    -Initials "$FN$EFN" `
    -Path "$PATH2" `
    -AccountPassword $pass `
    -Enabled $true

    Add-ADGroupMember -Identity "$securitygroup" -Members "$SAMNavn"

    Write-Host "Initialer er:" "$SAMNavn" 
    Write-Host "Navn: $Navn"
    Write-Host "Efternavn: $Efternavn"
    Write-Host "Adgangskode: $pass"
    Write-Host "Group: $securitygroup"
    Write-Host ""
}

Pause
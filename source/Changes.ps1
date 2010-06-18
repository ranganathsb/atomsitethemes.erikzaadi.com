
$changes = get-content -path Changes.txt
$on = 0
$changes | % { 
    if ($_ -eq "----") { $on = 0 }
    if ($on) { "* " + $_ }
    if ($_ -eq "Message:") { $on = 1; }
}
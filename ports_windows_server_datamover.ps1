Write-host Enabling Default range of ports used by the Veeam Data Mover Service. TCP 2500-5000
 
New-NetFirewallRule -DisplayName "Allow inbound Default range of ports used by the Veeam Data Mover Service. TCP 2500-5000" –Direction inbound –LocalPort 2500-5000 -Protocol TCP -Action Allow
 
New-NetFirewallRule -DisplayName "Allow outbound Default range of ports used by the Veeam Data Mover Service. TCP 2500-5000" –Direction outbound –LocalPort 2500-5000 -Protocol TCP -Action Allow 
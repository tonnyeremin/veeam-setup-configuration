Set-ExecutionPolicy unrestricted -force;

Write-host Enabling Ports required for deploying Veeam Backup and Replication components TCP UDP 135, 137 to 139, 445
 
New-NetFirewallRule -DisplayName "Allow inbound Veeam Backup and Replication components TCP Port 135, 137 to 139, 445" –Direction inbound –LocalPort 135, 137-139, 445 -Protocol TCP -Action Allow
 
New-NetFirewallRule -DisplayName "Allow outbound Veeam Backup and Replication components TCP Port 135, 137 to 139, 445" –Direction outbound –LocalPort 135, 137-139, 445 -Protocol TCP -Action Allow

New-NetFirewallRule -DisplayName "Allow inbound Veeam Backup and Replication components UDP Port 135, 137 to 139, 4455" –Direction inbound –LocalPort 135, 137-139, 445 -Protocol UDP -Action Allow
 
New-NetFirewallRule -DisplayName "Allow outbound Veeam Backup and Replication components UDP Port 135, 137 to 139, 445" –Direction outbound –LocalPort 135, 137-139, 445 -Protocol UDP -Action Allow


Write-host Enabling Ports required for Default port used by the Veeam Installer Service. TCP 6160
 
New-NetFirewallRule -DisplayName "Allow inbound Default port used by the Veeam Installer Service. TCP 6160" –Direction inbound –LocalPort 6160 -Protocol TCP -Action Allow
 
New-NetFirewallRule -DisplayName "Allow outbound Default port used by the Veeam Installer Service. TCP 6160" –Direction outbound –LocalPort 6160 -Protocol TCP -Action Allow 


Write-host Enabling Ports required for Default port used by the vPower NFS Service. TCP 6161
 
New-NetFirewallRule -DisplayName "Allow inbound Default port used by the vPower NFS Service. TCP 6161" –Direction inbound –LocalPort 6161 -Protocol TCP -Action Allow
 
New-NetFirewallRule -DisplayName "Allow outbound Default port used by the vPower NFS Service. TCP 6161" –Direction outbound –LocalPort 6161 -Protocol TCP -Action Allow 


Write-host Enabling Ports required for Default port used by the Veeam Data Mover Service. TCP 6162
 
New-NetFirewallRule -DisplayName "Allow inbound Default port used by the vPower NFS Service. TCP 6162" –Direction inbound –LocalPort 6162 -Protocol TCP -Action Allow
 
New-NetFirewallRule -DisplayName "Allow outbound Default port used by the vPower NFS Service. TCP 6162" –Direction outbound –LocalPort 6162 -Protocol TCP -Action Allow 


Write-host Enabling Standard NFS ports. TCP UDP 111, 2049+, 1058+
 
New-NetFirewallRule -DisplayName "Allow inbound Standard NFS ports. TCP 111" –Direction inbound –LocalPort 111 -Protocol TCP -Action Allow
 
New-NetFirewallRule -DisplayName "Allow outbound Standard NFS ports. TCP 111" –Direction outbound –LocalPort 111 -Protocol TCP -Action Allow

New-NetFirewallRule -DisplayName "Allow inbound Standard NFS ports. TCP 2049-2099" –Direction inbound –LocalPort 2049-2099 -Protocol TCP -Action Allow
 
New-NetFirewallRule -DisplayName "Allow outbound Standard NFS ports. TCP 2049-2099" –Direction outbound –LocalPort 2049-2099 -Protocol TCP -Action Allow

New-NetFirewallRule -DisplayName "Allow inbound Standard NFS ports. TCP 1058-1099" –Direction inbound –LocalPort 1058-1099 -Protocol TCP -Action Allow
 
New-NetFirewallRule -DisplayName "Allow outbound Standard NFS ports. TCP 1058-1099" –Direction outbound –LocalPort 1058-1099 -Protocol TCP -Action Allow


New-NetFirewallRule -DisplayName "Allow inbound Standard NFS ports. UDP 111" –Direction inbound –LocalPort 111 -Protocol UDP -Action Allow
 
New-NetFirewallRule -DisplayName "Allow outbound Standard NFS ports. UDP 111" –Direction outbound –LocalPort 111 -Protocol UDP -Action Allow

New-NetFirewallRule -DisplayName "Allow inbound Standard NFS ports. UDP 2049-2099" –Direction inbound –LocalPort 2049-2099 -Protocol UDP -Action Allow
 
New-NetFirewallRule -DisplayName "Allow outbound Standard NFS ports. UDP 2049-2099" –Direction outbound –LocalPort 2049-2099 -Protocol UDP -Action Allow

New-NetFirewallRule -DisplayName "Allow inbound Standard NFS ports. UDP 1058-1099" –Direction inbound –LocalPort 1058-1099 -Protocol UDP -Action Allow
 
New-NetFirewallRule -DisplayName "Allow outbound Standard NFS ports. UDP 1058-1099" –Direction outbound –LocalPort 1058-1099 -Protocol UDP -Action Allow


Write-host Enabling Dynamic RPC port range. TCP 49152-65535
 
New-NetFirewallRule -DisplayName "Allow inbound Dynamic RPC port range. TCP 49152-65535" –Direction inbound –LocalPort 49152-65535 -Protocol TCP -Action Allow

New-NetFirewallRule -DisplayName "Allow inbound Dynamic RPC port range. TCP 49152-65535" –Direction outbound –LocalPort 49152-65535 -Protocol TCP -Action Allow

<#
.NAME
Validate-ComputerSecureConnection

.DESCRIPTION
This script checks whether the computer account with the local domain is valid and repairs it if not.

.SYNTAX
Validate-ComputerSecureChannel

.ALIASES
None

.NOTES
Intended use as user logon script deployed via GPO in order to maintain AD integrity when reverting virtual machine snapshots on domain-joined systems.

.LINK
https://github.com/drpresq/Validate-ComputerSecureChannel
#>

if (!(Test-ComputerSecureChannel)){
    Test-ComputerSecureChannel -Repair -ErrorAction SilentlyContinue
}

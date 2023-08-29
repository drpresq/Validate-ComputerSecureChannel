# Validate-ComputerSecureChannel

## Description

This is a short Powershell 3.0+ script intended for use by Microsoft Active Directory joined virtual machines which are required to revert to past snapshots.

## Intended Use

This script is intended for use as a logon script deployed via group policy object under the `User Configuration/Windows Settings/Scripts/Startup` setting. The GPO object should be attached to an organizational unit (OU) of users with administrative priviledge.

This script is effective when used in conjunction with `Computer Configuration/Windows Settings/Security Settings/Local Policies/Security Options/Domain member: Maximum machine account password age` set to `999` days where possible.

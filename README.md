# AD Bind


Script Borrowed from DeployStudio. FULL CREDIT to DeployStudio.

####  !! WARNING SECURITY FLAW !!
 
 - psw in base64 encoded...
 - Yes it's **NOT** that safe but better than in plain text...

### .pkg postintall script: `ds_active_directory_binding.sh` 

As a .pkg postintall script, thus leaving a receipt so it can be versionned in case of any change to be made - ... and wouldn't be a good idea in a simple nopkg script.

Works as Expected. I use it for new devices via MDM deployment, or devices wiped out.

> Notes: I know it could be done via a profile and that BYOD is in the hype. 
> 
> I like binding because any user can log in a managed computer. 


### munki preinstall_check script : `AD_bond_check.sh`

Little munki preinstall_check script to determine if the host is binded.

- If Host is binded to Active Directory Domain:  `exit 1` and no install via munki.
- If Host is NOT binded to Active Directory Domain: `exit 0` and munki will install the package.


### Packages file : `BU_ADBind.pkgproj`

I use Packages.app or pkgutil to create packages.

##### TODOs

- Detect Network, and if in the company's AD Network, use `id johndoe` to see if the bond is alive. 
	
	Then Bind, if no bound or if it's borken or don't try to bind, if not in the correct network.
- Detect if the computer is already in the AD in the correct OU ?


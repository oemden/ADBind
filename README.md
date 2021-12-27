# AD Bind


Script Borrowed from DeployStudio. FULL CREDIT to DeployStudio.

####  !! WARNING SECURITY FLAW !!
 
 - psw in base64 encoded...
 - Yes it's **NOT** that safe but better than in plain text...

This is a postintall script in a .pkg leaving a receipt so it can be versionned in case of any change to be made... and wouldn't be a good idea in a simple nopkg script.

Works as Expected. I use it for new devices via MDM deployment, or devices wiped out.

> Notes: I know it could be done via a profile and that BYOD is in the hype. 
> 
> I like binding because any user can log in a managed computer. 
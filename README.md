# ScriptStory
Few of my scripts used with Windows configuration and how I am using it at work

# 1.AddPasswordProvider & 4.RemovePasswordProvider & 2.RDPConnect
are necessary for properly working Windows Hello Multi-factor Authentication on a non-domain PC. User can log in into system only by prividing face recognition\fingerprint scan and PIN. Scripts are running while system starts\shutdowns, blocking\unblocking and user is logging in\logging out. They make sure password provider is enabling\disabling when needed. This is because excluding password provider permanently prevent user from e.g. connecting to the remote PC or running program as other user. There is a way of doing it properly with certificates but the PC must be domain joined.
RDPConnect opens .rdp configuration but previously making sure the password provider is enabled

# 3.RemoveJava191&181
Sometimes when uninstalling program the icon in appwiz.cpl changes to white paper sheet and You cannot be deleted by clicking "Uninstall". Script removes values from registry when Java is already uninstalled

# 5.RenameHybridJoinedPC
When joining to Azure hybrid environment I realize I cannot change host name. Turns out that Microsoft know the issue and haven' t resolved it yet. Just leave the environment, change name and join again 

# 6.SaveAttachmentsMail
MailStore packs mails into other mail so when these mails are transferred to the Outlook we had a structure: searched mail in mail store mail. When we want to save only searched mails we need to get into mail store mail and then save the attachment. The script makes it automatically. So basically it saves attachments from attachments to the folder. To make sure mail name isn't duplicated file name is modified by adding unique EntryID

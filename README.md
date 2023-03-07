# ScriptStory
Few of my scripts used with Windows configuration and how I am using it at work

# 1.AddPasswordProvider & 4.RemovePasswordProvider 
are necessary for properly working Windows Hello Multi-factor Authentication on a non-domain PC. User can log in into system only by prividing face recognition\fingerprint scan and PIN. Scripts are running while system starts\shutdowns, blocking\unblocking and user is logging in\logging out. They make sure password provider is enabling\disabling when needed. This is because excluding password provider permanently prevent user from e.g. connecting to the remote PC or running program as other user. There is a way of doing it properly with certificates but the PC must be domain joined.




                    
 

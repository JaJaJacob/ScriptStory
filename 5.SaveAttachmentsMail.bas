Attribute VB_Name = "SaveAttachmentsMail"
Option Explicit

Sub GetRootFolder()
    Dim ol As Outlook.Application
    Dim ns As Outlook.NameSpace
    Dim rootfolder As Outlook.Folder
    Dim savingpathfolder As String
    Set ol = New Outlook.Application
    Set ns = ol.GetNamespace("MAPI")
    
    Set rootfolder = ns.Folders(Application.Session.CurrentUser.AddressEntry.GetExchangeUser.PrimarySmtpAddress).Folders("FOLDERNAME")
    
    savingpathfolder = "A:\attachments\" 'Path to the folder \'
    
    savingpathfolder = savingpathfolder & Format(Now, "yyyy-mm-dd") & "\"

    If Dir(savingpathfolder) <> "" Then
        MsgBox "Folder already exists!", vbInformation, "VBAF1"
        Exit Sub
    End If
    
    MkDir savingpathfolder
    
    ListItemsAndSubfolder rootfolder, savingpathfolder
    
End Sub

Sub ListItemsAndSubfolder(ParentFolder As Outlook.Folder, savingpathfolder As String)
    Dim i As Object
    Dim subfol As Outlook.Folder
    Dim mi As Outlook.MailItem
    Dim at As Outlook.Attachment

    For Each i In ParentFolder.Items
        If i.Class = olMail Then
            Set mi = i
            Debug.Print mi.Subject, i.Class, i.CreationTime
            If mi.Attachments.Count > 0 Then
                For Each at In mi.Attachments
                    Debug.Print vbTab, at.DisplayName, at.Size, mi.ReceivedTime
                    at.SaveAsFile savingpathfolder & mi.EntryID & at.FileName
                Next at
            End If
        End If
    Next i
    
    For Each subfol In ParentFolder.Folders
        ListItemsAndSubfolder subfol, savingpathfolder
    Next subfol
    
End Sub




VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
   Dim cStream As New cBinaryFileStream
   cStream.File = "C:\windows\system32\rundll32.exe"
   
   Dim cCRC32 As New cCRC32
   Dim lCRC32 As Long
   
   lCRC32 = cCRC32.GetFileCrc32(cStream)
   
   Debug.Print lCRC32
    
End Sub

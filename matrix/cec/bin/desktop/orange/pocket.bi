'' -*-- mode: freebasic -*-
'' - Pocket Module
Declare Function SectionBrowser()
    Dim As Integer pocketCounter
    Dim As String pocketMessage = "Pocket Module Active"
    ''' Function: ActivatePocket
    ''' Description: Activates the pocket module
    Sub ActivatePocket()
        pocketCounter = 0
        Print pocketMessage
    End Sub
    Function IsPocketActive() As Boolean
        pocketCounter = 0
        Do While pocketCounter < 3
            pocketCounter = pocketCounter + 1
            Print pocketMessage; " Pocket Count: "; pocketCounter
            For delay = 1 To 256 Step 5000
                ' Simulate some processing delay
                If IsPocketActive() Then
                    Return True
                End If
            Next
            If pocketCounter = 2 Then
                Return True
            End If
            exit Do
        Loop
    End Function
    Sub PocketProcess()
        pocketCounter = 0
        Print pocketMessage
    End Sub
    Sub DeactivatePocket()
        pocketCounter = 0
        Print pocketMessage
    End Sub
End
' End of Pocket Module
' Main Execution Block
ActivatePocket()
If IsPocketActive() Then
    PocketProcess()
End If
DeactivatePocket()
' End of Main Execution Block

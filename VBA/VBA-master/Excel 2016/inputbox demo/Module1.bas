Attribute VB_Name = "Module1"
Option Explicit

Sub GetValue1()
    Range("A1").Value = InputBox("Enter the value")
End Sub


Sub GetValue2()
    Dim UserEntry As Variant
     UserEntry = InputBox("Enter the value")
    If UserEntry <> "" Then Range("A1").Value = UserEntry
End Sub


Sub GetValue3()
    Dim UserEntry As Variant
    Dim Msg As String
    Const MinVal As Integer = 1
    Const MaxVal As Integer = 12
    Msg = "Enter a value between " & MinVal & " and " & MaxVal
    Do
        UserEntry = InputBox(Msg)
        If UserEntry = "" Then Exit Sub
        If IsNumeric(UserEntry) Then
            If UserEntry >= MinVal And UserEntry <= MaxVal Then Exit Do
        End If
        Msg = "Your previous entry was INVALID."
        Msg = Msg & vbNewLine
        Msg = Msg & "Enter a value between " & MinVal & " and " & MaxVal
    Loop
    ActiveSheet.Range("A1").Value = UserEntry
End Sub

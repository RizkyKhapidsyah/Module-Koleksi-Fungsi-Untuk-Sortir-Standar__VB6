Attribute VB_Name = "Module1"
Option Explicit

Public Sub SortCollection(ColVar As Collection)
    Dim oCol As Collection
    Dim i As Integer
    Dim i2 As Integer
    Dim iBefore As Integer
    If Not (ColVar Is Nothing) Then
        If ColVar.Count > 0 Then
            Set oCol = New Collection
            For i = 1 To ColVar.Count
                If oCol.Count = 0 Then
                    oCol.Add ColVar(i)
                Else
                    iBefore = 0
                    For i2 = oCol.Count To 1 Step -1
                        If LCase(ColVar(i)) < LCase(oCol(i2)) Then
                            iBefore = i2
                        Else
                            Exit For
                        End If
                    Next
                    If iBefore = 0 Then
                        oCol.Add ColVar(i)
                    Else
                        oCol.Add ColVar(i), , iBefore
                    End If
                End If
            Next
            Set ColVar = oCol
            Set oCol = Nothing
        End If
    End If
End Sub


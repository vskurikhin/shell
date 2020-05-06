Rem http://forum.ixbt.com/topic.cgi?id=23:27165
Sub sPaste()
  Set oWord = CreateObject("Word.Application")
    oWord.Documents.Add
    oWord.Selection.Paste
    With oWord.ActiveDocument.Tables(1)
      For I = 1 To .Rows.Count
        For j = 1 To .Columns.Count
          strText = .Cell(I, j).Range.Text
          Cells(I, j).Value = Left(strText, Len(strText) - 2)
        Next j
      Next I
    End With
  oWord.Quit SaveChanges:=wdDoNotSaveChanges
End Sub

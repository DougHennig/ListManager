lparameters tu1, ;
	tu2
aselobj(laObjects)
loObject = laObjects[1]
with loObject
	.cboCombo.Width = .Width - .cmdEdit.Width
	.cmdEdit.Left   = .Width - .cmdEdit.Width
	try
		.shpTreeView.Width = .Width
		.oTree.Width       = .Width - 2
	catch
	endtry
endwith

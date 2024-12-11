; by texture
#Requires Autohotkey v2

if(A_LineFile = A_ScriptFullPath && !A_IsCompiled)
{
	myGui := Constructor()
	myGui.Show("w300 h215")
    if(WinExist("Roblox"))
    {
        myGui.Opt("+Owner" WinExist("Roblox"))
        ;myGui.Opt("+Parent" WinExist("Roblox"))
        WinActivate("Roblox")
    }
    else
    {
        MsgBox("no roblox")
        ExitApp()
    }
}

Constructor()
{	
	myGui := Gui()
	myGui.Opt("-MinimizeBox -MaximizeBox -DPIScale +AlwaysOnTop")
	;myGui.SetFont("q1", "Tahoma")
	myGui.Add("GroupBox", "x8 y8 w283 h179", "general settings")
	;myGui.SetFont("q1 cBlack", "Tahoma")
	CheckBox1 := myGui.Add("CheckBox", "x16 y24 w100 h23", "auto-camera")
	;myGui.SetFont("q1 cBlack", "Tahoma")
	CheckBox2 := myGui.Add("CheckBox", "x16 y48 w100 h23", "auto-shake")
	;myGui.SetFont("q1", "Tahoma")
    ShakeModeConfig := myGui.Add("DropDownList", "x16 y72 w81", ["classic", "navigation"])
	CheckBox3 := myGui.Add("CheckBox", "x16 y96 w81 h23", "webhook")
    WebhookModeConfig := myGui.Add("DropDownList", "x16 y120 w81", ["text", "image", "combined"])
	;myGui.SetFont("q1", "Tahoma")
	Edit1 := myGui.Add("Edit", "x16 y149 w81 h21")
	;myGui.SetFont("q1", "Tahoma")
	ButtonTEST := myGui.Add("Button", "x104 y144 w80 h23", "&TEST")
    Buttonretakeconfig := myGui.Add("Button", "x200 y24 w81 h23", "reset config")
	Buttonsaveconfig := myGui.Add("Button", "x200 y48 w81 h23", "&save config")
	
	Buttonadvanced := myGui.Add("Button", "x200 y72 w81 h23", "advanced")
	
	myGui.Add("Text", "x16 y190", "Made by AsphaltCake")
	myGui.OnEvent('Close', (*) => (ExitApp()))
    
	myGui.Title := "IRUS v4"
	
	return myGui
}
Esc::ExitApp()
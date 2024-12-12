#Requires AutoHotkey v2.0
persistent
CoordMode "Pixel", "Screen"
CoordMode "Mouse", "Screen"
global ball := 0

$q::
{
goto dying

dying:
founction()
if (ball = 1) {
global ball := 0
goto stopall
}
goto dying

founction() {
mousegetpos(&dead, &real)
if pixelsearch(&aaa, &bbb, dead+2, real+2, dead, real, 0xFFF200, 5) {
global aaa := aaa, bbb := bbb
msgbox "im cooking"
global ball := 1
}
}
stopall:
tooltip ".", aaa, bbb, 1
return
}

$f1::exitapp
$f2::reload
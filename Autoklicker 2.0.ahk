#SingleInstance ,Force
Gui, +AlwaysOnTop
Gui,show,w300 h100 , Autoklicker 2.0

Gui, Font, s10, Verdana
Gui, Add, Button, x10 y10 w280 h30 gPresses, Autoklicker an
Gui, Add,Text, x10 w70 h40, Klicks pro sec. :
Gui, Add,Edit, x+10 w100 h25 vKPS,
Gui, Add,Button, x+10 w70 h28 gStart,Pause
return

GuiClose:
ExitApp


Start:
counter++
msgbox %counter%
if (counter==2){
  counter :=0
}
return


Presses:
Loop{
  delay := Add(1,%KPS%)

  if(counter==1){
        	Click
        	Sleep %delay%
        }
    }

return

Add(x,y){
return 1000 / y
}

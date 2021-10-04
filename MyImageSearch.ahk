
c:=GetColors(62,76,250,200)
run,%a_scriptdir%\cores.txt
Sleep,1000
FileDelete,%a_scriptdir%\cores.txt
ExitApp

F8::ExitApp
F4::Pause


GetColors(x1,y1,x2,y2)
{
  x:=x1
  y:=y1
  ax:=x2-x1
  ay:=y2-y1
  loop,%ay%
  {
    Loop,%ax%
    {
      PixelGetColor,cor,x,y
      ;~ MsgBox,%x%-%y%=%cor%
      ;~ FileAppend,%cor%,%a_scriptdir%\cores.txt
      if(cor=0x000000)
        FileAppend,0,%a_scriptdir%\cores.txt
      else
        FileAppend,%A_Space%,%a_scriptdir%\cores.txt
      x++
    }
    x:=x1
    FileAppend,`n,%a_scriptdir%\cores.txt
    y++
  }

  return cor
}
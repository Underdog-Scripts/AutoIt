;Script to send email with attachment
#include <Date.au3>
#include <FileConstants.au3>
#include <WinAPIFiles.au3>

Local $Today=_DateToDayValue(@YEAR,@MON,@MDAY),$Y, $M, $D
$Today=_DayValueToDate($Today, $Y, $M, $D)
$Y = StringTrimLeft($Y, 2)
$Today=StringFormat("%02i.%02i.%02i", $M,  $D,  $Y)
MouseClick("Left", 2328, 36, 1)
Sleep ("1000")
Send ("^+m")
Sleep ("2000")
Send ("UserName")
Sleep ("2000")
Send ("{ENTER}")
Sleep ("2000")
Send ("{TAB 3}")
Sleep ("2000")
Send ($Today)
Sleep ("1000")
Send ("{TAB}")
Sleep ("2000")
Send ("!+haf")
Sleep ("2000")
Send ("C:\Users\User\Documents\Reports\New\" & $Today & ".zip")
Sleep ("2000")
Send ("{ENTER}")
Sleep ("2000")
Send ("!+s")
Sleep ("1000")

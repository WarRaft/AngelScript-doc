call variables.bat

set as="%folder%\astest.as"

copy "%root%\war3map.as" %as%

start /wait "" %mpq% /add %map% %as% "war3map.as" /auto

start "" %ujapi% -ujapi "dev" -as "console" -window -launch "Warcraft" -loadfile %map%

'Author: AtomicSource
'Adapted from https://serverfault.com/questions/9038/run-a-bat-file-in-a-scheduled-task-without-a-window by splattne

' run this script with: wscript.exe path\to\this_file.vbs
' This used to run a batch file in the background. It is ran by a Windows Task Scheduler task.
' The batch file runs command "organize run --tags=nikki"


Dim WinScriptHost
Set WinScriptHost = CreateObject("WScript.Shell")
WinScriptHost.Run Chr(34) & "E:\Portable Programs\organizer_scripts\organize_run_nikki.bat" & Chr(34), 0
Set WinScriptHost = Nothing

' NB: Chr(34) is a way of escaping the quote (") symbol in VBScript
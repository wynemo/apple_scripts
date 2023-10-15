tell application "System Events"
	tell (first application process whose frontmost is true)
		set theActiveApp to name of it
		keystroke "c" using {command down}
		delay 0.5
		set pythonScript to "/Users/tommygreen/Documents/my_folder/translate_use_google.py"
		set selectedText to (the clipboard)
		set command1 to "/Users/tommygreen/Documents/my_folder/venv/bin/python " & quoted form of pythonScript & " " & quoted form of selectedText
		set output to do shell script command1
                display dialog output
	end tell
end tell

on run {input, parameters}
	
	set pythonScript to "/Users/tommygreen/Documents/my_folder/translate_use_google.py"
	set inputText to input as text
	
	set command to "/Users/tommygreen/Documents/my_folder/venv/bin/python " & quoted form of pythonScript & " " & quoted form of inputText
	set output to do shell script command
	
	display dialog output
	
	return input
	
end run

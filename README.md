# OpenSeesNotePadPlusPlus
Custom Language (and more) for Notepad++. It has the same functionality as the Tcl language option in Notepad++, with added features for OpenSees Commands. Modified from work done by aliirmak (https://github.com/aliirmak/notepad-plus-plus-opensees/blob/master/OpenSees.xml)

This work was done with Notepad++ 7.8.7, Tcl 8.6.9, and OpenSees 3.2.0
Alex Baker, 2019. ambaker1@mtu.edu

## OpenSees Language:
  *A User-Defined language that formats OpenSees files according to OpenSees and Tcl commands.*
  
  **Installation Instructions**\
  Download the OpenSeesLang.xml file in the repository.\
  Open your Notepad++, select "Language" on the menu bar, and choose "Define your Language".\
  Press the "Import" button, and select the OpenSeesLang.xml file.\
  Restart Notepad++.\
  When in a .tcl file, select "Language", and choose "OpenSees".\
  If the style is not to your liking, you can modify it in the "Define your Language" settings.\
  
## Running OpenSees in Notepad++:
  *Run a Tcl file in OpenSees directly from Notepad++.*
  
  **Installation Instructions**\
  While in Notepad++, press F5.\
  In the run command box, put in one of the following:
  
  Command Line Version:
  
	cmd /K cd /d "$(CURRENT_DIRECTORY)" && OpenSees "$(FULL_CURRENT_PATH)"
	
  Powershell Version:
	
	powershell -noexit -command Set-Location \"$(CURRENT_DIRECTORY)\"; OpenSees \"$(FULL_CURRENT_PATH)\"
	
  *Note: If you have not set OpenSees in your PATH, change "OpenSees" to the full filepath where the executable is.*
  
  If you click "save", you can save it as a shortcut. I have mine set as CTRL-SHIFT-ENTER
  
## Variable List:
  *A list of all defined variables in a .Tcl file.*
  
  **Installation Instructions**\
  Open the functionList.xml file in "%appdata%/Notepad++", and add the following:
  
  To the associations region, add:
  
	<association id=     "OpenSees_variables" userDefinedLangName="OpenSees"       />	
	
  To the parser region, add: 

	<parser id="OpenSees_variables" displayName="Variable" commentExpr="(#)">
		<function
			mainExpr="^[\t ]*(set|append|variable|lappend)[\t ]+\w+"
			displayMode="$variableName">
			<functionName>
				<nameExpr expr="((?<=set\s)|(?<=variable\s)|(?<=append\s)|(?<=lappend\s))\s*\w+"/>
			</functionName>
		</function>
	</parser>
	
  Save the file, and close and re-open Notepad++.\
  Now, any variables defined with **set, variable, append, or lappend** will show up in the "Function List"\
  Double-clicking on the variable name in "Function List" takes you to where in the code it is defined.\
  If it is redefined (or appended) the order of the definition will show up in the list.
  
  **To see an example of this, see the functionList.xml file on this repository.**
  
## Autocompletion for Tcl and OpenSees functions:
  *Autocompletion of OpenSees and Tcl functions.*
  
  Rename the OpenSeesAutoComplete.xml file to OpenSees.xml, and place it in the Program Files/Notepad++/autoCompletion folder.
  Restart Notepad++, make sure that autocompletion is turned on in *Settings -> Preferences -> Auto-Completion*.

  

# OpenSeesNotePadPlusPlus
Custom Language (and more) for Notepad++. It has the same functionality as the Tcl language option in Notepad++, with added features for OpenSees Commands. Modified from work done by aliirmak (https://github.com/aliirmak/notepad-plus-plus-opensees/blob/master/OpenSees.xml)

Instructions:
1.) OpenSees Language:
  To have a User-Defined language that formats OpenSees files according to OpenSees and Tcl commands,
  
  Download the OpenSeesLang.xml file in the repository
  Open your Notepad++, select "Language" on the menu bar, and choose "Define your language".
  Press the "Import" button, and select the OpenSeesLang.xml file.
  Restart Notepad++.
  When in a .tcl file, select "Language", and choose "OpenSees".
  
2.) Running OpenSees in Notepad++:
  _To run a Tcl file in OpenSees directly from Notepad++,_
  
  Press F5, and in the run command box, put the following:
  cmd /K cd /d "$(CURRENT_DIRECTORY)" && "C:\Program Files\OpenSees\OpenSees.exe" "$(FULL_CURRENT_PATH)"
  *Note: If your OpenSees program is somewhere else, you may need to adjust that portion.*
  If you click "save", you can save it as a shortcut. I have mine set as CTRL-SHIFT-ENTER
  
3.) Variable List:
  To have a list of all defined variables, open the functionList.xml file in "%appdata%/Notepad++", and add the following:
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

4.) Autocompletion for Tcl and OpenSees functions
  To have autocompletion of OpenSees functions as well as tooltips with all the arguments,

  

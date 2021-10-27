# OpenSeesNotepadPlusPlus
Custom Language (and more) for Notepad++. It has the same functionality as the Tcl language option in Notepad++, with added features for OpenSees Commands. Modified from work done by aliirmak (https://github.com/aliirmak/notepad-plus-plus-opensees/blob/master/OpenSees.xml)

Code used for example pictures taken from https://opensees.berkeley.edu/wiki/index.php/Elastic_Frame_Example

This work was done with Notepad++ 8.1.1, Tcl 8.6.10, and OpenSees 3.3.0
Alex Baker, 2021. ambaker1@mtu.edu

## OpenSees Language:
  *A User-Defined language that formats OpenSees files according to OpenSees and Tcl commands.*
  
  **Installation Instructions**\
  Download the OpenSeesLight.xml or OpenSeesDark.xml file in the repository.\
  Open your Notepad++, select "Language" on the menu bar, and choose "User Defined Language/Define your Language".\
  Click the "Import" button, and select the OpenSeesLight.xml or OpenSeesDark.xml file.\
  For dark themes, make sure that the "Enable global background color" is checked within "Settings/Style Configurator".\
  Restart Notepad++.\
  While in an OpenSees .tcl file, select "Language", and choose "OpenSees".\
  If the style is not to your liking, you can modify it in the "Define your Language" settings.
  
## Autocompletion for Tcl and OpenSees functions:
  *Autocompletion of OpenSees and Tcl functions.*

  Rename the OpenSeesAutoComplete.xml file to OpenSees.xml, and place it in the Program Files/Notepad++/autoCompletion folder.
  Restart Notepad++, make sure that autocompletion is turned on in *Settings -> Preferences -> Auto-Completion*.
  
## Running OpenSees in Notepad++:
  *Run a Tcl file in OpenSees directly from Notepad++.*
  
  **Installation Instructions**\
  While in Notepad++, press F5.\
  In the run command box, put in one of the following:
  
  Command Line Version:
  
	cmd /K cd /d "$(CURRENT_DIRECTORY)" && OpenSees "$(FILE_NAME)"
	
  Powershell Version:
	
	powershell -noexit -command Set-Location -LiteralPath '$(CURRENT_DIRECTORY)'; OpenSees '$(FILE_NAME)'
	
  *Note: If you have not set OpenSees in your PATH, change "OpenSees" to the full filepath where the executable is.*
  
  If you click "save", you can save it as a shortcut. I have mine set as CTRL-SHIFT-ENTER


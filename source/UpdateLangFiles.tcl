# Run this file in a Tcl interpreter to update the XML files
# Simply reads the XML files and overwrites parts with keyword lists.

# Get keyword lists
set KeyWords1 [join [read [open KeyWords1.txt r]]]; # Tcl commands
set KeyWords2 [join [read [open KeyWords2.txt r]]]; # OpenSees commands
set KeyWords3 [join [read [open KeyWords3.txt r]]]; # OpenSees objects

# Update autocomplete
set AutoCompleteXML [read -nonewline [open ../OpenSeesAutoComplete.xml r]]
set AutoCompleteLines [split $AutoCompleteXML \n]
set AutoCompleteHeader [join [lrange $AutoCompleteLines 0 3] \n]
set AutoCompleteFooter [join [lrange $AutoCompleteLines end-1 end] \n]
set fid [open ../OpenSeesAutoComplete.xml w]
puts $fid $AutoCompleteHeader
foreach KeyWord [lsort [concat $KeyWords1 $KeyWords2 $KeyWords3]] {
    puts $fid "        <KeyWord name=\"$KeyWord\" />"
}
puts $fid $AutoCompleteFooter
close $fid

# Update Lang Files
foreach Style {Light Dark} {
    set OpenSeesLangXML [read -nonewline [open ../OpenSees$Style.xml r]]
    set OpenSeesLangLines [split $OpenSeesLangXML \n]
    set OpenSeesLangHeader [join [lrange $OpenSeesLangLines 0 25] \n]
    set OpenSeesLangFooter [join [lrange $OpenSeesLangLines 29 end] \n]
    set fid [open ../OpenSees$Style.xml w]
    puts $fid $OpenSeesLangHeader
    puts $fid "            <Keywords name=\"Keywords1\">$KeyWords1</Keywords>"
    puts $fid "            <Keywords name=\"Keywords2\">$KeyWords2</Keywords>"
    puts $fid "            <Keywords name=\"Keywords3\">$KeyWords3</Keywords>"
    puts $fid $OpenSeesLangFooter
    close $fid
} 




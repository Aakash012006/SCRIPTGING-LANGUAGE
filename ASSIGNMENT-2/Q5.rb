# 5. Tcl/Tk Script – Two List Boxes
===================================================================================
  # two_listboxes.tcl
package require Tk

# Create main window
set w .win
toplevel $w
wm title $w "Two List Boxes"

# First listbox
listbox $w.lb1 -selectmode single
$w.lb1 insert end "Apple" "Banana" "Cherry" "Date"
pack $w.lb1 -side left -padx 10 -pady 10

# Second listbox
listbox $w.lb2 -selectmode single
pack $w.lb2 -side right -padx 10 -pady 10

# When item in first box is clicked, copy to second box
bind $w.lb1 <<ListboxSelect>> {
    set sel [$w.lb1 curselection]
    if {$sel ne ""} {
        set item [$w.lb1 get $sel]
        $w.lb2 insert end $item
    }
}

# When item in second box is clicked, remove it
bind $w.lb2 <<ListboxSelect>> {
    set sel [$w.lb2 curselection]
    if {$sel ne ""} {
        $w.lb2 delete $sel
    }
}

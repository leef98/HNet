//Call:     item_stackable(itemID)
//Info:     Returns whether item itemID is stackable or not.
//          (money is stackable for example)
//Event:    Any
//Returns:  If the selected item is stackable (1=yes, 0=no)

var no,stackable;
no=argument0
stackable=0

if (no=1) {stackable=1}
if (no=2) {stackable=0}
if (no=3) {stackable=0}
if (no=4) {stackable=0}
if (no=5) {stackable=0}
if (no=6) {stackable=0}
if (no=7) {stackable=1}
if (no=8) {stackable=0}
if (no=9) {stackable=0}
if (no=10) {stackable=0}

return (stackable)

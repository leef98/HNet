/*scriptet kollar om inventoryn är uppe.
Är inventoryn uppe så skapas en optionbox till objektet.*/

if (global.paused){exit;} //Exitar dÃ¥ spelet Ã¤r pausat


draw_rectangle(global.holdItemXArraySet, global.holdItemYArraySet, global.holdItemXArraySet + 100, global.holdItemYArraySet + 100, true);

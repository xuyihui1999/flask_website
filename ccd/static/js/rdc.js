/*
This code controls the data displayed in the tables of many of the 
veiws. It lets the user choose how many entries to display, and defaults
the entries to 50.

This javascript code uses a jquery plugin called DataTable
documetation on it can be found at https://datatables.net/

This covers the 'scrollY' https://datatables.net/examples/basic_init/scroll_y.html
This covers the 'scrollX' https://datatables.net/examples/basic_init/scroll_x.html
This covers the 'pageLength' https://datatables.net/reference/option/pageLength
*/

$(document).ready(function() {
    $('#rdc').DataTable( {
	"pageLength": 50,
	
	});
} );

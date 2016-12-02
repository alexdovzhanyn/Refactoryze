$(document).ready(function(){

	// Duplicates the snippets code into the refactor text box if the user wants
	if ( $('.duplicate-code') ) {
		$('.duplicate-code').click(function(e){
			e.preventDefault();

			$('.refactor-text').val(
				$('.snippet-code').html()
			);
		})
	}
});
<?lassoscript
//............................................................................
//
//	pageblocks (c) 2002-2007  http://www.pageblocks.org/
//
//	Maintenance Notes:
//
//	ver 1.0 (2006-01-16) -- initial release
//
//.............................................................................

	// make sure PageBlocks API is loaded into global_ namespace
	// thanks to Jason Huck for this tag
	fwpInit_loadAPI('/_pbAPI/');

	var(
		'fw_pageMethod'		= 'pageConfig',
		'fw_indexRedirect'	= string,
		'fw_indexPath' 		= response_filepath
	);
	
	$fw_indexPath->(removeTrailing('default.lasso'));
	$fw_indexPath->(removeTrailing('index.lasso'));

	select($fw_indexPath);
	
		case('/');
			$fw_indexRedirect = '/home';
	
		case('/siteDbm/');
			$fw_indexRedirect = '/siteDbm/migrator';
	
		case('/siteMngr/');
			$fw_indexRedirect = '/siteMngr/mngr_login';
	
		case('/admin/');
			$fw_indexRedirect	= '/admin/login';
	
		case;
			$fw_indexRedirect = '/';
	
	/select;

	$__HTML_REPLY__ = fwpPage_init; 

?>
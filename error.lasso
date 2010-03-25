<?lassoscript
//............................................................................
//
//	pageblocks: (c) 2002-2007 http://www.pageblocks.org/
//
//............................................................................
/*

	{fileName=		error.lasso }
	{rsrcType=		include }
	{rsrcName=		error.lasso }
	{rsrcHTTP=		www.pageblocks.org/refc/ }
	
	{lassoVrsnMin=	8.1.0 }
	{lassoVrsnMax=	8.5.2 }

	{author=		Greg Willits }
	{authorEmail=	subscribe to pbTalk at www.pageblocks.org/talk/ }
	{authorHTTP=	www.pageblocks.org }
	
	{desc=			custom error trapping page }
	
	{maintvsrn=		1.2 }
	{maintrelease=	5.2.0 }
	{maintdate=		2007-06-25 }
	{maintauthor=	Greg Willits }
	{maintnotes=	removed some obsolete code }

	{maintvsrn=		1.1 }
	{maintrelease=	5.1.0 }
	{maintdate=		2006-05-26 }
	{maintauthor=	Greg Willits }
	{maintnotes=	removed some obsolete code,
					changed to the new error controller }

	{maintvsrn=		1.0.2 }
	{maintrelease=	UPDATE 2006-04-09 }
	{maintdate=		2006-04-09 }
	{maintauthor=	Greg Willits }
	{maintnotes=	no functional changes, but added a lot of commentary }

	{maintvsrn=		1.0.1 }
	{maintrelease=	5.0.1 }
	{maintdate=		2006-04-05 }
	{maintauthor=	Greg Willits }
	{maintnotes=	fixed obsolete var name for fw_pgTitle }

	{maintvsrn=		1.0 }
	{maintrelease=	5.0.0 }
	{maintdate=		2006-01-16 }
	{maintauthor=	Greg Willits }
	{maintnotes=	initial release }

*/
//............................................................................
//
//	Developer Modification Advisory: Specific Modifications
//	
//	This file should not be modified by the user except to alter the setting 
//	of Section (C)'s true|false trigger to include debug output for 
//	syntax errors during development
//............................................................................



//	--------------------------------------------------------------------------
//	(A)..... syntax errors .....
//
//	all errors not trapped by the application
//	end up here, which _should_ only be syntax errors
//	if the application is written with complete error handling
//	or for stub file Page Not Found errors

//	if the error is not a general syntax error (-9951)
//	and we have not already processed through this section (indicated by $fw_errFlag)
//	try to handle the error gracefully by trapping the error code & message
//	and calling the error manager to see what it can do about it

	if: (error_currentError: -errorcode) == (-9984);

		fwpPage_init;
		fwpPage_loadTemplate:
			-pgTitle	= 'pageblocks : StubFile Basics',
			-pgTemplate	= 'filenotfound';

	else: !(var:'fw_errFlag') &&  !(error_currentError: -errorcode) == (-9951);

		$fw_debug ? $fw_tagTracer->(add:'-------------- error.lasso --------------');

		var:
			'fw_errFlag'	= true,
			'fw_errMsg'		= error_currentError,
			'fw_errCode'	= error_currentError: -errorcode;

		var:
			'fw_pgTitle'	= 'Unexpected Error',
			'fw_pgHeader'	= 'hdr_err.dsp',
			'fw_mnuDefns'	= '';

//	if there is not a template that is active, then we don't even have a page ready
//	to display a message on, so we have to call an emergency template (template_error) to show the msg
//	template_error attempts to build a page with the application's normal layout and masthead
//	so it should be modified by the developer to reflect the site's design.
//	However, getting here is a usually a serious error, so template_error should not try to
//	salvage any page content, and should only call the error manager in one of the content blocks

		if: !(var_defined:'fw_templateActive');

			include: (($fw_sPath->'templates') + 'template' + $fw_myStyle + '_error' + fw_kDisplayExt);


//	--------------------------------------------------------------------------
//	(B)..... general errors .....

//	if there is a template active, then we have a page at least partially loaded
//	so, we want to leave that alone, and deal with the error as locally as possible.
//	to do that, we call the error manager right here, and show the error message within
//	the pageBlock that caused the error. We end up abandoning the structure of the 
//	page template, so this will cause invalid HTML, but we assume the attempt at preserving
//	as much page content as possible is more important.
//	This is not a general handler to be counted on, it is a last ditch effort to display
//	a meaningful message when something has gone wrong unexpectedly.

		else;
			encode_set: -encodesmart;
				$fw_error->(setErrorMsg: -code=$fw_errCode, -msg=$fw_errMsg);
				$fw_error->'errorMsg';
			/encode_set;
		/if;
	else;

//	if we detected recursion in the error handlind, something big happened
//	so just bail on trying to be pretty about it, and use a predominantly coded HTML
//	template which should have as little Lasso code as possible so as to pose no threat
//	to generating recursion. We don't have to abadon Lasso use in total because 
//	if we're still here running, then Lasso itself is at least functional, 
//	and we should still have access to essential framework vars, 
//	but possibly no application vars

		$__html_reply__ = string;
		include: '/site/msthd/templates/template_fatal.dsp';

//	--------------------------------------------------------------------------
//	(C)..... critical error debugging .....
//
//	during development, we can expect critical errors to be common
//	due to common syntax errors and typos

//	so, during development, change the false below to true;
//	and make sure that debug mode is enabled
//	if there are syntax errors in the page code
//	this should help display them on screen in many cases
//	while keeping the full error management system in tact for testing

//	###########  CAUTION  ###########
//	using this feature on a live production site
//	can and often will expose source code and table schema
//	depending on the error
//	###########  CAUTION  ###########

		false ? fwpPage_fatalDebug;
	/if;
?>

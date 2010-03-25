//	function for adding functions to the document onload event
//	add your functions at the end of this document
function addLoadEvent(func) {
	var oldonload = window.onload;
	if (typeof window.onload != 'function') {
		window.onload = func;
	} else {
		window.onload = function() {
			oldonload();
			func();
		}
	}
}

//	go to link function for onChange event
function go(loc,id)	{
	window.location=(loc+id);
}

//	function automaticly setting background to white of input/text elements on focus
function elColor() {
	if (!document.getElementsByTagName) {
		return;
	}
	var inputElmnts = document.getElementsByTagName("input");
	for (var i = 0; i < inputElmnts.length; i++) {
		var inputEl = inputElmnts[i];
		var elType = inputEl.type;
		if ((elType == "text") || (elType == "password")) {
			var elId = inputEl.id;
			var thisEl = document.getElementById(elId);
			thisEl.onfocus = function() {
				this.style.backgroundColor = "#ffffff";
			}
			thisEl.onblur = function() {
				this.style.backgroundColor = "";
			}
		} else if (elType == "file") {
			var elId = inputEl.id;
			var thisEl = document.getElementById(elId);
			thisEl.style.border = "";
		}
	}
}

//	function automaticly setting background to white on textarea elements on focus
function textareaColor() {
	if (!document.getElementsByTagName) {
		return;
	}
	var textareaElmnts = document.getElementsByTagName("textarea");
	for (var i = 0; i < textareaElmnts.length; i++) {
		var textareaEl = textareaElmnts[i];
		var textareaElId = textareaEl.id;
		var thisEl = document.getElementById(textareaElId);
		thisEl.onfocus = function() {
			this.style.backgroundColor = "#ffffff";
		}
		thisEl.onblur = function() {
			this.style.backgroundColor = "";
		}
	}
}

//	function to get viewport
function getBrowserViewport() {
	var viewport = document.viewport.getHeight() + ',' + document.viewport.getWidth(); 
	$('dimensions').value = viewport;
//	document.getElementById(formId).submit();
}

//	standard popup window opener
function openwin(url,name,width,height,left,top) {
	if (name = '') {
		name = 'win';
	}
	var newwin = window.open(url,name,'toolbar=0,location=0,directories=0,scrollbars=0,status=1,resizable=1,width=' + width + ',height=' + height + ',left=' + left + ',top=' + top);
	newwin.focus();
}

// script group for popup windows and links loading new windows
function acpopup(strURL,strType,strHeight,strWidth,strTop,strLeft) {
	var strOptions = '';
	if (strType == 'console') {
		strOptions = 'resizable,height='+strHeight+',width='+strWidth+',top='+strTop+',left='+strLeft;
		popupWin = window.open(strURL, 'NewWindow', strOptions);
		popupWin.focus();
		
		} else if (strType == 'print') {
		strOptions = 'resizable,toolbar=1,height='+strHeight+',width='+strWidth+',top='+strTop+',left='+strLeft;
		popupWin = window.open(strURL, 'PrintWindow', strOptions);
		popupWin.focus();

		} else if (strType == 'secondary') {
		strOptions = 'resizable,height='+strHeight+',width='+strWidth+',top='+strTop+',left='+strLeft;
		popupWin = window.open(strURL, 'SecondWindow', strOptions);
		popupWin.focus();
	}
}

function windowLinks() {
	if(!document.getElementsByTagName) {
		return;
	}
	
	var anchors = document.getElementsByTagName('a');
	for (var i = 0; i < anchors.length; i++) {
		var anchor = anchors[i];
		var relIndex = anchor.rel;
		if (relIndex){
			var relSplit = relIndex.split('|');
	
			if (relSplit[0] == 'external') {
				anchor.target = '_blank';
				anchor.className = 'external';
				anchor.title = 'Opens in new window';  
				
				} else if (relSplit[0] == 'externalx') {
				anchor.target = '_blank';
				anchor.className = 'externalx';
				anchor.title = 'Opens in new window: '+ anchor.href;
					
				} else if (relSplit[0] == 'popup') {
				anchor.className = 'popup';
				anchor.title = 'Opens in popup window';	
				anchor.popupWidth = relSplit[1];
				anchor.popupHeight = relSplit[2];
				anchor.popupTop = relSplit[3];
				anchor.popupLeft = relSplit[4];
				anchor.onclick = function() {acpopup(this.href,'console',this.popupWidth,this.popupHeight,this.popupTop,this.popupLeft);return false;};
				
				} else if (relSplit[0] == 'popupx') {
				anchor.className = 'popupx';
				anchor.popupWidth = relSplit[1];
				anchor.popupHeight = relSplit[2];
				anchor.popupTop = relSplit[3];
				anchor.popupLeft = relSplit[4];
				anchor.onclick = function() {acpopup(this.href,'console',this.popupWidth,this.popupHeight,this.popupTop,this.popupLeft);return false;};
				
				} else if (relSplit[0] == 'popupprint') {
				anchor.className = 'popupx';
				anchor.popupWidth = relSplit[1];
				anchor.popupHeight = relSplit[2];
				anchor.popupTop = relSplit[3];
				anchor.popupLeft = relSplit[4];
				anchor.onclick = function() {acpopup(this.href,'print',this.popupWidth,this.popupHeight,this.popupTop,this.popupLeft);return false;};
				
				} else if (relSplit[0] == 'popupsec') {
				anchor.className = 'popup';
				anchor.popupWidth = relSplit[1];
				anchor.popupHeight = relSplit[2];
				anchor.popupTop = relSplit[3];
				anchor.popupLeft = relSplit[4];
				anchor.onclick = function() {acpopup(this.href,'secondary',this.popupWidth,this.popupHeight,this.popupTop,this.popupLeft);return false;};
			}
		}
	}
}


//	------------------------------------------------------------
//:	ajax related functions



//	add your functions to the document onload event by listing
//	then as arguments of the addLoadEvent function
addLoadEvent(function() {
	windowLinks();
	
	if (typeof elfoc != 'undefined') {
		elfoc();
	}
	
	elColor();
	textareaColor();
	getBrowserViewport();
});
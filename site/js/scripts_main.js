// main scripts file for www.malkocompetition.com admin section, loaded on all pages






//	go to link function for onChange event
function goL(loc)	{
	window.location=(loc);
}

//	go to link with id function for onChange event
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


//function inputStyle() {
//	var inputEl = $A(document.getElementsByTagName('input'));
	
//	alert(inputEl);
//}


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

//	standard popup window opener
function openwin(url,width,height,left,top) {
	var newwin = window.open(url,"win",'toolbar=0,location=0,directories=0,scrollbars=0,status=1,resizable=1,width=' + width + ',height=' + height + ',left=' + left + ',top=' + top);
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
				anchor.title = 'Åbner i popup vindue/Opens in popup window';	
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


// show/hide 2 divs alternately
function toggleElement(targ1,targ2,foc) {
	new Effect.BlindUp(targ1); 
	setTimeout('showElement("' + targ2 + '","' + foc + '")',900);
}

// function to show display div
function showElement(targ,id) {
	var ajax = new Effect.BlindDown(targ);
	setTimeout(function() {
		setFocus(id); 
	}, 1400);
	return false;
}

// function set focus to input element
function setFocus(id) {
	var elm = $(id);
	elm.focus();
}


//	function for updating a second menu based on selection in first menu
//	busy indicator id is optional
function updateSel(selId, busyId, url, param) {
	if (param == '')
		$(selId).disabled = true;
	else {
		$(selId).disabled = true;
		if (busyId != '') {
			$(busyId).style.display = '';
		}
		var ajax = new Ajax.Updater(
			selId,
			url + param, {
				method: 'get',
				onComplete: function(element) {
					if (busyId != '') {
						$(busyId).style.display = 'none';
					}
					$(selId).disabled = false;
					$(selId).focus(); 
				}
			}
		);
	}
}



//	------------------------------------------------------------
//:	boxover

/* --- BoxOver ---
/* --- v 2.0 16th April 2006
By Oliver Bryant with help of Matthew Tagg
http://boxover.swazz.org */

if (typeof document.attachEvent!='undefined') {
   window.attachEvent('onload',init);
   document.attachEvent('onmousemove',moveMouse);
   document.attachEvent('onclick',checkMove); }
else {
   window.addEventListener('load',init,false);
   document.addEventListener('mousemove',moveMouse,false);
   document.addEventListener('click',checkMove,false);
}

var oDv=document.createElement("div");
var dvHdr=document.createElement("div");
var dvBdy=document.createElement("div");
var windowlock,boxMove,fixposx,fixposy,lockX,lockY,fixx,fixy,ox,oy,boxLeft,boxRight,boxTop,boxBottom,evt,mouseX,mouseY,boxOpen,totalScrollTop,totalScrollLeft;
boxOpen=false;
ox=10;
oy=10;
lockX=0;
lockY=0;

function init() {
	oDv.appendChild(dvHdr);
	oDv.appendChild(dvBdy);
	oDv.style.position="absolute";
	oDv.style.visibility='hidden';
	document.body.appendChild(oDv);	
}

function defHdrStyle() {
	dvHdr.innerHTML='<img  style="vertical-align:middle"  src="info.gif">&nbsp;&nbsp;'+dvHdr.innerHTML;
	dvHdr.style.fontWeight='bold';
	dvHdr.style.width='150px';
	dvHdr.style.fontFamily='arial';
	dvHdr.style.border='1px solid #A5CFE9';
	dvHdr.style.padding='3';
	dvHdr.style.fontSize='11';
	dvHdr.style.color='#4B7A98';
	dvHdr.style.background='#D5EBF9';
	dvHdr.style.filter='alpha(opacity=85)'; // IE
	dvHdr.style.opacity='0.85'; // FF
}

function defBdyStyle() {
	dvBdy.style.borderBottom='1px solid #A5CFE9';
	dvBdy.style.borderLeft='1px solid #A5CFE9';
	dvBdy.style.borderRight='1px solid #A5CFE9';
	dvBdy.style.width='150px';
	dvBdy.style.fontFamily='arial';
	dvBdy.style.fontSize='11';
	dvBdy.style.padding='3';
	dvBdy.style.color='#1B4966';
	dvBdy.style.background='#FFFFFF';
	dvBdy.style.filter='alpha(opacity=85)'; // IE
	dvBdy.style.opacity='0.85'; // FF
}

function checkElemBO(txt) {
if (!txt || typeof(txt) != 'string') return false;
if ((txt.indexOf('header')>-1)&&(txt.indexOf('body')>-1)&&(txt.indexOf('[')>-1)&&(txt.indexOf('[')>-1)) 
   return true;
else
   return false;
}

function scanBO(curNode) {
	  if (checkElemBO(curNode.title)) {
         curNode.boHDR=getParam('header',curNode.title);
         curNode.boBDY=getParam('body',curNode.title);
			curNode.boCSSBDY=getParam('cssbody',curNode.title);			
			curNode.boCSSHDR=getParam('cssheader',curNode.title);
			curNode.IEbugfix=(getParam('hideselects',curNode.title)=='on')?true:false;
			curNode.fixX=parseInt(getParam('fixedrelx',curNode.title));
			curNode.fixY=parseInt(getParam('fixedrely',curNode.title));
			curNode.absX=parseInt(getParam('fixedabsx',curNode.title));
			curNode.absY=parseInt(getParam('fixedabsy',curNode.title));
			curNode.offY=(getParam('offsety',curNode.title)!='')?parseInt(getParam('offsety',curNode.title)):10;
			curNode.offX=(getParam('offsetx',curNode.title)!='')?parseInt(getParam('offsetx',curNode.title)):10;
			curNode.fade=(getParam('fade',curNode.title)=='on')?true:false;
			curNode.fadespeed=(getParam('fadespeed',curNode.title)!='')?getParam('fadespeed',curNode.title):0.04;
			curNode.delay=(getParam('delay',curNode.title)!='')?parseInt(getParam('delay',curNode.title)):0;
			if (getParam('requireclick',curNode.title)=='on') {
				curNode.requireclick=true;
				document.all?curNode.attachEvent('onclick',showHideBox):curNode.addEventListener('click',showHideBox,false);
				document.all?curNode.attachEvent('onmouseover',hideBox):curNode.addEventListener('mouseover',hideBox,false);
			}
			else {// Note : if requireclick is on the stop clicks are ignored   			
   			if (getParam('doubleclickstop',curNode.title)!='off') {
   				document.all?curNode.attachEvent('ondblclick',pauseBox):curNode.addEventListener('dblclick',pauseBox,false);
   			}	
   			if (getParam('singleclickstop',curNode.title)=='on') {
   				document.all?curNode.attachEvent('onclick',pauseBox):curNode.addEventListener('click',pauseBox,false);
   			}
   		}
			curNode.windowLock=getParam('windowlock',curNode.title).toLowerCase()=='off'?false:true;
			curNode.title='';
			curNode.hasbox=1;
	   }
	   else
	      curNode.hasbox=2;   
}


function getParam(param,list) {
	var reg = new RegExp('([^a-zA-Z]' + param + '|^' + param + ')\\s*=\\s*\\[\\s*(((\\[\\[)|(\\]\\])|([^\\]\\[]))*)\\s*\\]');
	var res = reg.exec(list);
	var returnvar;
	if(res)
		return res[2].replace('[[','[').replace(']]',']');
	else
		return '';
}

function Left(elem){	
	var x=0;
	if (elem.calcLeft)
		return elem.calcLeft;
	var oElem=elem;
	while(elem){
		 if ((elem.currentStyle)&& (!isNaN(parseInt(elem.currentStyle.borderLeftWidth)))&&(x!=0))
		 	x+=parseInt(elem.currentStyle.borderLeftWidth);
		 x+=elem.offsetLeft;
		 elem=elem.offsetParent;
	  } 
	oElem.calcLeft=x;
	return x;
	}

function Top(elem){
	 var x=0;
	 if (elem.calcTop)
	 	return elem.calcTop;
	 var oElem=elem;
	 while(elem){		
	 	 if ((elem.currentStyle)&& (!isNaN(parseInt(elem.currentStyle.borderTopWidth)))&&(x!=0))
		 	x+=parseInt(elem.currentStyle.borderTopWidth); 
		 x+=elem.offsetTop;
	         elem=elem.offsetParent;
 	 } 
 	 oElem.calcTop=x;
 	 return x;
 	 
}

var ah,ab;
function applyStyles() {
	if(ab)
		oDv.removeChild(dvBdy);
	if (ah)
		oDv.removeChild(dvHdr);
	dvHdr=document.createElement("div");
	dvBdy=document.createElement("div");
	CBE.boCSSBDY?dvBdy.className=CBE.boCSSBDY:defBdyStyle();
	CBE.boCSSHDR?dvHdr.className=CBE.boCSSHDR:defHdrStyle();
	dvHdr.innerHTML=CBE.boHDR;
	dvBdy.innerHTML=CBE.boBDY;
	ah=false;
	ab=false;
	if (CBE.boHDR!='') {		
		oDv.appendChild(dvHdr);
		ah=true;
	}	
	if (CBE.boBDY!=''){
		oDv.appendChild(dvBdy);
		ab=true;
	}	
}

var CSE,iterElem,LSE,CBE,LBE, totalScrollLeft, totalScrollTop, width, height ;
var ini=false;

// Customised function for inner window dimension
function SHW() {
   if (document.body && (document.body.clientWidth !=0)) {
      width=document.body.clientWidth;
      height=document.body.clientHeight;
   }
   if (document.documentElement && (document.documentElement.clientWidth!=0) && (document.body.clientWidth + 20 >= document.documentElement.clientWidth)) {
      width=document.documentElement.clientWidth;   
      height=document.documentElement.clientHeight;   
   }   
   return [width,height];
}


var ID=null;
function moveMouse(e) {
   //boxMove=true;
	e?evt=e:evt=event;
	
	CSE=evt.target?evt.target:evt.srcElement;
	
	if (!CSE.hasbox) {
	   // Note we need to scan up DOM here, some elements like TR don't get triggered as srcElement
	   iElem=CSE;
	   while ((iElem.parentNode) && (!iElem.hasbox)) {
	      scanBO(iElem);
	      iElem=iElem.parentNode;
	   }	   
	}
	
	if ((CSE!=LSE)&&(!isChild(CSE,dvHdr))&&(!isChild(CSE,dvBdy))){		
	   if (!CSE.boxItem) {
			iterElem=CSE;
			while ((iterElem.hasbox==2)&&(iterElem.parentNode))
					iterElem=iterElem.parentNode; 
			CSE.boxItem=iterElem;
			}
		iterElem=CSE.boxItem;
		if (CSE.boxItem&&(CSE.boxItem.hasbox==1))  {
			LBE=CBE;
			CBE=iterElem;
			if (CBE!=LBE) {
				applyStyles();
				if (!CBE.requireclick)
					if (CBE.fade) {
						if (ID!=null)
							clearTimeout(ID);
						ID=setTimeout("fadeIn("+CBE.fadespeed+")",CBE.delay);
					}
					else {
						if (ID!=null)
							clearTimeout(ID);
						COL=1;
						ID=setTimeout("oDv.style.visibility='visible';ID=null;",CBE.delay);						
					}
				if (CBE.IEbugfix) {hideSelects();} 
				fixposx=!isNaN(CBE.fixX)?Left(CBE)+CBE.fixX:CBE.absX;
				fixposy=!isNaN(CBE.fixY)?Top(CBE)+CBE.fixY:CBE.absY;			
				lockX=0;
				lockY=0;
				boxMove=true;
				ox=CBE.offX?CBE.offX:10;
				oy=CBE.offY?CBE.offY:10;
			}
		}
		else if (!isChild(CSE,dvHdr) && !isChild(CSE,dvBdy) && (boxMove))	{
			// The conditional here fixes flickering between tables cells.
			if ((!isChild(CBE,CSE)) || (CSE.tagName!='TABLE')) {   			
   			CBE=null;
   			fadeOut();
   			showSelects();
			}
		}
		LSE=CSE;
	}
	else if (((isChild(CSE,dvHdr) || isChild(CSE,dvBdy))&&(boxMove))) {
		totalScrollLeft=0;
		totalScrollTop=0;
		
		iterElem=CSE;
		while(iterElem) {
			if(!isNaN(parseInt(iterElem.scrollTop)))
				totalScrollTop+=parseInt(iterElem.scrollTop);
			if(!isNaN(parseInt(iterElem.scrollLeft)))
				totalScrollLeft+=parseInt(iterElem.scrollLeft);
			iterElem=iterElem.parentNode;			
		}
		if (CBE!=null) {
			boxLeft=Left(CBE)-totalScrollLeft;
			boxRight=parseInt(Left(CBE)+CBE.offsetWidth)-totalScrollLeft;
			boxTop=Top(CBE)-totalScrollTop;
			boxBottom=parseInt(Top(CBE)+CBE.offsetHeight)-totalScrollTop;
			doCheck();
		}
	}
	
	if (boxMove&&CBE) {
		// This added to alleviate bug in IE6 w.r.t DOCTYPE
		bodyScrollTop=document.documentElement&&document.documentElement.scrollTop?document.documentElement.scrollTop:document.body.scrollTop;
		bodyScrollLet=document.documentElement&&document.documentElement.scrollLeft?document.documentElement.scrollLeft:document.body.scrollLeft;
		mouseX=evt.pageX?evt.pageX-bodyScrollLet:evt.clientX-document.body.clientLeft;
		mouseY=evt.pageY?evt.pageY-bodyScrollTop:evt.clientY-document.body.clientTop;
		if ((CBE)&&(CBE.windowLock)) {
			mouseY < -oy?lockY=-mouseY-oy:lockY=0;
			mouseX < -ox?lockX=-mouseX-ox:lockX=0;
			mouseY > (SHW()[1]-oDv.offsetHeight-oy)?lockY=-mouseY+SHW()[1]-oDv.offsetHeight-oy:lockY=lockY;
			mouseX > (SHW()[0]-dvBdy.offsetWidth-ox)?lockX=-mouseX-ox+SHW()[0]-dvBdy.offsetWidth:lockX=lockX;			
		}
		oDv.style.left=((fixposx)||(fixposx==0))?fixposx:bodyScrollLet+mouseX+ox+lockX+"px";
		oDv.style.top=((fixposy)||(fixposy==0))?fixposy:bodyScrollTop+mouseY+oy+lockY+"px";		
		
	}
}

function doCheck() {	
	if (   (mouseX < boxLeft)    ||     (mouseX >boxRight)     || (mouseY < boxTop) || (mouseY > boxBottom)) {
		if (!CBE.requireclick)
			fadeOut();
		if (CBE.IEbugfix) {showSelects();}
		CBE=null;
	}
}

function pauseBox(e) {
   e?evt=e:evt=event;
	boxMove=false;
	evt.cancelBubble=true;
}

function showHideBox(e) {
	oDv.style.visibility=(oDv.style.visibility!='visible')?'visible':'hidden';
}

function hideBox(e) {
	oDv.style.visibility='hidden';
}

var COL=0;
var stopfade=false;
function fadeIn(fs) {
		ID=null;
		COL=0;
		oDv.style.visibility='visible';
		fadeIn2(fs);
}

function fadeIn2(fs) {
		COL=COL+fs;
		COL=(COL>1)?1:COL;
		oDv.style.filter='alpha(opacity='+parseInt(100*COL)+')';
		oDv.style.opacity=COL;
		if (COL<1)
		 setTimeout("fadeIn2("+fs+")",20);		
}


function fadeOut() {
	oDv.style.visibility='hidden';
	
}

function isChild(s,d) {
	while(s) {
		if (s==d) 
			return true;
		s=s.parentNode;
	}
	return false;
}

var cSrc;
function checkMove(e) {
	e?evt=e:evt=event;
	cSrc=evt.target?evt.target:evt.srcElement;
	if ((!boxMove)&&(!isChild(cSrc,oDv))) {
		fadeOut();
		if (CBE&&CBE.IEbugfix) {showSelects();}
		boxMove=true;
		CBE=null;
	}
}

function showSelects(){
   var elements = document.getElementsByTagName("select");
   for (var i=0;i<elements.length;i++){
      elements[i].style.visibility='visible';
   }
}

function hideSelects(){
   var elements = document.getElementsByTagName("select");
   for (i=0;i< elements.length;i++){
   elements[i].style.visibility='hidden';
   }
} // boxover


document.observe('dom:loaded', function() {
	windowLinks();
	elColor();
	textareaColor();
	if (typeof elfoc != 'undefined') {
		elfoc();
	}
});
		<!--cgi exception-->	<!--cgierrorcode:-2-->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script>window.gbIsNoCheck = true;</script>

<script type="text/javascript">
document.domain="mail.qq.com";
function getTop()
{
	var f=arguments.callee,w;
	if(!f.t)
	{try{w=window;f.t=w!=parent?(parent.getTop?parent.getTop():parent.parent.getTop()):w;}catch(e){f.t=w;}}
	return f.t;
}
try{window.top=getTop();}catch(e){eval("var top=getTop();");}
var gsUsed="6";
								var g_uin="757990689";
				window == getTop() && document.write('<script src="all.js"></'+'script>');
			(getTop().initPageEvent || function(){})(window);
</script>

<script src="all.js" type="text/javascript"></script>
<title>QQMail</title>
<style>
</style>

<script>
	var bIsDiskPanelFrame = "" == "pannel";
( function() {
	window.fsuccesss = "";
	
	if (getTop().initPageEvent)
	{
		getTop().initPageEvent(window);
	}

	window.isMainFrameError = !getTop().getMainWin || 
		getTop().getMainWin() == window || ( getTop() == window && !getTop().getMainWin );

	if ( !isMainFrameError )
	{
		return ;
	}

	document.write( [
		'<link rel="stylesheet" type="text/css" href="comm2010.css" />',
		'<link rel="stylesheet" type="text/css" href="/cgi-bin/getcss?sid=4MGs5OEu-NKAfVAK,2,en_US&ft=skin" />'
	].join( "" ) );
	window.onerror = function(msg, url, line) {return true;};
	window.onload = function()
	{
		setTimeout( function() {
			document.body.backgroundColor = "#fff";
			var oMsgText = getTop().S("msg_txt",window);
			var _sMsg = getTop().trim(oMsgText.innerHTML);
			var bHasHistory = history.length > 0 && getTop() != window;
			var sCode = "";
			if (bIsDiskPanelFrame)//QQ diskpanel
			{
				sCode = ['<center><div class="bd" style="text-align:left; margin:10px;"><div class="settingtable bold bd" style="padding:5px 10px; border-width:0 0 1px;">Error.</div><div style="padding:20px 10px 10px;">System error. You can <a href="javascript:location.reload()">refresh to try again. </a></div><div style="padding:0 10px 10px; text-align:right;"><input type="button" onclick="history.back()" class="btn" style="width:80px;" value="Back to Previous" /></div></div></center>'];
			}
			else if(_sMsg)
			{
				sCode = [ 
					'<center><div class="bd" style="text-align:left;margin-top:20px;width:70%;"><div class="barspace1 toolbgline toolbg b_size bold" style="padding:12px 0 12px 16px;">QQMail Tips</div><div style="background:#fff;padding:20px;line-height:20px;">',
						'<div class="b_size">',
							_sMsg ? _sMsg : 'System busy. Service disconnected. ', '<br><br><div class="b_size">You can ',
						'<a href="javascript:;" onclick="location.replace(location.href.split(\x27#\x27)[0]);return false;" style="font:14px;">refresh to try again</a> .</div>',
						'</div>',
						'<div style="padding-top:20px;text-align:right;">',
							bHasHistory ? '<input type=button class=btn value=" Back to Previous " onclick="history.back();"></div>' : '<input type=button value="Back to Homepage" class=btn onclick="getTop().goUrlTopWin(\'http://' + location.host +  '/cgi-bin/frame_html?sid=4MGs5OEu-NKAfVAK,2,en_US&from=' + '\');">',
						'</div>',
					'</div>',
					'</div></center>'
				];
			}

			oMsgText.innerHTML = sCode.join("");
			oMsgText.style.display = "block";
			
		}, 20);
	};
} )();
function SafeModeSwitchConfirm()
{
	if(getTop().S("divSafeModeOn"))
	{
		return;
	}
	if(confirm("QQMail System is maintaining, you can signin by read only mode.\nNote: if you are writing messages or notes and switch to read-only mode directly, current contents will be lost. Please [Cancel] and save current contents manually."))
	{
		getTop().goUrlTopWin(getTop().location.href, true);
	}
}
</script>

</head>

<body class="tipbg" style="text-align:center;background:white;">

<div id="msg_txt" style="display:none;" code="-2">

 <script>getTop().location.href="/cgi-bin/loginpage?s=session_timeout&from=&r=05e860da1d5de9f14b40c6ab38739267";</script></div>

</body>

<script language="Javascript">
( function() {
	var _oMainWin = getTop().getMainWin(),
		_sMainWinLoc = _oMainWin.location.href,
		_msgTxtObj = getTop().S("msg_txt", window),
		_bIsShowVerifyFrame = (getTop().QMDialog && getTop().QMDialog("QMVerify"))|| typeof(bVerifycode)!="undefined";

	if(!_msgTxtObj || getTop().trim && getTop().trim(_msgTxtObj.innerText || _msgTxtObj.textContent) == "[Report error]")
	{
		return;
	}
	_msgTxtObj.innerHTML = getTop().filteScript( _msgTxtObj.innerHTML );

	if (window["misslist"])
	{	
		if (atype=="fw")
		{
			var infos = misslist;
		}
		else
		{
			var infos = _oMainWin.QMAttach.getInfoUid(misslist);
		}
		getTop().confirmBox( {
			msg : getTop().TE(['%@%if(%type%=="fw")%@%Attachment(s) extraction failed%@%else%@%%len%Attachment(s) upload failed%@%endif%@%, Please retry.<br/>',
				'%@%for(%list%)%@%',
					'<span style="color:red;" title="%name%">',
						'%@%eval subAsiiStr(%name%,%_root_.width%,"...",1)%@%',
					'</span>;&nbsp;',
					'%@%if(%_root_.len%<5)%@%<br/>%@%endif%@%',
				'%@%endfor%@%'], '%').replace( {
				type : atype,
				len : infos.length,
				width : infos.length < 5 ? 40 : 15,
				list : infos
			} ),
			title : "Error Information",
			confirmBtnTxt : "Retry",
			cancelBtnTxt : "Cancel",
			onreturn : function(_abIsOk) {
				if (_abIsOk)
				{
					_oMainWin.fireMouseEvent(_oMainWin.SN("sendbtn")[0], "click");
				}
				else
				{
					E(infos, function(_aoInfo) {
						_oMainWin.delAttach(_aoInfo.id);
					});
				}
			}
		} );
	}
		else if( !isMainFrameError ) {
		if (!bIsDiskPanelFrame || window.name != "keepSession")
		{
			getTop().msgBox(null, fsuccesss, true, 5000, null, window);
		}
	}

	try {
				getTop().errorProcess(
			getTop().extend(
		{
			title 	: "cgi exception",
			appname : "download",
			errcode	: "-2",
										errmsg	: " \x3cscript\x3egetTop().location.href=\x22/cgi-bin/loginpage?s=session_timeout\x26from=\x26r=05e860da1d5de9f14b40c6ab38739267\x22;\x3c/script\x3e" 
		}
		, 
			{
				winname : window.name,
				winid : window.id
			})
		);
	}
	catch( e ){}
} )();
</script>

</html>

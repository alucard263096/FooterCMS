<?php

//login redirect
if(!isset($_SESSION[SESSIONNAME]["SysUser"]))
{
	$_SESSION[SESSIONNAME]["url_request"]="http://".$_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
	WindowRedirect($CONFIG['smarty']['rootpath']."/index.php");
	exit();
}

if(isset($_SESSION[SESSIONNAME]["url_request"]))
{
	$url_request=$_SESSION[SESSIONNAME]["url_request"];
	unset($_SESSION[SESSIONNAME]["url_request"]);
	WindowRedirect($url_request);
	exit();
}

$SysUser=$_SESSION[SESSIONNAME]["SysUser"];

//Menu init
if(isset($_SESSION[SESSIONNAME]["SystemMenu"])){
	$MenuArray=$_SESSION[SESSIONNAME]["SystemMenu"];
}else{

$path=ROOT."/model/menu.xml";
$fp = fopen($path,"r");
$str = fread($fp,filesize($path));
$MenuArray=json_decode(json_encode((array) simplexml_load_string($str)), true);
$_SESSION[SESSIONNAME]["SystemMenu"]=$MenuArray;
}

if($smarty!=null){
	$smarty->assign("SystemMenu",$MenuArray);
	$smarty->assign("SysUser",$SysUser);
}

?>
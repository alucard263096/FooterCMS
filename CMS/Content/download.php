<?php
  require '../include/common.inc.php';
  include ROOT.'/include/init.inc.php';
  $action=$_REQUEST["action"];

  
  $model=new XmlModel("download","download.php");
  $smarty->assign("MyModule","content");
  $model->DefaultShow($smarty,$dbmgr,$action,"download",$_REQUEST);

?>
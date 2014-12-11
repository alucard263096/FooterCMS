<?php
  require '../include/common.inc.php';
  include ROOT.'/include/init.inc.php';
  require ROOT.'/classes/modelmgr/TestXmlModel.cls.php';

  $action=$_REQUEST["action"];
  $model=new TestXmlModel("test.php");
  
	$smarty->assign("MyModule","content");
	$model->DefaultShow($smarty,$dbmgr,$action,"test",$_REQUEST);
?>
<?php
  require '../include/common.inc.php';
  include ROOT.'/include/init.inc.php';
  require ROOT.'/classes/modelmgr/TestCatXmlModel.cls.php';
  $action=$_REQUEST["action"];
  $model=new TestCatXmlModel("testcat.php");
  
	$smarty->assign("MyModule","content");


	$model->DefaultShow($smarty,$dbmgr,$action,"testcat",$_REQUEST);
?>
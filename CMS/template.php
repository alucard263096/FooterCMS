<?php
/*
 * Created on 2012-6-30
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
  require 'include/common.inc.php';

 $model=$_REQUEST["model"];
 if($model==""){
	echo "No model name!";
	exit;
 }
 
  $model=new XmlModel("banner","");
  $data=$model->getModelData();
  
  //print_r($data);
  //exit;

  $mgr=new ExcelMgr();
  
  $mgr->setTitle($data["name"]."数据导入模板");
  
  $mgr->setHeaderForModel($data["fields"]["field"]);

  $mgr->download($data["name"]."数据导入模板");

?>
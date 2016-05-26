<?php
require ROOT.'/libs/PHPExcel/Classes/PHPExcel.php';
class ExcelMgr
{
	private $objPHPExcel;
	public function __construct()
	{
		$this->objPHPExcel = new PHPExcel();
		$this->objPHPExcel->getProperties()->setCreator("Helpfooter")
							 ->setLastModifiedBy("Helpfooter")
							 ->setTitle("数据导入模板")
							 ->setSubject("数据导入模板")
							 ->setDescription("数据导入模板")
							 ->setKeywords("数据导入模板")
							 ->setCategory("数据导入模板");

	}

	public function setTitle($title){
		$this->objPHPExcel->getProperties()->setTitle($title)
											->setSubject($title);
	}

	public function setHeaderForModel($header){
		for($i=0;$i<count($header);$i++){
			$objRichText = new PHPExcel_RichText();
			$objRichText->createText($header[$i]["name"]);
			$objPayable = $objRichText->createTextRun($header[$i]["name"]);
			$objPayable->getFont()->setBold(true);
			$objPayable->getFont()->setItalic(true);
			$objPayable->getFont()->setColor( new PHPExcel_Style_Color( PHPExcel_Style_Color::COLOR_WHITE ) );
			$this->objPHPExcel->setActiveSheetIndex(0)->setCellValue($this->getCol($i)."1",$objRichText);
		}
		//$startrow=2;
		//if($header==null){
		//	$startrow=1;
		//}
		//for($i=0;$i<count($array);$i++){
		//	for($j=0;$j<count($array[$i]);$j++){
		//		$this->objPHPExcel->setActiveSheetIndex(0)->setCellValue($this->getCol($i).($startrow+$j), $array[$i][$j]);
		//	}
		//}
		$this->objPHPExcel->getActiveSheet()->setTitle('sheet 1');
	}

	public function download($filename){
		// Redirect output to a client’s web browser (Excel2007)
		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		header('Content-Disposition: attachment;filename="'.$filename.'.xlsx"');
		header('Cache-Control: max-age=0');
		// If you're serving to IE 9, then the following may be needed
		header('Cache-Control: max-age=1');

		// If you're serving to IE over SSL, then the following may be needed
		header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
		header ('Pragma: public'); // HTTP/1.0

		$objWriter = PHPExcel_IOFactory::createWriter($this->objPHPExcel, 'Excel2007');
		$objWriter->save('php://output');
		exit;
	}

	public function getCol($num){
		$num=$num+1;
		$ret="";
		$yu=$num%26;
		while(intval($num/26)){
			$num=intval($num/26);
			if($num<26){
				$ret=chr($num+64).$ret;
				break;
			}
		}
		if($yu>0){
			$ret=$ret.chr($yu+64);
		}
		return $ret;
	}

}

?>
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

		$objPHPExcel=$this->objPHPExcel;
		$this->objPHPExcel->setActiveSheetIndex(0);

		$i=0;
		foreach($header as $val){

			if($val["type"]=="grid"){
				continue;
			}

			$objRichText = new PHPExcel_RichText();
			//$objRichText->createText($header[$i]["name"]);
			$objPayable = $objRichText->createTextRun($val["name"]);
			$objPayable->getFont()->setBold(true);
			//$objPayable->getFont()->setItalic(true);
			$objPayable->getFont()->setColor( new PHPExcel_Style_Color( PHPExcel_Style_Color::COLOR_WHITE ) );
			
			$this->objPHPExcel->getActiveSheet()->setCellValue($this->getCol($i)."1",  $objRichText);

			$this->objPHPExcel->getActiveSheet()->getStyle($this->getCol($i)."1")
			->getFill()->setFillType(PHPExcel_Style_Fill::FILL_SOLID)
			->getStartColor()->setRGB(new PHPExcel_Style_Color( PHPExcel_Style_Color::COLOR_DARKBLUE ) );
			$this->objPHPExcel->getActiveSheet()->getColumnDimension($this->getCol($i))->setWidth(15);

			$format=PHPExcel_Style_NumberFormat::FORMAT_GENERAL;
			if($val["type"]=="number"){
				$format=PHPExcel_Style_NumberFormat::FORMAT_NUMBER_00;
				$objPHPExcel->getActiveSheet()->getStyle($this->getCol($i).'2:'.$this->getCol($i)."1000")->getNumberFormat()
				->setFormatCode($format);
			}else if($val["type"]=="datetime"){
				$format=PHPExcel_Style_NumberFormat::FORMAT_DATE_YYYYMMDD2;				
				$objPHPExcel->getActiveSheet()->getStyle($this->getCol($i).'2:'.$this->getCol($i)."1000")->getNumberFormat()
				->setFormatCode($format);
			}else if($val["type"]=="check"){
				for($k=2;$k<=1000;$k++){
					$objValidation = $objPHPExcel->getActiveSheet()->getCell($this->getCol($i)."$k")->getDataValidation();
					$objValidation -> setType(PHPExcel_Cell_DataValidation::TYPE_LIST)  
				   -> setErrorStyle(PHPExcel_Cell_DataValidation::STYLE_INFORMATION)  
				   -> setAllowBlank(false)  
				   -> setShowInputMessage(true)  
				   -> setShowErrorMessage(true)  
				   -> setShowDropDown(true)  
				   -> setErrorTitle('输入的值有误')  
				   -> setError('您输入的值不在下拉框列表内.')
				   -> setFormula1('"是,否"'); 
				}
			}else if($val["type"]=="select"){
				
				$select="";
				$f=true;
				foreach($val["options"]["option"] as $option){
					
					if(!$f){
						$select=$select.",";
					}
					$f=false;
					$select=$select.$option["name"];
				}
				
				for($k=2;$k<=1000;$k++){
					$objValidation = $objPHPExcel->getActiveSheet()->getCell($this->getCol($i)."$k")->getDataValidation();
					$objValidation -> setType(PHPExcel_Cell_DataValidation::TYPE_LIST)  
				   -> setErrorStyle(PHPExcel_Cell_DataValidation::STYLE_INFORMATION)
				   -> setAllowBlank(false)  
				   -> setShowInputMessage(true)  
				   -> setShowErrorMessage(true)  
				   -> setShowDropDown(true)  
				   -> setErrorTitle('输入的值有误')  
				   -> setError('您输入的值不在下拉框列表内.')
				   -> setFormula1('"'.$select.'"'); 
				}
			}
			
			$i++;
		}
		
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
Class extends DataClass

exposed Function getTask()
	var $0 : cs:C1710.TaskEntity
	var $1; $nameParam : Text
	$nameParam:=$1
	$0:=This:C1470.query("name = :1"; $nameParam).first()
	
exposed Function pushData
	var $1; $entity; $status; $0 : Object
	
	$entity:=$1
	
	$status:=checkData($entity)  // $status est un objet avec une propriété booléenne "success"
	
	$0:=$status
	
	If ($status.success)
		$status:=$entity.save()
		If ($status.success)
			$0:=$entity
		End if 
	End if 
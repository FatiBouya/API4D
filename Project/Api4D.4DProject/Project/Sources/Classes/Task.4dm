Class extends DataClass

exposed Function getAll
	//C_OBJECT($0)
	$0:=New collection:C1472()
	$objet:=New object:C1471()
	$objet:=ds:C1482.Task.all().toCollection()
	$0:=$objet
/*
C_OBJECT($0)
$objet:=New object()
$objet:=ds.Task.all()
$0:=$objet
*/
exposed Function create
	C_OBJECT:C1216($0)
	C_OBJECT:C1216($1)
	$e:=ds:C1482.Task.new()
	$e.fromObject($1)
	$e.save()
	$0:=$e
exposed Function drop
	C_TEXT:C284($1; $0)
	C_OBJECT:C1216($tasks; $task; $status)
	$tasks:=ds:C1482.Task.query("name=:1"; $1)
	$task:=$tasks.first()
	$status:=$task.drop()
	If ($status.success=True:C214) : 
		$0:="Task is removed"
	Else 
		$0:="Task is not removed"
	End if 
	
	
exposed Function update
	C_OBJECT:C1216($0; $1; $task)
	$task:=ds:C1482.Task.get($1.ID)
	$task.startingDate:=Date:C102($1.startingDate)
	$task.endingDate:=Date:C102($1.endingDate)
	$task.name:=$1.name
	$task.save()
	$0:=$task
exposed Function github
	C_TEXT:C284($0)
	ALERT:C41("hello word")
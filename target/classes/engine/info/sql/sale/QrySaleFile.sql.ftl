select * from (
	SELECT 
	 file.id,
	 i.filename as fileName,
	 file.clues_id as cluesId,
	 file.file_id as fileId,
	 file.create_by as createBy,
	 e.name as createByName,
	 file.create_time as createTime
	 from t_sales_file file
	 left join t_file_index i on i.id = file.file_id
	 left join t_employee e on file.create_by=e.id
) a 
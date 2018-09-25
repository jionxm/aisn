select * from (
	select
    f.id,
	i.filename as fileName,
	f.review_id as reviewId,
	f.file_Id as fileId,
	f.create_time as createTime,
	e.name as createByName,
    f.remark
	from t_review_file f
	left join t_file_index i on i.id = f.file_id
	left join t_employee e on e.id = f.create_by
 ) a
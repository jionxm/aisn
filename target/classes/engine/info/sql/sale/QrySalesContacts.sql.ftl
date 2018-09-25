select * from (
 	 select 
 	 c.id as id ,
 	 c.company as company,
 	 c.department as department,
 	 c.position as position,
 	 c.name as name ,
 	 c.tel as tel ,
 	 c.clues_id as cluesId,
 	 e1.name as createByName,
	 c.update_time as updateTime,
	 c.update_by as updateBy,
	 e2.name as updateByName,
	 c.create_time as createTime,
	 c.create_by as createBy
 	  from t_sales_contacts c
 	 left join t_employee e1 on c.create_by=e1.id
	 left join t_employee e2 on c.update_by=e2.id
 ) a 
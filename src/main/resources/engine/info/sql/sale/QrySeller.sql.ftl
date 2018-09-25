select * from (
	SELECT 
	 act.id as id,
	 e1.name as name,
	 act.clues_id as cluesId,
	 sales_update as salesUpdate,
	 sales_update_time as salesUpdateTime,
	 act.create_by as createBy,
	 e.name as createByName,
	 act.create_time as createTime
	 from t_seller_act act
	 left join t_employee e on act.create_by=e.id
	 left join t_sales_clues sale on sale.id=act.clues_id
	 left join t_employee e1 on sale.seller=e1.id
	 where act.type='saler'
) a 
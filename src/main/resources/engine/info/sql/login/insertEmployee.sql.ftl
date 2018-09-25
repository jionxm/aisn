insert into t_employee 
(	name,
	code,
	status,
	type,
	gender,
	mobile,
	email,
	remark,
	create_time,
	update_time,
	create_by,
	update_by,
	org_id) 
values(
	#{data.name},
	#{data.code},
	#{data.status},
	#{data.type},
	#{data.gender},
	#{data.mobile},
	#{data.email},
	#{data.remark},
	now(),
	now(),
	623,
	623,
	329
	) 
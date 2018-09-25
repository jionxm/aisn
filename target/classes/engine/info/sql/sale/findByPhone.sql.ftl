	select t.id as id,
		   t.status as status,
		   t.proname as proName,
		   t.stage as stage,
		   t.init_contacts as initContacts,
		   t.init_contacts_tel as initContactsTel,
		   (select saler.sales_update from t_seller_act saler  where saler.id=max(tp.id) ) as preSalesUpdate
   from t_sales_clues t
   left join t_seller_act tp ON  t.id=tp.clues_id

select * from (
 select 
    o.id as id,
 	o.id as pid,
 	o.name as text
 from t_org o
) a
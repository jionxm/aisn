update t_sales_clues
set status = 'abolish',del_reason=#{data.delReason}
where id=#{data.id} ;
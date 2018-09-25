update t_sales_clues
set status = 'building'
where id=#{primaryFieldValue} ;
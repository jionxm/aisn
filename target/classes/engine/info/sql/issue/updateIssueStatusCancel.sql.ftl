update t_issue set status='cancel' ,update_time=#{data.updateTime} ,update_by=#{data.updateBy} 
where id=#{primaryFieldValue} ;
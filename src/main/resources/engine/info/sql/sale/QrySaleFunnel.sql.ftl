
	select * from (
    	select
    		t.id as id,
    		eo.name as stageName,
    		t.create_time as createTime,
			eo.seq,
			case 
				 when eo.code = 'potentialbusiness' then sum(case when t.stage in ('potentialbusiness','presales','bid','approve','signing','close')  then 1 else 0 end)
				 when eo.code = 'presales' then sum(case when t.stage in ('presales','bid','approve','signing','close')  then 1 else 0 end)
	             when eo.code = 'bid' then sum(case when t.stage in ('bid','approve','signing','close')  then 1 else 0 end)
			     when eo.code = 'approve' then sum(case when t.stage in ('approve','signing','close')  then 1 else 0 end)
			     when eo.code = 'signing' then sum(case when t.stage in ('signing','close')  then 1 else 0 end) 
             	 when eo.code = 'close' then sum(case when t.stage in ('close')  then 1 else 0 end)
			end  as stageSum,
			case when eo.code = 'potentialbusiness' then sum(case when t.stage in ('potentialbusiness')  then 1 else 0 end)
				 when eo.code = 'presales' then sum(case when t.stage in ('presales')  then 1 else 0 end)
	             when eo.code = 'bid' then sum(case when t.stage in ('bid')  then 1 else 0 end)
			     when eo.code = 'approve' then sum(case when t.stage in ('approve')  then 1 else 0 end)
			     when eo.code = 'signing' then sum(case when t.stage in ('signing')  then 1 else 0 end) 
             	 when eo.code = 'close' then sum(case when t.stage in ('close')  then 1 else 0 end)
			end  as stage,
			case when eo.code = 'potentialbusiness' then concat(convert(sum(case when t.stage in ('potentialbusiness')  then 1 else 0 end)/count(t.id)*100,decimal(10,2)),'%')
				 when eo.code = 'presales' then concat(convert(sum(case when t.stage in ('presales')  then 1 else 0 end)/count(t.id)*100,decimal(10,2)),'%')
	             when eo.code = 'bid' then concat(convert(sum(case when t.stage in ('bid')  then 1 else 0 end)/count(t.id)*100,decimal(10,2)),'%')
			     when eo.code = 'approve' then concat(convert(sum(case when t.stage in ('approve')  then 1 else 0 end)/count(t.id)*100,decimal(10,2)),'%')
			     when eo.code = 'signing' then concat(convert(sum(case when t.stage in ('signing')  then 1 else 0 end) /count(t.id)*100,decimal(10,2)),'%')
             	 when eo.code = 'close' then concat(convert(sum(case when t.stage in ('close')  then 1 else 0 end)/count(t.id)*100,decimal(10,2)),'%')
			end  as stageScale,
			case when eo.code = 'potentialbusiness' then sum(case when t.stage in ('potentialbusiness')  then t.budget else 0 end)
				 when eo.code = 'presales' then sum(case when t.stage in ('presales')  then t.budget else 0 end)
	             when eo.code = 'bid' then sum(case when t.stage in ('bid')  then t.budget else 0 end)
			     when eo.code = 'approve' then sum(case when t.stage in ('approve')  then t.budget  else 0 end)
			     when eo.code = 'signing' then sum(case when t.stage in ('signing')  then t.budget else 0 end) 
             	 when eo.code = 'close' then sum(case when t.stage in ('close')  then t.budget  else 0 end)
			end  as expectedIncome,
			case when eo.code = 'potentialbusiness' 
					then concat(
							convert(
								sum(case when 
									t.stage in ('presales','bid','approve','signing','close')  
										then 1 else 0 end)
								/sum(case when 
									t.stage in ('potentialbusiness','presales','bid','approve','signing','close')  
										then 1 else 0 end)
									*100,decimal(10,2)),'%')
				 when eo.code = 'presales' 
				 	then concat(convert(sum(case when t.stage in ('bid','approve','signing','close')  then 1 else 0 end)/sum(case when t.stage in ('presales','bid','approve','signing','close')  then 1 else 0 end)*100,decimal(10,2)),'%')
	             when eo.code = 'bid' 
	             	then concat(convert(sum(case when t.stage in ('approve','signing','close')  then 1 else 0 end)/sum(case when t.stage in ('bid','approve','signing','close')  then 1 else 0 end)*100,decimal(10,2)),'%')
			     when eo.code = 'approve' 
			     	then concat(convert(sum(case when t.stage in ('signing','close')  then 1 else 0 end)/sum(case when t.stage in ('approve','signing','close')  then 1 else 0 end)*100,decimal(10,2)),'%')
			     when eo.code = 'signing' 
			     	then concat(convert(sum(case when t.stage in ('close')  then 1 else 0 end)/sum(case when t.stage in ('signing','close')  then 1 else 0 end)*100,decimal(10,2)),'%')
			end  as conversionRate

    	from
    	(select e.id,e.seq,e.name,e.code from t_dict e
    		 
    		where e.cata_code='t_sales_clues.stage'
    	) eo 
    	left join t_sales_clues t on 1=1
    	where case when  isnull(#{data.createTime}) or #{data.createTime}=''  then 1=1 else t.create_time >=#{data.createTime} end
    	group by eo.id
    	order by eo.seq
    	
	) a

			
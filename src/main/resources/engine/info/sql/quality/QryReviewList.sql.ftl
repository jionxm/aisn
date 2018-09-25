select distinct * from (
       select a.*,d1.name as reviewResultName from (select
			r.id,
			r.proj_id as projId,
			p.name as projectName,
			r.title,
            r.description,
			DATE_FORMAT(r.start_date,'%Y-%m-%d') as startDate,
			r.initiator_id as initiatorId,
			e2.name as initiatorName,
			r.review_type as reviewType,
			d.name as reviewTypeName,
			r.review_result as reviewResult,
			r.workflow_id as workflowId,
            concat_ws('_',w.CATEGORY_ ,w.NAME_) as workflowName,
			r.update_by as updateBy,
			e.name as updateByName,
			r.create_by as createBy,
			e1.name as createByName,
			r.update_time as updateTime,
			r.create_time as createTime,
            f.fileCount
			from  t_review r
			left join t_project p on r.proj_id = p.id
			left join t_employee  e on r.update_by = e.id
			left join t_employee e1 on r.create_by = e1.id
			left join t_employee e2 on r.initiator_id = e2.id
			left join t_dict d on d.`code` = r.review_type
            left join   act_re_procdef w on w.KEY_ = r.workflow_id
            left join (
           SELECT count(review_id) AS fileCount, review_id FROM t_review_file GROUP BY review_id) f
            on f.review_id = r.id
			where d.cata_code = 't_review.review_type'
			) a left join t_dict d1 on d1.`code` =a.reviewResult
			 where case when a.reviewResult is null or a.reviewResult = '' then 1=1 else d1.cata_code = 't_review.review_result' end

) b
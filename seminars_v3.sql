select 
	brn.code,
	sme.id, 
	concat(sme.loreal_former_id, sme.matrix_former_id, sme.kerastase_former_id, sme.redken_former_id) as id_v2, 
	sme.seminar_id,	
	concat(smr.loreal_former_id, smr.matrix_former_id, smr.kerastase_former_id, smr.redken_former_id) as seminar_id_v2,
	smr."name",
	sme.studio_id,
	concat(trc.loreal_former_id, trc.matrix_former_id, trc.kerastase_former_id, trc.redken_former_id) as studio_id_v2,
	trc."name" || ' ' ||  trc.address as studio_name,
	sme.salon_id,
	concat(sln.loreal_former_id, sln.matrix_former_id, sln.kerastase_former_id, sln .redken_former_id) as slon_id_v2,
	sln."name" || ' ' || sln.address as salon_name,
	sme.educator_id,
	concat(usr.loreal_former_id, ';', usr.matrix_former_id, ';', usr.kerastase_former_id, ';' , usr .redken_former_id) as educator_id_v2,
	usr.last_name || ' ' || usr.first_name as trainer,
	sme.started_at, 
	sme.performed_at	
from seminar_events as sme
	left join seminars as smr on sme.seminar_id = smr.id
	left join brands as brn on smr.brand_id = brn.id
	left join training_centers as trc on sme.studio_id = trc.id
	left join salons as sln on  sme.salon_id = sln.id
	left join users as usr on sme.educator_id = usr.id
where brn.code in ('LP', 'MX', 'KR', 'RD')
order by sme.id
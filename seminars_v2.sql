select 
	'MX'as brand, 
	smr.id,
	smr.seminar_type_id,
	smr."name",
	smr.studio_id,
	std."name" || ' ' || std.address as studio_name,
	smr.salon_id,
	sln."name" || ' ' || sln.address as salon_name,
	concat(smr.technolog_id, smr.partimer_id, smr.beauty_consultant_id) as educater_id,
	usr.lname || ' ' || usr.fname as educater_name,
	smr.started_at,
	smr.is_closed
from matrix.public.seminars as smr
	left join matrix.public.seminar_types as smt on smr.seminar_type_id =smt.id
	left join matrix.public.studios as std on smr.studio_id = std.id
	left join matrix.public.salons as sln on smr.salon_id = sln.id
	left join matrix.public.users as usr on smr.technolog_id = usr.id or smr.partimer_id = usr.id


    select 
	'MX'as brand, 
	smr.id,
	smr.seminar_type_id,
	smr."name",
	smr.studio_id,
	std."name" || ' ' || std.address as studio_name,
	smr.salon_id,
	sln."name" || ' ' || sln.address as salon_name,
	concat(smr.technolog_id, smr.partimer_id, smr.beauty_consultant_id) as educater_id,
	usr.lname || ' ' || usr.fname as educater_name,
	smr.started_at,
	smr.is_closed
from matrix.public.seminars as smr
	left join matrix.public.seminar_types as smt on smr.seminar_type_id =smt.id
	left join matrix.public.studios as std on smr.studio_id = std.id
	left join matrix.public.salons as sln on smr.salon_id = sln.id
	left join matrix.public.users as usr on smr.technolog_id = usr.id or smr.partimer_id = usr.id
select m.id,m.title,
    (select group_concat(concat(p.first_name," ",p.last_name)
    separator "," )from performers p 
    where p.id in (select performer_id from movie_performer mp where 
    mp.movie_id=m.id) )
    as performer_names
from movies m;
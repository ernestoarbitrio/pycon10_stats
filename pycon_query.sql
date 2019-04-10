select * from conference_event ce
  JOIN conference_eventbooking cevb on ce.id = cevb.event_id
  JOIN conference_talk ctk on ctk.id = ce.talk_id
where ce.talk_id=1279;



select * from conference_eventbooking where event_id = 2199;


select cf.*, ap.*, ao.* from conference_ticket ct
  join conference_fare cf on cf.id=ct.fare_id
  join assopy_user ap on ap.user_id=ct.user_id
  join assopy_order ao on ao.user_id = ct.user_id
  join assopy_orderitem i on i.order_id = ao.id
where cf.conference = 'pycon9' and cf.id NOT IN (240,241,242,243)
and ao._complete =1;


select * from conference_fare where conference='pycon9';


select o.* from assopy_order o join assopy_orderitem i on i.order_id = o.id  where o.created between '2017-06-01' and '2018-06-01' and o._complete = 1 and i.code like 'T%';


select * from conference_ticket ct
  join conference_fare cf on ct.fare_id=cf.id
  join assopy_orderitem i on i.ticket_id=ct.id
  join assopy_order o on o.id=i.order_id
where cf.conference = 'pycon9' and cf.id and i.code like 'T%' and o._complete=1
UNION
select * from conference_ticket ct
  join conference_fare cf on ct.fare_id=cf.id
  join assopy_orderitem i on i.ticket_id=ct.id
  join assopy_order o on o.id=i.order_id
where cf.conference = 'pycon8' and cf.id and i.code like 'T%' and o._complete=1
UNION
select * from conference_ticket ct
  join conference_fare cf on ct.fare_id=cf.id
  join assopy_orderitem i on i.ticket_id=ct.id
  join assopy_order o on o.id=i.order_id
where cf.conference = 'pycon7' and cf.id and i.code like 'T%' and o._complete=1
UNION
select * from conference_ticket ct
  join conference_fare cf on ct.fare_id=cf.id
  join assopy_orderitem i on i.ticket_id=ct.id
  join assopy_order o on o.id=i.order_id
where cf.conference = 'pycon6' and cf.id and i.code like 'T%' and o._complete=1;
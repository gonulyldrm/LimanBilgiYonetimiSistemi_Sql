create view �r�n�zet
as 
select
	�.�r�nId,
	�.�r�nadi,
	d.depoId,
	d.depoadi,
	i.Id iadeler,
	i.ac�klama,
	s.Id sat�lanlar,
	s.tarih,
	s.total
from �r�nler �
join depolar d on �.�r�nId=d.�r�nId
join iadeler i on �.�r�nId=i.�r�nId 
join sat�lanlar s on �.�r�nId=s.�r�nId
go
select * from �r�n�zet where �r�nId between 60 and 70

create view kargoozet
as
select
	k.kargoId,
	ks.sirketadi,
	k.fiyat,
	k.m��teriId,
	m.m��teriadi,
	m.m��teriadres,
	ka.ad calisanadi,
	ka.email
from kargolar k
join kargosirketler ks on k.kargosirketId = ks.sirketId
join m��teriler m on k.m��teriId=m.m��teriId
join kargoalanlar ka on k.alanki�iId=ka.Id
go
select * from kargoozet
go

create view aracozet
as 
select 
	a.ara�Id,
	a.ara�adi,
	a.benzinkapasitesi,
	d.depoadi,
	so.soforadi,
	se.seferadi,
	se.kalkiszamani,
	se.variszamani
from ara�lar a
join depolar d on a.ara�Id=d.ara�Id
join seferler se on a.seferId=se.seferId
join soforler so on a.soforId=so.soforId 
go
select * from aracozet where ara�Id=2
go

create view ka�akbilgileri
as
select
	kg.Id kacakId,
	kg.ad,
	kg.soyad,
	kg.yas,
	kg.ac�klama,
	g.gemiId,
	g.gemiadi,
	g.kaptanId,
	g.ilId,
	g.il�eId
from ka�akg��menler kg
join gemiler g on kg.Id=g.ka�akId 
go
select * from ka�akbilgileri 
go

create view gemi�zet
as
select
	l.limanId,
	l.limanadi,
	l.gemikapasitesi,
	i.iladi,
	g.gemiadi,
	g.kaptanId,
	g.benzinkapasitesi,
	g.ekmotorsay�s�
from gemiler g
join limanlar l on g.limanId=l.limanId
join iller i on l.limanId=i.limanId
go
select * from gemi�zet













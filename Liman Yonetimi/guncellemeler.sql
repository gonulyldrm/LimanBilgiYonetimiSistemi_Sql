Create Proc tedarik�igunc
	@tedarik�iId int,
	@tedarik�iadi varchar(200),
	@il varchar (50),
	@il�e varchar(50)
as
begin 
	update tedarik�iler
	set tedarik�iadi=@tedarik�iadi,
	il=@il,
	il�e=@il�e
where tedarik�iId=@tedarik�iId
end
go
Create Proc limang�nc
	@limanId int,
	@limanadi varchar(200),
	@gemikapasitesi int,
	@tedarik�iId int,
	@y�neticiId int
as
begin 
	update limanlar
	set limanadi=@limanadi,
	gemikapasitesi=@gemikapasitesi,
	tedarik�iId=@tedarik�iId,
	y�neticiId=@y�neticiId
where limanId=@limanId
end
go
Create Proc y�neticigunc
	@Id int,
	@ad varchar(50),
	@soyad varchar(50),
	@yas int,
	@email varchar(100)
as
begin 
	update y�neticiler
	set ad=@ad,
	soyad=@soyad,
	yas=@yas,
	email=@email
where Id=@Id
end
go
Create Proc kaptangunc
	@kaptanId int,
	@kaptanadi varchar(50),
	@kaptansoyadi varchar(60)
as
begin 
	update kaptanlar
	set kaptanadi=@kaptanadi,
	kaptansoyadi=@kaptansoyadi
where kaptanId=@kaptanId
end
go
Create Proc ilgunc
	@ilId int,
	@iladi varchar(30),
	@ilkodu int,
	@limanId int
as
begin 
	update iller
	set iladi=@iladi,
	ilkodu=@ilkodu,
	limanId=@limanId
where ilId=@ilId
end
go
Create Proc il�egunc
	@il�eId int,
	@il�eadi varchar(30),
	@il�ekodu int,
	@ilId int
as
begin 
	update il�eler
	set il�eadi=@il�eadi,
	il�ekodu=@il�ekodu,
	ilId=@ilId
where il�eId=@il�eId
end
go
Create Proc katagorigunc
	@katagoriId int,
	@katagoriadi varchar(70)
as
begin 
	update katagoriler
	set  katagoriadi=@katagoriadi
where katagoriId=@katagoriId
end
go
Create Proc �r�ngunc
	@�r�nId int,
	@�r�nadi varchar(60),
	@�r�nmiktari int,
	@�r�nfiyati money,
	@katagoriId int
as
begin 
	update �r�nler
	set �r�nadi=@�r�nadi,
	�r�nmiktari=@�r�nmiktari,
	�r�nfiyati=@�r�nfiyati,
	katagoriId=@katagoriId
where �r�nId=@�r�nId
end
go
Create Proc soforgunc
	@soforId int,
	@soforadi varchar(60)
as
begin 
	update soforler
	set soforadi=@soforadi
where soforId=@soforId
end
go
Create Proc sefergunc
	@seferId int,
	@seferadi varchar(50),
	@kalkiszamani datetime,
	@variszamani datetime
as
begin 
	update seferler
	set seferadi=@seferadi,
	kalkiszamani=@kalkiszamani,
	variszamani=@variszamani
where seferId=@seferId
end
go
 
Create Proc aracgunc
	@ara�Id int,
	@ara�adi varchar(80),
	@limanId int,
	@benzinkapasitesi int,
	@soforId int,
	@seferId int
as
begin 
	update ara�lar
	set  ara�adi=@ara�adi,
	limanId=@limanId,
	benzinkapasitesi=@benzinkapasitesi,
	soforId=@soforId,
	seferId=@seferId
where ara�Id=@ara�Id
end
go
Create Proc depogun
	@depoId int,
	@depoadi varchar(60),
	@�r�nId int,
	@ara�Id int
as
begin 
	update depolar
	set depoadi=@depoadi,
	�r�nId=@�r�nId,
	ara�Id=@ara�Id
where ara�Id=@ara�Id
end
go
Create Proc m��terig�n
	@m��teriId int,
	@m��teriadi varchar(50),
	@m��terisoyadi varchar(60),
	@m��teritelno varchar(20),
	@m��teritcno varchar(11),
	@m��teriadres varchar(300),
	@m��terieposta varchar (100),
	@ilId int
as
begin 
	update m��teriler
	set m��teriadi=@m��teriadi,
	m��terisoyadi=@m��terisoyadi,
	m��teritelno=@m��teritelno,
	m��teritcno=@m��teritcno,
	m��teriadres=@m��teriadres,
	m��terieposta=@m��terieposta,
	ilId=@ilId
where m��teriId=@m��teriId
end
go
Create Proc kargosirketgun
	@sirketId int,
	@sirketadi varchar(110),
	@ilId int,
	@il�eId int
as
begin 
	update kargosirketler
	set sirketadi=@sirketadi,
	ilId=@ilId,
	il�eId=@il�eId
where sirketId=@sirketId
end
go
Create Proc kargoalangun
	@Id int,
	@ad varchar(45),
	@soyad varchar(50),
	@yas int,
	@sipari�say�s� int,
	@email varchar(100)
as
begin 
	update kargoalanlar
	set ad=@ad,
	soyad=@soyad,
	yas=@yas,
	sipari�say�s�=@sipari�say�s�,
	email=@email
where Id=@Id
end
go
Create Proc kargogun
	@kargoId int,
	@m��teriId int,
	@�r�nId int,
	@depoId int,
	@kargosirketId int,
	@fiyat money,
	@miktar int,
	@ilId int,
	@alanki�iId int,
	@il�eId int
as
begin 
	update kargolar
	set m��teriId=@m��teriId,
	�r�nId=@�r�nId,
	depoId=@depoId,
	kargosirketId=@kargosirketId,
	fiyat=@fiyat,
	miktar=@miktar,
	ilId=@ilId,
	alanki�iId=@alanki�iId,
	il�eId=@il�eId
where kargoId=@kargoId
end
go
Create Proc ka�akg��mengun
	@Id int,
	@ad varchar(45),
	@soyad varchar(50),
	@yas int,
	@ac�klama varchar(100)
as
begin 
	update ka�akg��menler
	set ad=@ad,
	soyad=@soyad,
	yas=@yas,
	ac�klama=@ac�klama
where Id=@Id
end
go
Create Proc iscigun
	@Id int,
	@ad varchar(45),
	@soyad varchar(50),
	@yas int,
	@ac�klama varchar(100)
as
begin 
	update isciler
	set ad=@ad,
	soyad=@soyad,
	yas=@yas,
	ac�klama=@ac�klama
where Id=@Id
end
go
Create Proc gemigunc
	@gemiId int,
	@gemiadi varchar(100),
	@limanId int,
	@kaptanId int,
	@ilId int,
	@il�eId int,
	@benzinkapasitesi int,
	@ekmotorsay�s� int,
	@ka�akId int,
	@�r�nId int
as
begin 
	update gemiler
	set gemiadi=@gemiadi,
	limanId=@limanId,
	kaptanId=@kaptanId,
	ilId=@ilId,
	il�eId=@il�eId,
	benzinkapasitesi=@benzinkapasitesi,
	ekmotorsay�s�=@ekmotorsay�s�,
	ka�akId=@ka�akId,
	�r�nId=@�r�nId
where gemiId=@gemiId
end
go
Create Proc iadegunc
	@Id int,
	@ac�klama varchar(30),
	@�r�nId int
as
begin 
	update iadeler
	set  ac�klama=@ac�klama,
	�r�nId=@�r�nId
where Id=@Id
end
go
Create Proc sat�langunc 
	@Id int,
	@ad� varchar(30),
	@�r�nId int,
 	@total int,
	@tarih datetime
as
begin 
	update sat�lanlar
	set ad�=@ad�,
	�r�nId=@�r�nId,
	total=@total,
	tarih=@tarih
where Id=@Id
end
go
Create Proc odemeplantgunc
	@Id int,
	@plankod int,
	@durum varchar(100),
	@ac�klama varchar(100)
as
begin 
	update odemeplanlari
	set plankod=@plankod,
	durum=@durum,
	ac�klama=@ac�klama
where Id=@Id
end
go
Create Proc sevkiyatfi�gun
	@Id int,
	@tip varchar(30),
	@fisno int,
	@kargosirketId int,
	@odemeplanId  int,
	@al�c� varchar(55),
	@sat�c� varchar(55),
	@durum varchar(50),
	@kargofi�no int,
	@total varchar(80)
as
begin 
	update sevkiyatfi�leri
	set tip=@tip,
	fisno=@fisno,
	kargosirketId=@kargosirketId,
	odemeplanId=odemeplanId,
	al�c�=@al�c�,
	sat�c�=@sat�c�,
	durum=@durum,
	kargofi�no=@kargofi�no,
	total=@total
where Id=@Id
end
go



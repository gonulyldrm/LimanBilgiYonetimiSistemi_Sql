Create Proc tedarik�iekle
	@tedarik�iId int,
	@tedarik�iadi varchar(200),
	@il varchar (50),
	@il�e varchar(50)
as
begin 
	insert into tedarik�iler(tedarik�iId,tedarik�iadi,il,il�e) values(@tedarik�iId,@tedarik�iadi,@il,@il�e)
end
go
Create Proc limanekle
	@limanId int,
	@limanadi varchar(200),
	@gemikapasitesi int,
	@tedarik�iId int,
	@y�neticiId int
as
begin 
	insert into limanlar(limanId,limanadi,gemikapasitesi,tedarik�iId,y�neticiId) values(@limanId,@limanadi,@gemikapasitesi,@tedarik�iId,@y�neticiId)
end
go
Create Proc y�neticiekle
	@Id int,
	@ad varchar(50),
	@soyad varchar(50),
	@yas int,
	@email varchar(100)
as
begin 
	insert into y�neticiler(Id,ad,soyad,yas,email)values(@Id,@ad,@soyad,@yas,@email)
end
go
Create Proc kaptanekle
	@kaptanId int,
	@kaptanadi varchar(50),
	@kaptansoyadi varchar(60)
as
begin 
	insert into kaptanlar(kaptanId,kaptanadi,kaptansoyadi)values(@kaptanId,@kaptanadi,@kaptansoyadi)
end
go
Create Proc ilekle
	@ilId int,
	@iladi varchar(30),
	@ilkodu int,
	@limanId int
as
begin 
	insert into iller(ilId,iladi,ilkodu,limanId)values(@ilId,@iladi,@ilkodu,@limanId)
end
go
Create Proc il�eekle
	@il�eId int,
	@il�eadi varchar(30),
	@il�ekodu int,
	@ilId int
as
begin 
	insert into il�eler(il�eId,il�eadi,il�ekodu,ilId)values(@il�eId,@il�eadi,@il�ekodu,@ilId)
end
go
Create Proc katagoriekle
	@katagoriId int,
	@katagoriadi varchar(70)
as
begin 
	insert into katagoriler(katagoriId,katagoriadi) values (@katagoriId,@katagoriadi)
end
go

Create Proc �r�nekle
	@�r�nId int,
	@�r�nadi varchar(60),
	@�r�nmiktari int,
	@�r�nfiyati money,
	@katagoriId int
as
begin 
	insert into �r�nler(�r�nId,�r�nadi,�r�nmiktari,�r�nfiyati,katagoriId)values(@�r�nId,@�r�nadi,@�r�nmiktari,@�r�nfiyati,@katagoriId)
end
go
Create Proc soforekle
	@soforId int,
	@soforadi varchar(60)
as
begin 
	insert into soforler(soforId,soforadi)values(@soforId,@soforadi)
end
go
Create Proc seferekle
	@seferId int,
	@seferadi varchar(50),
	@kalkiszamani datetime,
	@variszamani datetime
as
begin 
	insert into seferler(seferId,seferadi,kalkiszamani,variszamani)values(@seferId,@seferadi,@kalkiszamani,@variszamani)
end
go
Create Proc aracekle
	@ara�Id int,
	@ara�adi varchar(80),
	@limanId int,
	@benzinkapasitesi int,
	@soforId int,
	@seferId int
as
begin 
	insert into ara�lar(ara�Id,ara�adi,limanId,benzinkapasitesi,soforId,seferId)values(@ara�Id,@ara�adi,@limanId,@benzinkapasitesi,@soforId,@seferId)
end
go
Create Proc depoekle
	@depoId int,
	@depoadi varchar(60),
	@�r�nId int,
	@ara�Id int
as
begin 
	insert into depolar(depoId,depoadi,�r�nId,ara�Id)values(@depoId,@depoadi,@�r�nId,@ara�Id)
end
go
Create Proc m��teriekle
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
	insert into m��teriler(m��teriId,m��teriadi,m��terisoyadi,m��teritelno,m��teritcno,m��teriadres,m��terieposta,ilId)
	values(@m��teriId,@m��teriadi,@m��terisoyadi,@m��teritelno,@m��teritcno,@m��teriadres,@m��terieposta,@ilId)
end
go
Create Proc kargosirketekle
	@sirketId int,
	@sirketadi varchar(110),
	@ilId int,
	@il�eId int
as
begin 
	insert into kargosirketler(sirketId,sirketadi,ilId,il�eId) values(@sirketId,@sirketadi,@ilId,@il�eId)
end
go
Create Proc kargoalanekle
	@Id int,
	@ad varchar(45),
	@soyad varchar(50),
	@yas int,
	@sipari�say�s� int,
	@email varchar(100)
as
begin 
	insert into kargoalanlar(Id,ad,soyad,yas,sipari�say�s�,email) values(@Id,@ad,@soyad,@yas,@sipari�say�s�,@email)
end
go
Create Proc kargoekle
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
	insert into kargolar(kargoId,m��teriId,�r�nId,depoId,kargosirketId,fiyat,miktar,ilId,alanki�iId,il�eId)
		values(@kargoId,@m��teriId,@�r�nId,@depoId,@kargosirketId,@fiyat,@miktar,@ilId,@alanki�iId,@il�eId)
end
go
Create Proc ka�akg��menekle
	@Id int,
	@ad varchar(45),
	@soyad varchar(50),
	@yas int,
	@ac�klama varchar(100)
as
begin 
	insert into ka�akg��menler(Id,ad,soyad,yas,ac�klama) values(@Id,@ad,@soyad,@yas,@ac�klama)
end
go
Create Proc isciekle
	@Id int,
	@ad varchar(45),
	@soyad varchar(50),
	@yas int,
	@ac�klama varchar(100)
as
begin 
	insert into isciler(Id,ad,soyad,yas,ac�klama) values(@Id,@ad,@soyad,@yas,@ac�klama)
end
go
Create Proc gemiekle
	@gemiId int,
	@gemiadi varchar(100),
	@limanId int,
	@kaptanId int,
	@ilId int,
	@il�eId int,
	@benzinkapasitesi int,
	@ekmotorsay�s� int,
	@ka�akId int,
	@�r�nId int,
	@isciId int
as
begin 
	insert into gemiler(gemiId,gemiadi,limanId,kaptanId,ilId,il�eId,benzinkapasitesi,ekmotorsay�s�,ka�akId,�r�nId,isciId) 
	values(@gemiId,@gemiadi,@limanId,@kaptanId,@ilId,@il�eId,@benzinkapasitesi,@ekmotorsay�s�,@ka�akId,@�r�nId,@isciId)
end
go
Create Proc iadeekle
	@Id int,
	@ac�klama varchar(30),
	@�r�nId int
as
begin 
	insert into iadeler(Id,ac�klama,�r�nId)values(@Id,@ac�klama,@�r�nId)
end
go
Create Proc sat�lanekle 
	@Id int,
	@ad� varchar(30),
	@�r�nId int,
 	@total int,
	@tarih datetime
as
begin 
	insert into sat�lanlar(Id,ad�,�r�nId,tarih,total)values(@Id,@ad�,@�r�nId,@tarih,@total)
end
go
Create Proc odemeplantekle
	@Id int,
	@plankod int,
	@durum varchar(100),
	@ac�klama varchar(100)
as
begin 
	insert into odemeplanlari(Id,plankod,durum,ac�klama) values(@Id,@plankod,@durum,@ac�klama)
end
go
Create Proc sevkiyatfi�ekle
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
	insert into sevkiyatfi�leri(Id,tip,fisno,kargosirketId,odemeplanId,al�c�,sat�c�,durum,kargofi�no,total)
	values(@Id,@tip,@fisno,@kargosirketId,@odemeplanId,@al�c�,@sat�c�,@durum,@kargofi�no,@total)
end








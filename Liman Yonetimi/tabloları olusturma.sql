create database limany�netimi
go
use limany�netimi
go
create table tedarik�iler
(
	tedarik�iId int,
	tedarik�iadi varchar(200),
	il varchar (50),
	il�e varchar(50),
	constraint pk_tedarik�iler_tedarik�iId primary key(tedarik�iId)
)
 go
 create table y�neticiler
 (
	Id int,
	ad varchar(50),
	soyad varchar(50),
	yas int,
	email varchar(100),
	constraint pk_y�neticiler_Id primary key(Id)
)
create table limanlar
(
	limanId int,
	limanadi varchar(200),
	gemikapasitesi int,
	tedarik�iId int,
	y�neticiId int,
	Constraint PK_limanlar_limanId Primary Key(limanId),
	constraint fk_limanlar_tedarik�iId foreign key(tedarik�iId) references tedarik�iler(tedarik�iId),
	constraint fk_limanlar_y�neticiId foreign key(y�neticiId) references y�neticiler(Id)
)
go
create table kaptanlar
(
	kaptanId int,
	kaptanadi varchar(50),
	kaptansoyadi varchar(60),
	constraint pk_kaptanlar_kaptanId primary key(kaptanId)
)
go
create table iller 
(
	ilId int,
	iladi varchar(30),
	ilkodu int,
	limanId int,
	constraint pk_iller_ilId primary key(ilId),
	constraint fk_iller_limanId foreign key(limanId) references limanlar (limanId)
)
go
create table il�eler
(
	il�eId int,
	il�eadi varchar(30),
	il�ekodu int,
	ilId int,
	constraint pk_il�eler_il�eId primary key(il�eId),
	constraint fk_il�eler_ilId foreign key(ilId) references iller (ilId)
)
go
create table katagoriler
(
	katagoriId int,
	katagoriadi varchar(70),
	constraint pk_katagoriler_katagoriId primary key(katagoriId)

)
go
create table �r�nler
(
	�r�nId int,
	�r�nadi varchar(60),
	�r�nmiktari int,
	�r�nfiyati money,
	katagoriId int,
	constraint pk_�r�nler_�r�nId primary key(�r�nId),
	constraint fk_�r�nler_katagoriId foreign key(katagoriId) references katagoriler(katagoriId)
)
go
create table soforler
(
	soforId int,
	soforadi varchar(60),
	constraint pk_soforler_soforId primary key(soforId)
)
go
create table seferler
(
	seferId int,
	seferadi varchar(50),
	kalkiszamani datetime,
	variszamani datetime,
	constraint pk_seferler_seferId primary key(seferId)
)
go
create table ara�lar
(
	ara�Id int,
	ara�adi varchar(80),
	limanId int,
	benzinkapasitesi int,
	soforId int,
	seferId int,
	constraint pk_ara�lar_ara�Id primary key(ara�Id),
	constraint fk_ara�lar_limanId foreign key(limanId) references limanlar(limanId),
	constraint fk_ara�lar_soforId foreign key(soforId) references soforler(soforId),
	constraint fk_ara�lar_seferId foreign key(seferId) references seferler(seferId) 

)
go
create table depolar
(
	depoId int,
	depoadi varchar(60),
	�r�nId int,
	ara�Id int,
	constraint pk_depolar_depoId primary key(depoId),
	constraint fk_depolar_�r�nId foreign key(�r�nId) references �r�nler(�r�nId),
	constraint fk_depolar_ara�Id foreign key(ara�Id) references ara�lar(ara�Id)
)
go
create table m��teriler
(
	m��teriId int,
	m��teriadi varchar(50),
	m��terisoyadi varchar(60),
	m��teritelno varchar(20),
	m��teritcno varchar(11),
	m��teriadres varchar(300),
	m��terieposta varchar (100),
	ilId int,
	constraint pk_m��teriler_m��teriId primary key(m��teriId),
	constraint fk_m��teriler_ilId foreign key(ilId) references iller(ilId)
)
go
create table kargosirketler
(
	sirketId int,
	sirketadi varchar(110),
	ilId int,
	il�eId int,
	constraint pk_kargosirketler_sirketId primary key(sirketId),
	constraint fk_kargosirketler_ilId foreign key(ilId) references iller(ilId),
	constraint fk_kargosirketler_il�eId foreign key(il�eId) references il�eler(il�eId),
)
go
create table kargoalanlar
(
	Id int,
	ad varchar(45),
	soyad varchar(50),
	yas int,
	sipari�say�s� int,
	email varchar(100),
	constraint pk_kargoalanlar_Id primary key(Id)
)
go
create table kargolar
(
	kargoId int,
	m��teriId int,
	�r�nId int,
	depoId int,
	kargosirketId int,
	fiyat money,
	miktar int,
	ilId int,
	alanki�iId int,
	il�eId int,
	constraint pk_kargolar_kargoId primary key(kargoId),
	constraint fk_kargolar_ilId foreign key(ilId) references iller(ilId),
	constraint fk_kargolar_il�eId foreign key(il�eId) references il�eler(il�eId),
	constraint fk_kargolar_depoId foreign key(depoId) references depolar(depoId),
	constraint fk_kargolar_kargosirketId foreign key(kargosirketId) references kargosirketler(sirketId),
	constraint fk_kargolar_m��teriId foreign key(m��teriId) references m��teriler(m��teriId),
	constraint fk_kargolar_alanki�iId foreign key(alanki�iId) references kargoalanlar(Id)

)
go
create table ka�akg��menler
(
	Id int,
	ad varchar(45),
	soyad varchar(50),
	yas int,
	ac�klama varchar(100),
	constraint pk_ka�akg��menler_Id primary key(Id)
)
go
create table isciler
(
	Id int,
	ad varchar(45),
	soyad varchar(50),
	yas int,
	ac�klama varchar(100),
	constraint pk_isciler_Id primary key(Id)

)
go
create table gemiler
(
	gemiId int,
	gemiadi varchar(100),
	limanId int,
	kaptanId int,
	ilId int,
	il�eId int,
	benzinkapasitesi int,
	ekmotorsay�s� int,
	ka�akId int,
	�r�nId int,
	isciId int,
	Constraint PK_gemiler_gemiId Primary Key(gemiId),
	constraint fk_gemiler_limanId foreign key(limanId) references limanlar(limanId),
	constraint fk_gemiler_kaptanId foreign key(kaptanId) references kaptanlar(kaptanId),
	constraint fk_gemiler_ilId foreign key(ilId) references iller(ilId),
	constraint fk_gemiler_il�eId foreign key(il�eId) references il�eler(il�eId),
	constraint fk_gemiler_�r�nId foreign key(�r�nId) references �r�nler(�r�nId),
	constraint fk_gemiler_ka�akId foreign key(ka�akId) references ka�akg��menler(Id),
	constraint fk_gemiler_isciId foreign key(isciId) references isciler(Id)


)
go
create table iadeler
(
	Id int,
	ac�klama varchar(30),
	�r�nId int,
	constraint pk_iadeler_Id primary key(Id),
	constraint fk_iadeler_�r�nId foreign key(�r�nId) references �r�nler(�r�nId) 

)
go
create table sat�lanlar
(
	Id int,
	ad� varchar(30),
	�r�nId int,
 	total int,
	tarih datetime,
	constraint pk_sat�lanlar_Id primary key(Id),
	constraint fk_sat�lanlar_�r�nId foreign key(�r�nId) references �r�nler(�r�nId)  
)
go
create table odemeplanlari
(
	Id int,
	plankod int,
	durum varchar(100),
	ac�klama varchar(100),
 	constraint pk_odemeplanlari_Id primary key(Id),
)
go
create table sevkiyatfi�leri
(
	Id int,
	tip varchar(30),
	fisno int,
	kargosirketId int,
	odemeplanId  int,
	al�c� varchar(55),
	sat�c� varchar(55),
	durum varchar(50),
	kargofi�no int,
	total varchar(80),
	constraint pk_sevkiyatfi�leri_Id primary key(Id),
	constraint fk_sevkiyatfi�leri_kargosirketId foreign key(kargosirketId) references kargosirketler(sirketId),
	constraint fk_sevkiyatfi�leri_odemeplanId foreign key(odemeplanId) references odemeplanlari(Id)
)
go














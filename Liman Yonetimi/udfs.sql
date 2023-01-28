create function fn_kdv
(
	@urunad� varchar(60),
	@fiyat money
)
returns money 
as
begin
	declare @kdv money = 0
	if @urunad�='alabal�k'
		select @kdv=@fiyat*0.16
	else
		select @kdv=@fiyat*0.36
	return @kdv
end 
go
select
	�.�r�nadi ad�,
	�r�nfiyati fiyat�,
	dbo.fn_kdv('alabal�k',�r�nfiyati) kdv,
	(�.�r�nfiyati+dbo.fn_kdv('alabal�k',�r�nfiyati)) kdvl�_toplam
from �r�nler �
go


create function ekmotorsay�s�
(
	@sayi int
)
returns bit
as
begin
	declare @yeterlilik bit
	declare @kapasite int = @sayi
	if @kapasite>3
		set @yeterlilik=0
	else
		set @yeterlilik=1
	return @yeterlilik
end
go
select
	g.gemiId,
	g.gemiadi,
	g.kaptanId,
	g.ekmotorsay�s�,
	dbo.ekmotorsay�s�(g.ekmotorsay�s�) yeterlilik
from gemiler g
go



 Create Function fn_tarihlersat�lanlist
 (
	@Date1 Datetime,
	@Date2 Datetime
 )
 Returns Table
 As
 Return Select 
			s.Id,
			s.ad�,
			s.total,
			s.�r�nId,
			s.tarih
		From sat�lanlar s Where s.tarih Between @Date1 And @Date2 
Go


Create Function FN_ara�list(@aId int)
Returns Table
As
Return Select 
			a.ara�adi,
			a.benzinkapasitesi,
			so.soforadi,
			se.seferadi,
			se.kalkiszamani,
			se.variszamani
		From ara�lar a
		Join soforler so On so.soforId=a.soforId
		Join seferler se On se.seferId = a.seferId
		Where a.ara�Id = @aId
Go
Create Function fn_soforlist
 (
	@Id int
 )
 Returns Table
 As
 Return Select 
			so.soforId,
			so.soforadi
		From soforler so Where so.soforId=@Id

Go


Create Function fn_y�neticilist
 (
	@Id int,
	@Id2 int
 )
 Returns Table
 As
 Return Select 
		y.ad,
		y.soyad,
		y.email,
		y.yas
From y�neticiler y where Id=@Id and Id=@Id2
Go


Create Function fn_�r�nlist
 (
	@Id int
 )
 Returns Table
 As
return Select 
		sum(�.�r�nmiktari) miktar,
		sum(�.�r�nfiyati) fiyat
From �r�nler �
Where �.�r�nId = @Id
Go 


Create Function fn_gemilist
 (
	@Id int
 )
 Returns Table
 As
return Select 
		COUNT(g.gemiadi) as gemisay�s�
From gemiler g
Where g.gemiId = @Id
Go


create function Fn_yas
(
	@sayi int
)
returns bit
as
begin
	declare @s bit
	declare @a int = @sayi
	if @a<18
		set @s=0
	if @a > 18
		set @s=1
	return @s
end
go
select
		K.ad,
		K.soyad,
		k.yas,
		k.ac�klama,
		dbo.Fn_yas(k.yas)as izindurumu
from ka�akg��menler k
go

 





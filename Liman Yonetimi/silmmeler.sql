create proc tedarik�isil
	@Id int
as
begin
	delete from tedarik�iler where tedarik�iId=@Id
end 
go
create proc y�neticisil
	@Id int
as
begin
	delete from y�neticiler where Id=@Id
end 
go
create proc limansil
	@Id int
as
begin
	delete from limanlar where limanId=@Id
end 
go
create proc kaptansil
	@Id int
as
begin
	delete from kaptanlar where kaptanId=@Id
end 
go
create proc ilsil
	@Id int
as
begin
	delete from iller where ilId=@Id
end 
go
create proc il�esil
	@Id int
as
begin
	delete from il�eler where il�eId=@Id
end 
go
create proc katagorisil
	@Id int
as
begin
	delete from katagoriler where katagoriId=@Id
end 
go
create proc �r�nsil
	@Id int
as
begin
	delete from �r�nler where �r�nId=@Id
end 
go
create proc soforsil
	@Id int
as
begin
	delete from soforler where soforId=@Id
end 
go
create proc sefersil
	@Id int
as
begin
	delete from seferler where seferId=@Id
end 
go
create proc aracsil
	@Id int
as
begin
	delete from ara�lar where ara�Id=@Id
end 
go
create proc deposil
	@Id int
as
begin
	delete from depolar where depoId=@Id
end 
go
create proc m��terisil
	@Id int
as
begin
	delete from m��teriler where m��teriId=@Id
end 
go
create proc kargo�irketsil
	@Id int
as
begin
	delete from kargosirketler where sirketId=@Id
end 
go
create proc kargoalansil
	@Id int
as
begin
	delete from kargoalanlar where Id=@Id
end 
go
create proc kargosil
	@Id int
as
begin
	delete from kargolar where kargoId=@Id
end 
go
create proc ka�aksil
	@Id int
as
begin
	delete from ka�akg��menler where Id=@Id
end 
go
create proc iscisil
	@Id int
as
begin
	delete from isciler where Id=@Id
end 
go
create proc gemisil
	@Id int
as
begin
	delete from gemiler where gemiId=@Id
end 
go
create proc iadesil
	@Id int
as
begin
	delete from iadeler where Id=@Id
end 
go
create proc sat�lansil
	@Id int
as
begin
	delete from sat�lanlar where Id=@Id
end 
go
create proc sevkiyatfi�isil
	@Id int
as
begin
	delete from sevkiyatfi�leri where Id=@Id
end 
go
create proc odemeplansil
	@Id int
as
begin
	delete from odemeplanlari where Id=@Id
end 
go








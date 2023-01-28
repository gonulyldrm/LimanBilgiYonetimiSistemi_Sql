Create Trigger TRürünekle
On ürünler
After Insert
As
	Declare @Id INT, @Ad VARCHAR(60), @fiyat MONEY, @miktar INT,@katagoriId int
	Select 
		@Id= ürünId,
		@Ad=ürünadi,
		@miktar =  ürünmiktari,
		@fiyat = ürünfiyati,
		@katagoriId=@katagoriId
	From inserted
	Insert Into ürünler Values(@Id, @Ad , @fiyat, @miktar,@katagoriId)
Go

Create Trigger TRkargoalansil
On kargoalanlar
Instead Of Delete
As
	Declare @Id INT
	Select @Id = Id From deleted
	Update kargoalanlar Set yas = 20 Where Id = @Id
go

Create Trigger TRsatýlangunc
On satýlanlar
For Update
As
	Declare @Id int,@adý varchar(30),@ürünId int,@tarih datetime,@total int
	Select 
		@Id = Id
	From deleted
	Select 
		@adý=adý,
		@ürünId =ürünId,
 		@total=total,
		@tarih =tarih 
	From inserted
	update satýlanlar
	set adý=@adý,
		ürünId=@ürünId,
		total=@total,
		tarih=@tarih
	where Id=@Id
Go

Create Trigger TRaraçsil
On araçlar
Instead Of Delete
As
	Declare @Id INT
	Select @Id = araçId From deleted
	Update araçlar Set benzinkapasitesi=0 Where araçId = @Id
go













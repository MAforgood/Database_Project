/*
CREATE TABLE Person (
    Username varchar(250), 
	FirstName varchar(Max),
	LastName varchar(Max),
	Gender varchar(Max),
    Birthday varchar(Max),
	CONSTRAINT pk1 PRIMARY KEY (Username),
);
CREATE TABLE Employee (
    EUsername varchar(250), 
	Salary decimal(19,2),
	CONSTRAINT pk2 PRIMARY KEY (EUsername),
	CONSTRAINT fk_EUsername
    FOREIGN KEY (EUsername)
    REFERENCES Person(Username) On Update Cascade On Delete Cascade
);
CREATE TABLE [User] (
    UUsername varchar(250), 
	[Type] varchar(Max), 
	CONSTRAINT pk3 PRIMARY KEY (UUsername),
	CONSTRAINT fk_UUsername
    FOREIGN KEY (UUsername)
    REFERENCES Person(Username) On Update Cascade On Delete Cascade
);
CREATE TABLE Cashier (
    CUsername varchar(250), 
	CONSTRAINT pk4 PRIMARY KEY (CUsername),
	CONSTRAINT fk_CUsername
    FOREIGN KEY (CUsername)
    REFERENCES Employee(EUsername) On Update Cascade On Delete Cascade
);
CREATE TABLE Cleaner (
    CLUsername varchar(250), 
	CONSTRAINT pk5 PRIMARY KEY (CLUsername),
	CONSTRAINT fk_CLUsername
    FOREIGN KEY (CLUsername)
    REFERENCES Employee(EUsername) On Update Cascade On Delete Cascade
);
CREATE TABLE Mechanic (
    MUsername varchar(250), 
	CONSTRAINT pk6 PRIMARY KEY (MUsername),
	CONSTRAINT fk_MUsername
    FOREIGN KEY (MUsername)
    REFERENCES Employee(EUsername) On Update Cascade On Delete Cascade
);
CREATE TABLE Lifegaurd (
    LUsername varchar(250), 
	CONSTRAINT pk7 PRIMARY KEY (LUsername),
	CONSTRAINT fk_LUsername
    FOREIGN KEY (LUsername)
    REFERENCES Employee(EUsername) On Update Cascade On Delete Cascade
);
CREATE TABLE Masseur (
    MAUsername varchar(250), 
	CONSTRAINT pk8 PRIMARY KEY (MAUsername),
	CONSTRAINT fk_MAUsername
    FOREIGN KEY (MAUsername)
    REFERENCES Employee(EUsername) On Update Cascade On Delete Cascade
);
CREATE TABLE Account (
    UUsername varchar(250),
	Username varchar(250),
	[Value] decimal(19,2),
	[Password] varchar(Max),
	RgDate varchar(Max),
	CONSTRAINT pk9 PRIMARY KEY (UUsername, Username),
	CONSTRAINT fk_UUsername2
    FOREIGN KEY (UUsername)
    REFERENCES [User](UUsername) On Update Cascade On Delete Cascade
);
CREATE TABLE Closet (
    [Key] int,
	Fullness bit,
	CONSTRAINT pk10 PRIMARY KEY ([Key])
);
CREATE TABLE MassageRoom (
    RoomNo int,
	during varchar(Max),
	Fullness bit,
	HPrice decimal(10,2),
	Masseur varchar(250),
	CONSTRAINT pk11 PRIMARY KEY ([RoomNo]),
	CONSTRAINT fk_Masseur
    FOREIGN KEY (Masseur)
    REFERENCES [Masseur](MAUsername) On Update Cascade On Delete Cascade
);
CREATE TABLE Buffet (
	Code int,
	TSale decimal(19,2),
	CONSTRAINT pk12 PRIMARY KEY (Code),
);
CREATE TABLE Product (
    PKey int,
	Code int,
	Price decimal(10,2),
	ExDate varchar(Max),
	Number int,
	CONSTRAINT pk13 PRIMARY KEY (PKey),
	CONSTRAINT fk_Code
    FOREIGN KEY (Code)
    REFERENCES [Buffet](Code) On Update Cascade On Delete Cascade
);

CREATE TABLE Buffet_Products (
    BCode int,
	PKey int,
	CONSTRAINT pk14 PRIMARY KEY (BCode,PKey),
	CONSTRAINT fk_BCode
    FOREIGN KEY (BCode)
    REFERENCES [Buffet](Code) On Update No action On Delete No action,
	CONSTRAINT fk_PKey
    FOREIGN KEY (PKey)
    REFERENCES Product(PKey) On Update No action On Delete No action
);
CREATE TABLE Showing (
    Id int,
	number int,
	Gender varchar(Max),
	[Begin] varchar(Max),
	[End] varchar(Max),
	Capacity int,
	CONSTRAINT pk15 PRIMARY KEY (Id)
);
CREATE TABLE Showing_Lifegaurd (
    Id int,
	LUsername varchar(250),
	CONSTRAINT pk16 PRIMARY KEY (Id,LUsername),
	CONSTRAINT fk_id
    FOREIGN KEY (Id)
    REFERENCES [Showing]([Id]) On Update Cascade On Delete Cascade,
	CONSTRAINT fk_lu
    FOREIGN KEY (LUsername)
    REFERENCES [Lifegaurd]([LUsername]) On Update Cascade On Delete Cascade
);
CREATE TABLE Present (
    UUsername varchar(250),
	Entrance varchar(Max),
	[Exit] varchar(Max),
	Ckey int,
	MassageRoom int,
	ShowingId int,
	CONSTRAINT pk17 PRIMARY KEY (UUsername),
	CONSTRAINT fk_UUsername3
    FOREIGN KEY (UUsername)
    REFERENCES [User](UUsername) On Update Cascade On Delete Cascade,
	CONSTRAINT fk_ckey
    FOREIGN KEY (CKey)
    REFERENCES [Closet]([Key]) On Update Cascade On Delete Cascade,
	CONSTRAINT fk_MassageRoom
    FOREIGN KEY (MassageRoom)
    REFERENCES [MassageRoom]([RoomNo]) On Update No action On Delete No action,
	CONSTRAINT fk_ShowingId
    FOREIGN KEY (ShowingId)
    REFERENCES [Showing]([Id]) On Update Cascade On Delete Cascade
);
CREATE TABLE Buffet_Sale (
    BCode int,
	UUsername varchar(250),
	List varchar(Max),
	Price decimal(19,2),
	CONSTRAINT pk18 PRIMARY KEY (BCode,UUsername),
	CONSTRAINT fk_BCode2
    FOREIGN KEY (BCode)
    REFERENCES [Buffet](Code) On Update Cascade On Delete Cascade,
	CONSTRAINT fk_UUsername4
    FOREIGN KEY (UUsername)
    REFERENCES Present(UUsername) On Update Cascade On Delete Cascade
);
CREATE TABLE Slide (
    SKey int,
	Risk decimal(5,2),
	AgeLimit int,
	CONSTRAINT pk19 PRIMARY KEY (SKey),
);
CREATE TABLE Reserve_Slide (
    SKey int,
	UUsername varchar(250),
	Price decimal(10,2),
	CONSTRAINT pk20 PRIMARY KEY (SKey,UUsername),
	CONSTRAINT fk_SKey
    FOREIGN KEY (SKey)
    REFERENCES [Slide](SKey) On Update Cascade On Delete Cascade,
	CONSTRAINT fk_UUsername5
    FOREIGN KEY (UUsername)
    REFERENCES Present(UUsername) On Update Cascade On Delete Cascade
);
CREATE TABLE Phones (
	Username varchar(250),
	Phone varchar(22),
	CONSTRAINT pk21 PRIMARY KEY (Username,Phone),
	CONSTRAINT fk_Username
    FOREIGN KEY (Username)
    REFERENCES [Person](Username) On Update Cascade On Delete Cascade,
);
*/
/*
select * from pool.dbo.Person
select * from pool.dbo.Account
select * from pool.dbo.MassageRoom
*/

/*
update pool.dbo.Person
set Birthday =Birthday+4;

update pool.dbo.Account
set RgDate =RgDate-50;
*/
/*
update pool.dbo.Person
set Gender ='Male' where Username='abastow2';
update pool.dbo.Account
set RgDate ='2022' where Password='TCcc938h';
*/
/*
delete from pool.dbo.Person
where Username='abalden9z' and FirstName='Arvy';

delete from pool.dbo.Account
where Password='8fvSQP' and RgDate='34664';
*/
/*
alter table Person
add constraint check_birth check(Birthday>0);

alter table Account 
add constraint unique_constraint unique(Username);

alter table MassageRoom
add constraint unique_key unique(RoomNo);
*/ 
/*
alter table Person
drop constraint check_birth;
alter table Person
add constraint bewcheck_birth Check(Birthday>2019);

alter table MassageRoom
drop constraint unique_key;
alter table MassageRoom
add constraint newunique_masseur unique(Masseur);
*/
/*
alter table Person
drop constraint bewcheck_birth;

alter table MassageRoom
drop constraint newunique_masseur;
*/
/*
create view view1 as
select Birthday from Person 
where birthday>2025;
select * from view1;

create view viewprime as
select RgDate from Account 
where RgDate>11000;
select * from viewprime;
*/
/*
create function Getfullname(@Username varchar(250))
returns varchar(max) as
begin
declare @FullName varchar(max);
select @FullName=CONCAT(FirstName,' ',LastName)
from Person where Username=@Username
return @FullName;
end;
select dbo.Getfullname('aarmiger2a') as FullName

CREATE FUNCTION GetUserCountByGender(@Gender VARCHAR(max))
RETURNS INT
AS
BEGIN
    DECLARE @Count INT;

    SELECT @Count = COUNT(*)
    FROM Person
    WHERE Gender = @Gender;

    RETURN @Count;
END;
select dbo.getusercountbygender('Male') as MaleUserCount;
*/

/*
create procedure GenderUpdate
@Username varchar(250),@Gender varchar(max) as
begin
update Person set Gender=@Gender 
where Username=@Username;
end;
exec GenderUpdate 'ablainev','Male';


CREATE PROCEDURE UpdateBirthday
    @Username VARCHAR(250),
    @NewBirthday DATE
AS
BEGIN
    UPDATE Person
    SET Birthday = @NewBirthday
    WHERE Username = @Username;
END;
exec UpdateBirthday 'gmarietteb','2003';
*/

/*
CREATE TRIGGER UpdateRegistrationDate
ON Account
AFTER INSERT
AS
BEGIN
    UPDATE Account
    SET RgDate = GETDATE()
    WHERE Username IN (SELECT Username FROM inserted);
END;

CREATE TRIGGER UpdateValueOnPasswordChange
ON Account
AFTER UPDATE
AS
BEGIN
    IF UPDATE(Password)
    BEGIN
        UPDATE a
        SET a.Value = a.Value + 1
        FROM Account a
        INNER JOIN inserted i ON a.Username = i.Username;
    END
END;
*/
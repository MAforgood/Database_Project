--Q1
select Person.FirstName , Person.LastName from pool.dbo.Person
Join Employee On Person.Username = Employee.EUsername
Join Lifegaurd On Lifegaurd.LUsername = Person.Username
Where Person.Gender = 'Female';
--Q2
select Avg(TSale) from pool.dbo.Buffet as Average_Sale
--Q3
select Person.FirstName , Person.LastName, Salary from pool.dbo.Person
Join Employee On Person.Username = Employee.EUsername
Where Salary > 20000
order by Salary desc;
--Q4
Select Person.FirstName , Person.LastName, Account.[Value] from pool.dbo.Person
Join [User] On Person.Username = [User].UUsername
Join [Account] On Person.Username = [Account].UUsername
Where Type = 'VIP'
order by [Value] desc;
--Q5
Select Person.FirstName , Person.LastName, Phones.Phone from pool.dbo.Phones
Join Person On Person.Username = Phones.Username
Join Employee On Person.Username = Employee.EUsername
Join Mechanic On Employee.EUsername = Mechanic.MUsername
--Q6
Select Person.Username , Max(Person.FirstName) As FirstName, Max(Person.LastName) As LastName from pool.dbo.Person
Join Showing_Lifegaurd On Showing_Lifegaurd.LUsername = Person.Username
Group by Username
Having Count(Username) > 1;
--Q7
select Person.FirstName , Person.LastName, HPrice from pool.dbo.Person
Join Employee On Person.Username = Employee.EUsername
Join Masseur On Masseur.MAUsername = Person.Username
Join MassageRoom On MassageRoom.Masseur = Masseur.MAUsername
Where Fullness = 1
order by HPrice desc
--Q8
select SKey, Risk, AgeLimit from pool.dbo.Slide
where AgeLimit < 16 And Risk > 60
--Q9
select COUNT(UserName) As NumOfCashiers  from pool.dbo.Person
Join Employee On Person.Username = Employee.EUsername
Join Cashier On Cashier.CUsername = Person.Username
--Q10
select Sum(Salary) As TSalaryOfCleaners  from pool.dbo.Person
Join Employee On Person.Username = Employee.EUsername
Join Cleaner On Cleaner.CLUsername = Person.Username
--Q11
select Gender, Count(Gender) As Num from pool.dbo.Person
Group by Gender
--Q12
select Pkey, Price from pool.dbo.Product
Where Price > 10
Order by Price
--Q13
select Avg(Salary) As AvgSalary  from pool.dbo.Person
Join Employee On Person.Username = Employee.EUsername
--Q14
select Max(Salary) As MaxSalary , Min(Salary) As MinSalary from pool.dbo.Person
Join Employee On Person.Username = Employee.EUsername
--Q15
select Salary, Count(Salary) As Num from pool.dbo.Person
Join Employee On Person.Username = Employee.EUsername
Join Masseur On Masseur.MAUsername = Person.Username
Group by Salary
--Q16
Select Person.FirstName , Person.LastName, Account.[Value] from pool.dbo.Person
Join [User] On Person.Username = [User].UUsername
Join [Account] On Person.Username = [Account].UUsername
Where [Password] like '%ma%'
order by [Value] desc;
--Q17
Select FullNess, Count([Key]) as Num from pool.dbo.Closet
Group by Fullness
--Q18
Select Top(10) Person.FirstName , Count(Person.FirstName) As Num from pool.dbo.Person
Join [User] On Person.Username = [User].UUsername
Group by FirstName
Order by Count(Person.FirstName) desc
--Q19
Select Id , Gender , [Begin], [End] from pool.dbo.Showing
Where Capacity > 160
--Q20
Select Sum(Number) As TNumOfP from pool.dbo.Product

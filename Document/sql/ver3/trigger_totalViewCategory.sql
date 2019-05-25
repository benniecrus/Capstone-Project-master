create trigger trigger_totalViewCategory 
on Course
for Update, insert
as
declare @categoryId int;

select @categoryId = i.CategoryID from inserted i

update Category 
set TotalView = (select t.TotalView from (select SUM(co.TotalView) as TotalView, co.CategoryID from Course co, Category ca
where co.CategoryID = ca.CategoryID
group by co.CategoryID) as t where CategoryID = @categoryId)
where CategoryID = @categoryId

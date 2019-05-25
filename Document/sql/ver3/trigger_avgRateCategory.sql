create trigger trigger_avgRateCategory
on Course
for Update, insert
as
declare @categoryId int;

select @categoryId = i.CategoryID from inserted i

update Category 
set Rate = (select avg(Rate) 
from Course
where CategoryID = @categoryId)
where CategoryID = @categoryId

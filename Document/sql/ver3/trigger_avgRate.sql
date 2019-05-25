create trigger trg_Rate on CourseRate
for Insert
as

declare @courseid int;

select @courseid = i.CourseID from inserted i

update Course 
set Rate = (select CEILING(avg(cast(Rate as float ))) from CourseRate where CourseID = @courseid ) 
where CourseID = @courseid

go
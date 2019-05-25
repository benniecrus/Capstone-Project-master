create trigger trg_totalView on History
for insert
as
declare @courseid int;

select @courseid = i.CourseID from inserted i


update Course 
set TotalView = (select count(LearnerID) from History where CourseID = @courseid) 
where CourseID = @courseid

go
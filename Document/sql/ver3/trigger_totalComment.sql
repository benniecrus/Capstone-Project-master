create trigger trg_comment on Comment
for insert
as
declare @courseid int;

select @courseid = i.CourseID from inserted i


update Course 
set TotalComment = (select count(CommentID) from Comment where CourseID = @courseid) 
where CourseID = @courseid

go
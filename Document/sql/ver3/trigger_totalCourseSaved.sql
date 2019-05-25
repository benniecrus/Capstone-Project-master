create trigger trigger_totalCourseSaved
on Course
for Update, insert
as
declare @categoryId int;

select @categoryId = i.CategoryID from inserted i

update Category 
set NumberOfCourseSaved = (select SUM(t.TotalSaved)
from (select COUNT(CourseID) as TotalSaved, CourseID from History
where isSaved='true'
Group by CourseID) as t, Course
where t.CourseID = course.CourseID and CategoryID = @categoryId ) 

where CategoryID = @categoryId

create trigger trg_numberCourse on Course
for insert
as
declare @trainerid int;

select @trainerid = i.TrainerID from inserted i


update Trainer 
set TotalCourse = (select count(CourseID) from Course where TrainerID = @trainerid) 
where TrainerID = @trainerid

go
create trigger trg_trainerRate on TrainerRate
for Insert
as

declare @trainerid int;

select @trainerid = i.TrainerID from inserted i

update Trainer 
set Rate = (select CEILING(avg(cast(Rate as float ))) from TrainerRate where TrainerID = @trainerid ) 
where TrainerID = @trainerid
/* insert image (SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\picture.jpg', SINGLE_BLOB) as UserPicture ) */

/* Insert into Admin table */
/* userName, password, firstName, lastName, gender, DoB, Phone, Avatar, mail, address */

insert into Admin values('nam', '123456', 'Nam', 'Nguyen Viet', '1', '7/16/1994','0984536543', null, 'namnvse03599@fpt.edu.vn','Hoai Duc - Ha Noi' )
insert into Admin values('truong', '123456', 'Truong', 'Tran Nhat', '1', '3/13/1995','0978203753', null, 'truongntse03527@fpt.edu.vn','Ha Noi' )
insert into Admin values('cuong', '123456', 'Cuong', 'Nguyen Thinh', '1', '1/1/1994','0912345676', null, 'cuongnt01234@fpt.edu.vn','Ha Noi' )
insert into Admin values('toan', '123456', 'Toan', 'Chu Van', '1', '1/1/1995','0912345676', null, 'toancv01234@fpt.edu.vn','Ha Noi' )

/* Insert into Job table */
/* JobName */

insert into Job values('Học Sinh')
insert into Job values('Giáo Viên/Giảng Viên')
insert into Job values('Kỹ Sư Công Nghệ Thông Tin')
insert into Job values('Bác Sĩ')
insert into Job values('Nhân Viên Văn Phòng')
insert into Job values('Khác')


/* Insert into User table */
/* userName, password, firstName, lastName, gender, DoB, Phone, Avatar, mail, address, biography, JobID */

insert into Users values('user1','123456','user1', 'User', '1', '1/1/1996','0123456789',null,'user1@fpt.edu.vn','Hà Nội','nothing', '1')
insert into Users values('user2','123456','user2', 'User', '0', '1/1/1989','0978524621',null,'user2@fpt.edu.vn','Nam Định','nothing', '3')
insert into Users values('user3','123456','user3', 'User', '0', '1/1/1994','0912253484',null,'user3@fpt.edu.vn','Hà Nam','nothing', '4')
insert into Users values('user4','123456','user4', 'User', '1', '1/1/1990','01234116562',null,'user4@fpt.edu.vn','Đà Nẵng','nothing', '1')
insert into Users values('user5','123456','user5', 'User', '0', '1/1/1999','0972035894',null,'user5@fpt.edu.vn','Hồ Chí Minh','nothing', '5')
insert into Users values('user6','123456','user6', 'User', '1', '1/1/1985','0154648412',null,'user6@fpt.edu.vn','Hà Nội','nothing', '2')
insert into Users values('user7','123456','user7', 'User', '1', '1/1/1997','0155788891',null,'user7@fpt.edu.vn','Cần Thơ','nothing', '3')
insert into Users values('user8','123456','user8', 'User', '1', '1/1/1991','0985764123',null,'user8@fpt.edu.vn','Hải Phòng','nothing', '3')
insert into Users values('user9','123456','user9', 'User', '0', '1/1/1995','0965246587',null,'user9@fpt.edu.vn','Nam Định','nothing', '6')
insert into Users values('user10','123456','user10', 'User', '0', '1/1/1996','0978256446',null,'user10@fpt.edu.vn','Hà Nội','nothing', '4')

/* insert into Category table */
/* CategoryName */
insert into Category values(N'Công Nghệ Thông Tin')
insert into Category values(N'Thiết Kế')
insert into Category values(N'Âm Nhạc')
insert into Category values(N'Sức Khỏe')
insert into Category values(N'Marketing')
insert into Category values(N'Ứng Dụng Văn Phòng')
insert into Category values(N'Phát Triển Cá Nhân')
insert into Category values(N'Ngoại Ngữ')
insert into Category values(N'Doanh Nghiệp')
insert into Category values(N'Khác')

/* insert into Language table */
/* languageName */
insert into Language values (N'Tiếng Việt')
insert into Language values(N'English')

/* insert into Level table */
/* levelName */

insert into Level values (N'Beginner')
insert into Level values (N'Intermediate')
insert into Level values (N'Expert')
insert into Level values (N'All Level')

/* insert into Field table */
/* FieldName */

insert into Field values(N'Công Nghệ Thông Tin')
insert into Field values(N'Thiết Kế')
insert into Field values(N'Âm Nhạc')
insert into Field values(N'Sức Khỏe')
insert into Field values(N'Marketing')
insert into Field values(N'Ứng Dụng Văn Phòng')
insert into Field values(N'Phát Triển Cá Nhân')
insert into Field values(N'Ngoại Ngữ')
insert into Field values(N'Doanh Nghiệp')
insert into Field values(N'Khác')

/* insert into Trainer table */
/* UserID, FieldID */

insert into Trainer values ('1', '1')
insert into Trainer values ('2','4')
insert into Trainer values ('3', '1')
insert into Trainer values ('4', '5')
insert into Trainer values ('5', '9')

/* insert into Course table */
/* CourseName, Title, Subtitle, description, primary taught, fee, categoryid, Autoreply, Image, video, rate, languageID, levelID, TrainerID, isDeleted, status */

insert into Course values ('CourseName1', 'Title1', 'Subtitle1', 'Descriptuon1','Primary Taught1','100','1','Nothing',null,null,'5','1','1','1','0','1')
insert into Course values ('CourseName2', 'Title2', 'Subtitle2', 'Descriptuon2','Primary Taught2','150','5','Nothing',null,null,'4','1','3','2','0','1')
insert into Course values ('CourseName3', 'Title3', 'Subtitle3', 'Descriptuon3','Primary Taught3','200','3','Nothing',null,null,'5','1','1','3','0','1')
insert into Course values ('CourseName4', 'Title4', 'Subtitle4', 'Descriptuon4','Primary Taught4','80','6','Nothing',null,null,'5','2','4','4','0','1')
insert into Course values ('CourseName5', 'Title5', 'Subtitle5', 'Descriptuon5','Primary Taught5','170','8','Nothing',null,null,'3','1','3','5','0','1')
insert into Course values ('CourseName6', 'Title6', 'Subtitle6', 'Descriptuon6','Primary Taught6','350','2','Nothing',null,null,'3','1','3','1','0','1')
insert into Course values ('CourseName7', 'Title7', 'Subtitle7', 'Descriptuon7','Primary Taught7','200','3','Nothing',null,null,'2','2','2','1','0','1')
insert into Course values ('CourseName8', 'Title8', 'Subtitle8', 'Descriptuon8','Primary Taught8','100','9','Nothing',null,null,'3','1','1','3','0','1')
insert into Course values ('CourseName9', 'Title9', 'Subtitle9', 'Descriptuon9','Primary Taught9','50','9','Nothing',null,null,'4','1','2','1','0','1')
insert into Course values ('CourseName10', 'Title10', 'Subtitle10', 'Descriptuon10','Primary Taught10','250','1','Nothing',null,null,'4','1','1','2','0','1')


/* insert into Document table */
/* Thay C:\Users\Nam NV\Desktop\picture.jpg bằng link ảnh */
/* image, description, trainerID, status */

insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\18983337_1036276123170273_472921125_n.jpg', SINGLE_BLOB) as UserPicture ), 'thac si', '2', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\18983337_1036276123170273_472921125_n.jpg', SINGLE_BLOB) as UserPicture ), 'thac si', '4', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\18983337_1036276123170273_472921125_n.jpg', SINGLE_BLOB) as UserPicture ), 'thac si', '1', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\18983337_1036276123170273_472921125_n.jpg', SINGLE_BLOB) as UserPicture ), 'thac si', '2', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\18983337_1036276123170273_472921125_n.jpg', SINGLE_BLOB) as UserPicture ), 'thac si', '5', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\18983337_1036276123170273_472921125_n.jpg', SINGLE_BLOB) as UserPicture ), 'thac si', '5', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\18983337_1036276123170273_472921125_n.jpg', SINGLE_BLOB) as UserPicture ), 'thac si', '2', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\18983337_1036276123170273_472921125_n.jpg', SINGLE_BLOB) as UserPicture ), 'thac si', '1', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\18983337_1036276123170273_472921125_n.jpg', SINGLE_BLOB) as UserPicture ), 'thac si', '3', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\18983337_1036276123170273_472921125_n.jpg', SINGLE_BLOB) as UserPicture ), 'thac si', '4', '0')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\18983337_1036276123170273_472921125_n.jpg', SINGLE_BLOB) as UserPicture ), 'thac si', '1', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\18983337_1036276123170273_472921125_n.jpg', SINGLE_BLOB) as UserPicture ), 'thac si', '5', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\18983337_1036276123170273_472921125_n.jpg', SINGLE_BLOB) as UserPicture ), 'thac si', '2', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\18983337_1036276123170273_472921125_n.jpg', SINGLE_BLOB) as UserPicture ), 'thac si', '4', '0')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\18983337_1036276123170273_472921125_n.jpg', SINGLE_BLOB) as UserPicture ), 'thac si', '3', '1')

/* insert into Learner table */
/* UserID */

insert into Learner values('5')
insert into Learner values('6')
insert into Learner values('7')
insert into Learner values('8')
insert into Learner values('9')
insert into Learner values('10')

/* insert into History table */
/* CourseID, LearnerID, Time, isSaved */

insert into History values('2', '1', getdate(), '0')
insert into History values('5', '2', getdate(), '1')
insert into History values('9', '3', getdate(), '1')
insert into History values('1', '4', getdate(), '0')
insert into History values('4', '5', getdate(), '1')
insert into History values('6', '6', getdate(), '1')
insert into History values('1', '1', getdate(), '0')
insert into History values('6', '2', getdate(), '1')
insert into History values('1', '3', getdate(), '1')


/* insert into Message table */
/* content, time, SenderID, ReceiverID */

insert into Message values('hi', getdate(),'1','2')
insert into Message values('hi', getdate(),'2','4')
insert into Message values('hi', getdate(),'3','2')
insert into Message values('hi', getdate(),'4','1')
insert into Message values('hi', getdate(),'6','2')
insert into Message values('hi', getdate(),'1','2')

/* insert into Section table */
/* Title, LearningObjective, LectureData, CourseID */

insert into Section values(N'Tổng quan PHP','nothing', N'Bài số 1 : Giới thiệu ', '1')
insert into Section values(N'Java Nâng Cao','nothing', N'Bài số 1 : Giới thiệu', '2')
insert into Section values(N'Android','nothing', N'Bài số 1 : Giới thiệu ', '3')
insert into Section values(N'Datawarehouse','nothing', N'Bài số 1 : Giới thiệu ', '4')
insert into Section values(N'Phát triển ứng dụng web','nothing', N'Bài số 1 : Giới thiệu ', '5')
insert into Section values(N'Ruby on Rails','nothing', N'Bài số 1 : Giới thiệu', '6')
insert into Section values(N'English for Beginner','nothing', N'Bài số 1 : Introduction', '7')
insert into Section values(N'C','nothing', N'Bài số 1 : Giới thiệu', '8')
insert into Section values(N'C++','nothing', N'Bài số 1 : Giới thiệu', '9')
insert into Section values(N'Marketing','nothing', N'Bài số 1 : Giới thiệu', '10')



/* insert into Comment table */
/* content, time, isDeleted, UserID, CourseID */

insert into Comment values('hi',getdate(), '0', '1', '1')
insert into Comment values('Good Course',getdate(), '0', '3', '5')
insert into Comment values('Hay lam',getdate(), '0', '4', '1')
insert into Comment values('Duoc',getdate(), '0', '3', '6')
insert into Comment values('hoc duoc rat nhieu tu bai nay',getdate(), '0', '6', '1')
insert into Comment values('Can tim mon nay lau lam roi',getdate(), '0', '2', '1')
insert into Comment values('hi',getdate(), '0', '1', '2')
insert into Comment values('hi',getdate(), '0', '1', '4')
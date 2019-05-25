/* insert image (SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\picture.jpg', SINGLE_BLOB) as UserPicture ) */

/* Insert into Admin table */
/* userName, password, firstName, lastName, gender, DoB, Phone, Avatar, mail, address */

insert into Admin values('nam', '123456', N'Nam', N'Nguyễn Viết', '1', '7/16/1994','0984536543', (SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as UserPicture ), 'namnvse03599@fpt.edu.vn','Hoai Duc - Ha Noi' )
insert into Admin values('truong', '123456', N'Trường', N'Trần Nhật', '1', '3/13/1995','0978203753', (SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as UserPicture ), 'truongntse03527@fpt.edu.vn','Ha Noi' )
insert into Admin values('cuong', '123456', N'Cường', N'Nguyễn Thịnh', '1', '1/1/1994','0912345676', (SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as UserPicture ), 'cuongnt01234@fpt.edu.vn','Ha Noi' )
insert into Admin values('toan', '123456', N'Toàn', N'Chu Văn', '1', '1/1/1995','0912345676', (SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as UserPicture ), 'toancv01234@fpt.edu.vn','Ha Noi' )

/* Insert into Job table */
/* JobName */

insert into Job values(N'Học Sinh')
insert into Job values(N'Giáo Viên/Giảng Viên')
insert into Job values(N'Kỹ Sư Công Nghệ Thông Tin')
insert into Job values(N'Bác Sĩ')
insert into Job values(N'Nhân Viên Văn Phòng')
insert into Job values(N'Khác')


/* Insert into User table */
/* userName, password, firstName, lastName, Phone, Avatar, mail, address, biography, Status */

insert into Users values('namnv@gmail.com','123456',N'Nguyễn Viết Nam','0985764123',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as UserPicture ),N'Hà Nội',N'yêu đi đừng sợ','1')
insert into Users values('tuyennv@gmail.com','123456',N'Nguyễn Văn Tuyến','0985764123',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as UserPicture ),N'Nam Định',N'học là điều quan trọng','1')
insert into Users values('cuonghv@gmail.com','123456',N'Hứa Văn Cường','0912253484',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as UserPicture ),N'Hà Nam',N'Tiền là tất cả','1')
insert into Users values('sachct@gmail.com','123456',N'Công Tôn Sách','0985764123',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as UserPicture ),N'Đà Nẵng',N'Chẳng có gì là khó','1')
insert into Users values('hieunv@gmail.com','123456',N'Nguyễn Văn Hiếu','0972035894',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as UserPicture ),N'Hồ Chí Minh',N'Chẳng biết gì cả','1')
insert into Users values('dattv@gmail.com','123456',N'Tạ Văn Đạt','0985764123',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as UserPicture ),N'Hà Nội',N'Sống đơn giản','1')
insert into Users values('hanhnt.com','123456',N'Nguyễn Thị Hạnh','0985764123',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as UserPicture ),N'Cần Thơ',N'Sống đơn giản','1')
insert into Users values('hongnt@gmail.com','123456',N'Văn Thị Hồng','0985764123',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as UserPicture ),N'Hải Phòng',N'Sống đơn giản','1')
insert into Users values('congnv@gmail.com','123456',N'Nguyễn Văn Công','0965246587',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as UserPicture ),N'Nam Định',N'Sống đơn giản','1')
insert into Users values('doanhnv@gmail.com','123456',N'Nguyễn Viết Doanh','0978256446',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as UserPicture ),N'Hà Nội',N'Sống đơn giản','1')
insert into Users values('tuyentv@gmail.com','123456',N'Trần Văn Tuyên','0978256446',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as UserPicture ),N'Hà Nội',N'Sống đơn giản','1')


/* insert into Category table */
/* CategoryName */
insert into Category values(N'Công Nghệ Thông Tin','0','0','0')
insert into Category values(N'Thiết Kế','0','0','0')
insert into Category values(N'Âm Nhạc','0','0','0')
insert into Category values(N'Sức Khỏe','0','0','0')
insert into Category values(N'Marketing','0','0','0')
insert into Category values(N'Ứng Dụng Văn Phòng','0','0','0')
insert into Category values(N'Phát Triển Cá Nhân','0','0','0')
insert into Category values(N'Ngoại Ngữ','0','0','0')
insert into Category values(N'Doanh Nghiệp','0','0','0')
insert into Category values(N'Khác','0','0','0')

/* insert into Language table */
/* languageName */
insert into Language values (N'Tiếng Việt')
insert into Language values('English')

/* insert into Level table */
/* levelName */

insert into Level values (N'Người mới')
insert into Level values (N'Nâng cao')
insert into Level values (N'Chuyên gia')
insert into Level values (N'Tất cả')

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

insert into Trainer values ('1', '1','0','0',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as TrainerCV ))
insert into Trainer values ('2','4','0','0',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as TrainerCV ))
insert into Trainer values ('3', '1','0','0',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as TrainerCV ))
insert into Trainer values ('4', '5','0','0',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as TrainerCV ))
insert into Trainer values ('5', '9','0','0',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as TrainerCV ))

/* insert into Course table */
/* Curriculum, Title, Subtitle, description, fee, categoryid, Image, video, rate, languageID, levelID, TrainerID, isDeleted, status, TotalView,TotalComment, answer1, answer2, answer3 */

insert into Course values ((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as Curriculum ), 'Title1', 'Subtitle1', 'Descriptuon1','100','1',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as CourseImage ),null,'5','1','1','1','0','1','0','0','0','nothing','nothing','nothing', GETDATE())
insert into Course values ((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as Curriculum ), 'Title2', 'Subtitle2', 'Descriptuon2','150','5',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as CourseImage ),null,'4','1','3','2','0','1','0','0','0','nothing','nothing','nothing', GETDATE())
insert into Course values ((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as Curriculum ), 'Title3', 'Subtitle3', 'Descriptuon3','200','3',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as CourseImage ),null,'5','1','1','3','0','1','0','0','0','nothing','nothing','nothing', GETDATE())
insert into Course values ((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as Curriculum ), 'Title4', 'Subtitle4', 'Descriptuon4','80','6',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as CourseImage ),null,'5','2','4','4','0','1','0','0','0','nothing','nothing','nothing', GETDATE())
insert into Course values ((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as Curriculum ), 'Title5', 'Subtitle5', 'Descriptuon5','170','8',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as CourseImage ),null,'3','1','3','5','0','1','0','0','0','nothing','nothing','nothing', GETDATE())
insert into Course values ((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as Curriculum ), 'Title6', 'Subtitle6', 'Descriptuon6','350','2',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as CourseImage ),null,'3','1','3','1','0','1','0','0','0','nothing','nothing','nothing', GETDATE())
insert into Course values ((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as Curriculum ), 'Title7', 'Subtitle7', 'Descriptuon7','200','3',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as CourseImage ),null,'2','2','2','1','0','1','0','0','0','nothing','nothing','nothing', GETDATE())
insert into Course values ((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as Curriculum ), 'Title8', 'Subtitle8', 'Descriptuon8','100','9',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as CourseImage ),null,'3','1','1','3','0','1','0','0','0','nothing','nothing','nothing', GETDATE())
insert into Course values ((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as Curriculum ), 'Title9', 'Subtitle9', 'Descriptuon9','50','9',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as CourseImage ),null,'4','1','2','1','0','1','0','0','0','nothing','nothing','nothing', GETDATE())
insert into Course values ((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as Curriculum ), 'Title10', 'Subtitle10', 'Descriptuon10','250','1',(SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\download.png', SINGLE_BLOB) as CourseImage ),null,'4','1','1','2','0','1','0','0','0','nothing','nothing','nothing', GETDATE())


/* insert into Document table */
/* Thay C:\Users\Nam NV\Desktop\picture.jpg bằng link ảnh */
/* image, description, trainerID, status */

insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as DocumentImage ), 'thac si', '2', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as DocumentImage ), 'thac si', '4', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as DocumentImage ), 'thac si', '1', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as DocumentImage ), 'thac si', '2', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as DocumentImage ), 'thac si', '5', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as DocumentImage ), 'thac si', '5', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as DocumentImage ), 'thac si', '2', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as DocumentImage ), 'thac si', '1', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as DocumentImage ), 'thac si', '3', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as DocumentImage ), 'thac si', '4', '0')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as DocumentImage ), 'thac si', '1', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as DocumentImage ), 'thac si', '5', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as DocumentImage ), 'thac si', '2', '1')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as DocumentImage ), 'thac si', '4', '0')
insert into Document values((SELECT * FROM OPENROWSET(BULK N'C:\Users\Nam NV\Desktop\DDL.pdf', SINGLE_BLOB) as DocumentImage ), 'thac si', '3', '1')

/* insert into Learner table */
/* UserID, DoB, Gender, JobId */

insert into Learner values('6', '0', '1/1/1996','2')
insert into Learner values('7', '0', '1/1/1996','3')
insert into Learner values('8', '0', '1/1/1996','4')
insert into Learner values('9', '0', '1/1/1996','5')
insert into Learner values('10', '0', '1/1/1996','6')

/* insert into History table */
/* CourseID, LearnerID, Time, isSaved */

insert into History values('2', '1', getdate(), '0')
insert into History values('5', '2', getdate(), '1')
insert into History values('9', '3', getdate(), '1')
insert into History values('1', '4', getdate(), '0')
insert into History values('4', '5', getdate(), '1')
insert into History values('6', '1', getdate(), '1')
insert into History values('1', '1', getdate(), '0')
insert into History values('6', '2', getdate(), '1')
insert into History values('1', '3', getdate(), '1')


/* insert into Message table */
/* content, time, SenderID, ReceiverID */

insert into Message values('hi', getdate(),'1','2','0','0','0')
insert into Message values('hi', getdate(),'2','4','0','0','0')
insert into Message values('hi', getdate(),'3','2','0','0','0')
insert into Message values('hi', getdate(),'4','1','0','0','0')
insert into Message values('hi', getdate(),'6','2','0','0','0')
insert into Message values('hi', getdate(),'1','2','0','0','0')

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
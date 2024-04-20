use Academy

create table LectureRoom
(
Id int primary key identity(0, 1),
Name nvarchar(30) not null check(Name != '') unique,
Building int not null check(Building between 1 and 5)
)

create table Schedules
(
Id int primary key identity(0, 1),
Class int not null check(Class between 1 and 8),
DayOfWeek int not null check(DayOfWeek between 1 and 7),
Week int not null check(Week between 1 and 52),
LectureId int not null,
LectureRoomId int not null
)

select lr.Name from LectureRoom as lr inner join Schedules as sc on lr.Id = sc.LectureRoomId inner join Lectures as l on sc.LectureId = l.Id inner join Teachers as t on l.TeacherID = t.Id where t.Name = 'Jordon'

select t.Surname from Teachers as t inner join Lectures as l on l.TeacherID = t.Id inner join GroupsLectures as gl on gl.LectureID = l.Id inner join Groups as g on g.Id = gl.GroupID where t.IsAssistant = 1 and g.Name = 'Hulke'

D and t.Name = 'Jordon' inner join GroupsLectures as gl on gl.LectureID = l.Id inner join Groups as g on g.Id = gl.GroupID and g.Years = 5

select su.Name from Subjects as su inner join Lectures as l on su.Id = l.SubjectID inner join Teachers as t on t.Id = l.TeacherI

select t.Surname from Teachers as t inner join Lectures as l on l.TeacherID = t.Id inner join Schedules as s on s.LectureId = l.Id and s.DayOfWeek != 1

select lr.Name, lr.Building from LectureRoom as lr inner join Schedules as sc on sc.LectureRoomId = lr.Id and (sc.Class != '2' or sc.DayOfWeek != 3 or sc.Week != 2)

select t.Name + t.Surname as [Full Name] from Teachers as t inner join Lectures as l on l.TeacherID = t.Id inner join GroupsLectures as gl on gl.LectureID = l.Id inner join Groups as g on g.Id = gl.GroupID inner join Departments as d on d.Id = g.DepartmentID and d.Name != 'Hanaby' inner join Faculties as f on f.Id = d.FacultyID and f.Name = 'Malt'


select f.Dean as [Dean name] from Faculties as f

select t.Name + ' ' + t.Surname as [Professor Name] from Teachers as t where t.IsProfessor = 1

select t.Name + ' ' + t.Surname as [Teacher name] from Teachers as t where t.IsProfessor = 0 and t.IsAssistant = 0

select c.Name + c.Surname as [Curator name] from Curators as c

select t.Name + ' ' + t.Surname as [Assistant name] from Teachers as t where t.IsAssistant = 1

select distinct s.DayOfWeek from Schedules as s inner join LectureRoom as lr on lr.Id = s.LectureRoomId and (lr.Name = 'wblondel5' or lr.Name = 'miron3')
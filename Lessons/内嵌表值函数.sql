--��Ƕ��ֵ����
--����д begin end
create function dbo.fun1()
returns table
as
return
	select sno,sname
	from student
	where sdept = 'CS'
	
select * 
from dbo.fun1();

create function dbo.fun2(@xibie varchar(10))--�β�
returns table
as
return
	select sno,sname
	from student
	where sdept = @xibie
select *
from dbo.fun2('CS')--�������

create function dbo.funn3(@xibie varchar(10))
returns table
as
return
	select sno,grade--Ƕ�ײ�ѯ
	from sc
	where sno in(
		select sno
		from student
		where sdept = @xibie
	)
	
select *
from dbo.funn3('CS')


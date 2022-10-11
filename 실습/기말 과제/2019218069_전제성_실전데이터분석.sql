select count(*) from dust;
select * from dust;

select * from dust
where place = '������';

alter table dust add (time varchar(10));
alter table dust add (only_date varchar(20));
delete from dust where place='���';

create or replace procedure split_date_time
as
    time_str dust.time%type;
    date_str dust.only_date%type;
    
    date_with_time_str dust.date_with_time%type;
    cursor date_cursor is select date_with_time from dust;
begin
    open date_cursor;
    loop
        fetch date_cursor into date_with_time_str;
        exit when date_cursor%notfound;
        date_str := regexp_substr(date_with_time_str, '[^ ]+', 1);
        time_str := regexp_substr(date_with_time_str, '[0-9]+[:]+[0-9][0-9]+', 1);
        update dust set 
            time = time_str, 
            only_date = date_str
        where date_with_time = date_with_time_str;
    end loop;
    close date_cursor;
end;

exec split_date_time();

--�ð��뺰 ��� �̼����� �м�
--��ħ
select place, avg(fine_dust), avg(ultra_fine_dust)
from dust
where time in ('7:00', '8:00', '9:00', '10:00')
group by place;
--����
select place, avg(fine_dust) �̼�����, avg(ultra_fine_dust) �ʹ̼�����
from dust
where time in ('11:00', '12:00', '13:00', '14:00')
group by place;
--����
select place, (fine_dust) �̼�����, avg(ultra_fine_dust) �ʹ̼�����
from dust
where time in ('17:00', '18:00', '19:00')
group by place;
--��
select place, avg(fine_dust) �̼�����, avg(ultra_fine_dust) �ʹ̼�����
from dust
where time in ('20:00', '21:00', '22:00', '23:00', '0:00')
group by place;
--����
select place, avg(fine_dust) �̼�����, avg(ultra_fine_dust) �ʹ̼�����
from dust
where time in ('1:00', '2:00', '3:00', '4:00', '5:00', '6:00')
group by place;

--��Һ� ��� �̼����� ���������� ����
select place, avg(fine_dust)
from dust
group by place
order by avg(fine_dust);

--��Һ� ��� �ʹ̼����� ���������� ����
select place, avg(ultra_fine_dust)
from dust
group by place
order by avg(fine_dust);

--��Һ� ��� �̼�����, �ʹ̼����� (�̼�������+�ʹ̼�������) ���������� ����
select place, avg(fine_dust), avg(ultra_fine_dust), avg(fine_dust)+avg(ultra_fine_dust)
from dust
group by place
order by avg(fine_dust)+avg(ultra_fine_dust);
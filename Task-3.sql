create table voters
(
   id number(10)primary key,
   name varchar2(20) not null,
   state varchar2(20) constraint statee check(state in('gujarat','maharashtra')),
   city varchar2(20) constraint cy check(city in('rajkot','gandhinagar','ahemdabad','mumbai','pune','nagpur'))
);


1) alter table voters add ward_no number(5);
   desc voters;

2) alter table voters drop primary key;
   desc voters;

3) alter table voters modify id VARCHAR2(10);
   alter table voters add constraint ide check(id like 'E____');
   desc voters;

4) alter table voters rename column id to voters_id;
   desc voters;

5) alter table voters add gender varchar2(20) constraint gen check(gender in('male','female','transgender'));
   desc voters;

6) insert into voters values('E1211','aaa','gujarat','rajkot',11,'male');
   insert into voters values('E1212','bbb','maharashtra','pune',12,'female');
   insert into voters values('E1213','ccc','gujarat','nagpur',13,'male');
   insert into voters values('E1214','ddd','maharashtra','ahemdabad',14,'female');
   insert into voters values('E1215','eee','gujarat','rajkot',15,'female');
   select * from voters;

7) update voters set ward_no=18 where ward_no=12;
   select * from voters;

8) truncate table voters;

9) alter table voters add age number(10) constraint age check(age>=18);

10) insert into voters values('E1211','aaa','gujarat','rajkot',11,'male',18);
    insert into voters values('E1212','bbb','maharashtra','pune',12,'female',19);
    insert into voters values('E1213','ccc','gujarat','nagpur',13,'male',20);
    insert into voters values('E1214','ddd','maharashtra','ahemdabad',14,'female',21);
    insert into voters values('E1215','eee','gujarat','rajkot',15,'female',22);
   select * from voters;

11) update voters set age=22 where age=18;
   select * from voters;

12) update voters set city='pune',state='maharashtra',ward_no=16 where voters_id='E1213';
   select * from voters;

13) alter table voters drop constraint chk_voters_id;
    desc voters;

14) update voters set voters_id = substr(name,1,2)||'EPIC';
    select * from voters;

15) update voters set ward_no=10 where gender='male';
    select * from voters;

16) update voters set city='rajkot';
    select * from voters;

17) update voters set state='gujarat';
    select * from voters;

18) alter table voters rename to EPIC;
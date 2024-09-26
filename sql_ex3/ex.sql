 create table voters
  (
   id number(10)primary key,
   name varchar2(10) not null,
   state varchar2(10)check(state in('gujarat','maharashtra')),
   city varchar2(10)check(city in('rajkot','gandhinagar','ahemdabad','mumbai','pune','nagpur'))
   );


 1... alter table voters add ward_no number(5);

Table altered.
SQL> desc voters;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(10)
 NAME                                      NOT NULL VARCHAR2(10)
 STATE                                              VARCHAR2(10)
 CITY                                               VARCHAR2(10)
 WARD_NO                                            NUMBER(5)



 2...
SQL> alter table voters drop primary key;

Table altered.

SQL> desc voters;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 NUMBER(10)
 NAME                                      NOT NULL VARCHAR2(10)
 STATE                                              VARCHAR2(10)
 CITY                                               VARCHAR2(10)
 WARD_NO                                            NUMBER(5)


 3....
 SQL> ALTER TABLE voters MODIFY id VARCHAR2(10);

Table altered.
 
 ALTER TABLE voters ADD CONSTRAINT chk_voters_id CHECK (voters_id LIKE 'E____');

SQL> desc voters;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 VARCHAR2(10)
 NAME                                      NOT NULL VARCHAR2(10)
 STATE                                              VARCHAR2(10)
 CITY                                               VARCHAR2(10)
 WARD_NO                                            NUMBER(5)


4...
 alter table voters rename column id to voters_id;

Table altered.

SQL> desc voters;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 VOTERS_ID                                          VARCHAR2(10)
 NAME                                      NOT NULL VARCHAR2(10)
 STATE                                              VARCHAR2(10)
 CITY                                               VARCHAR2(10)
 WARD_NO                                            NUMBER(5)


 5...
  alter table voters add gender varchar2(10)check(gender in('male','female','transgender'));

Table altered.

SQL> desc voters;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 VOTERS_ID                                          VARCHAR2(10)
 NAME                                      NOT NULL VARCHAR2(10)
 STATE                                              VARCHAR2(10)
 CITY                                               VARCHAR2(10)
 WARD_NO                                            NUMBER(5)
 GENDER                                             VARCHAR2(10)

 6..
  insert into voters values('E1211','aaa','gujarat','rajkot',11,'female');
 insert into voters values('E1212','bbb','gujarat','rajkot',12,'female');
 insert into voters values('E1213','ccc','gujarat','pune',13,'female');
 insert into voters values('E1214','ddd','gujarat','nagpur',14,'male');
 insert into voters values('E1215','eee','gujarat','rajkot',15,'male');



SQL> select * from voters;

VOTERS_ID  NAME       STATE      CITY          WARD_NO GENDER
---------- ---------- ---------- ---------- ---------- ----------
E1211      aaa        gujarat    rajkot            111 female
E1212      bbb        gujarat    rajkot            222 female
E1213      ccc        gujarat    pune              333 female
E1214      ddd        gujarat    nagpur            444 male
E1215      eee        gujarat    rajkot            555 male


7...
 update voters set ward_no=18 where ward_no=12;

1 row updated.

SQL> select * from voters;

VOTERS_ID  NAME       STATE      CITY          WARD_NO GENDER
---------- ---------- ---------- ---------- ---------- ----------
E1211      aaa        gujarat    rajkot            111 female
E1212      bbb        gujarat    rajkot            222 female
E1213      ccc        gujarat    pune              333 female
E1214      ddd        gujarat    nagpur            444 male
E1215      eee        gujarat    rajkot            555 male
E1215      eee        gujarat    rajkot             18 female


8....
 truncate table voters;

Table truncated.

SQL> desc voters;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 VOTERS_ID                                          VARCHAR2(10)
 NAME                                      NOT NULL VARCHAR2(10)
 STATE                                              VARCHAR2(10)
 CITY                                               VARCHAR2(10)
 WARD_NO                                            NUMBER(5)
 GENDER                                             VARCHAR2(10)

 9...
  alter table voters add age number(10)check(age>=18);

  10..
  insert into voters values('E1211','aaa','gujarat','rajkot',111,'female',18);
 insert into voters values('E1212','bbb','gujarat','rajkot',222,'female',21);
 insert into voters values('E1213','ccc','gujarat','pune',333,'female',22);
 insert into voters values('E1214','ddd','gujarat','nagpur',444,'male',23);
 insert into voters values('E1215','eee','gujarat','rajkot',555,'male',19);


    11...
    
    

update voters set age=22 where age=18;




    12...
    
     alter table voters modify(state varchar2(20));

     update voters set city='pune',state='maharashtra',ward_no=16 where voters_id='E1213';



        select * from voters;

VOTERS_ID  NAME       STATE                CITY          WARD_NO GENDER            AGE
---------- ---------- -------------------- ---------- ---------- ---------- ----------
E1211      aaa        gujarat              rajkot            111 female             22
E1212      bbb        gujarat              rajkot            222 female             19
E1213      ccc        maharashtra          pune               16 female             22
E1214      ddd        gujarat              nagpur            444 male               23
E1215      eee        gujarat              rajkot            555 male               20




13...

alter table voters drop constraint chk_voters_id;







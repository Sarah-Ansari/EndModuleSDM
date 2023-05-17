create table project(
pid int primary key,
pname varchar(20),
p_duration int,
p_status varchar(20)
);

create table dept(
id int primary key,
ename varchar(20)
);

create table manager(
mid int primary key,
mname varchar(20),
mmail varchar(20),
m_projectid int,
deptid int,
m_contact int,
constraint fk_id11 foreign key (e_projectid) references project (pid),
constraint fk_id3 foreign key (deptid) references dept (id)
);

create table project(
eid int primary key,
ename varchar(20),
email varchar(20),
e_projectid int,
mgr_id int,
deptid int,
pid int,
e_contact int,
constraint fk_id11 foreign key (e_projectid) references project (pid),
constraint fk_id2 foreign key (mgr_id) references manager (mid),
constraint fk_id3 foreign key (deptid) references dept (id)
);

create table Dmanager(
mid int primary key,
mname varchar(20),
mmail varchar(20),
m_projectid int,
deptid int,
m_contact int,
constraint fk_id11 foreign key (e_projectid) references project (pid),
constraint fk_id3 foreign key (deptid) references dept (id)
);

create table stakeholder(
id int primary key,
name varchar(20),
mail varchar(20),
m_projectid int,
constraint fk_id11 foreign key (e_projectid) references project (pid)

);




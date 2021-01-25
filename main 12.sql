
use expt12;
Create Table Sailors
(sid int primary key,
 sname varchar(25),
 rating float,
 age int);
 Create Table Boats
 (bid int primary key,
  bname varchar(20),
  color char(10));
  Create Table Reserves
  (sid int,
   bid int,
   day date,
   foreign key (sid) references Sailors(sid), 
   foreign key (bid) references Boats(bid), 
   primary key (sid, bid));
INSERT INTO Sailors values
(22,'dustin',37,45),
(31,'lubber',38,55.5),
(58,'bob',39,35);
INSERT INTO Boats values
(101,'glory','yellow'),
(103,'rose','red'),
(102,'giant','blue');
INSERT INTO Reserves values
(22,101,'1990/03/10'),
(58,103,'1989/12/11'),
(22,102,'1999/05/29'); 
#1
Select a.sid, a.sname, a.rating, a.age From Sailors AS a
INNER JOIN Reserves AS c ON a.sid=c.sid AND c.bid=101;
#2
Select b.bname From Reserves AS c
INNER JOIN Sailors AS a ON a.sid AND a.sname="bob"
INNER JOIN Boats AS b ON b.bid=c.sid;
#3
Select a.sname From Sailors AS a
INNER JOIN Reserves AS c ON a.sid=c.sid
INNER JOIN Boats AS b ON b.bid=c.bid AND b.color="red"
ORDER BY a.age;
#4
Select DISTINCT a.sname From Sailors AS a
INNER JOIN Reserves AS c ON a.sid IN (c.sid);
#5
Select a.sid ,a.sname From Reserves AS c
INNER JOIN Reserves AS d ON c.sid <> d.sid AND c.day=c.day
INNER JOIN Sailors AS a ON d.sid=a.sid;
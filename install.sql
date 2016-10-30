create database purgePlus;

create user 'purgeu'@'localhost' identified by 'purgepass';

grant all privileges on purgePlus.* to 'purgeu'@'%';


/* pruges
*  used to purge files older than retention number of days
*/
create table purges (
  id int not null auto_increment primary key,
  dir varchar(4000),
  systemId int not null,
  retentionDays int,
  enabled bit,
  dateLastMaintained datetime
);
/* data */
insert into purges values(1,'/var/log/purgeTest/',1,2,1,now());

/* purgeFiles
* iles and/or wildcard extentions assigned to a purge
*  fileName can be wildcard extentions e.g. "*.log","*.txt"
*/
create table purgeFiles (
  purgeId int not null,
  purgeFileId int not null,
  fileName varchar(2000)
);

/* data */
insert into purgeFiles values (1,1,'test1.log');
insert into purgeFiles values (1,2,'test2.log');
insert into purgeFiles values (1,4,'test4.log');
insert into purgeFiles values (1,5,'*.txt');


/* purgeExceptions
* fileNames to be ecplicitly retained, takes precedence over wildcard and named purge.
* Cannot use wild cards in exceptions
*/
create table purgeExceptions (
  purgeId int not null,
  purgeExceptionId int not null,
  fileName varchar(2000)
);

/* data */
insert into purgeExceptions values (1,1,'test3.txt');
insert into purgeExceptions values (1,2,'test5.txt');



/* systems
*  defines OS that can be managed
*  linux, windows out of the box. Others can be developed the service/daemon code
*  will need the system.id in the bash/c# code so linux will filter 1 and windows 2
*  another system in the future OS X/Solaris could be 3
*/
create table systems (
  id int not null auto_increment primary key,
  systemName varchar(30)
);

/* data */
insert into systems values (1,'linux');
insert into systems values (2,'windows');

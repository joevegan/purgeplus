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
)

/* purgeFiles
* iles and/or wildcard extentions assigned to a purge
*  fileName can be wildcard extentions e.g. "*.log","*.txt"
*/
create table purgeFiles (
  purgeId int not null,
  purgeFileId int not null,
  fileName varchar(2000)

)

/* purgeExceptions
* fileNames to be ecplicitly retained, takes precedence over wildcard and named purge.
* Cannot use wild cards in exceptions
*/
create table purgeExceptions (
  purgeId int not null,
  purgeExceptionId int not null,
  fileName varchar(2000)
)

/* systems
*  defines OS that can be managed
*  linux, windows out of the box. Others can be developed the service/daemon code
*  will need the system.id in the bash/c# code so linux will filter 1 and windows 2
*  another system in the future OS X/Solaris could be 3
*/
create table systems (
  id int not null auto_increment primary key,
  systemName varchar(30)
)

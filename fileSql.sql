
create table users (
  id bigint generated by default as identity primary key,
  name varchar(20) not null  default 'guest',
  username varchar(20),
  email varchar(30),
  bio text,
  id_auth uuid not null,
  FOREIGN KEY (id_auth) REFERENCES auth.users(id)
);

----------

create table contact (
  id bigint generated by default as identity primary key,
  platform varchar(20) not null  default 'guest',
  value varchar(20),
  id_user bigint not null,
  FOREIGN KEY (id_user) REFERENCES users(id)
);

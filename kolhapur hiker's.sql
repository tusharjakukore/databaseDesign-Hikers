create database kolhapur;
use kolhapur;

Create table user( 
u_id int primary key auto_increment,
first_name varchar(100)not null, 
last_name varchar(100) not null,
email_id varchar(100) not null,
contact int not null unique,
address varchar(100)not null,
u_password varchar(100) not null
);


desc trek;

Create table trek( 
t_id int primary key auto_increment,
t_name varchar(100)not null, 
location varchar(100) not null,
duration varchar(100) not null,
price int not null ,
t_discription varchar(100)not null,
u_id int ,foreign key(u_id) references user(u_id)
);

Create table specification( 
s_id int primary key auto_increment,
t_history varchar(100)not null, 
level_type varchar(100) not null,
t_id int ,foreign key(t_id) references trek(t_id)
);

Create table t_schedule( 
s_id int primary key auto_increment,
start_point varchar(100)not null, 
end_point varchar(100) not null,
availablity varchar(100) not null,
no_of_seat int not null ,
s_date varchar(100)not null,
u_id int ,foreign key(u_id) references user(u_id),
t_id int ,foreign key(t_id) references trek(t_id)
);

Create table feedback( 
f_id int primary key auto_increment,
f_name varchar(100)not null, 
message varchar(100) not null,
contact int unique not null ,
f_date varchar(100)not null,
u_id int ,foreign key(u_id) references user(u_id),
t_id int ,foreign key(t_id) references trek(t_id)
);


Create table report( 
r_id int primary key auto_increment,
u_id int ,foreign key(u_id) references user(u_id),
t_id int ,foreign key(t_id) references trek(t_id),
s_id int ,foreign key(s_id) references t_schedule(s_id),
p_id int ,foreign key(p_id) references payment(p_id),
f_id int ,foreign key(f_id) references feedback(f_id)
);


Create table payment( 
p_id int primary key auto_increment,
card_holder_name varchar(100)not null, 
card_no int unique not null,
cvv int unique not null ,
expiry_date varchar(100)not null,
p_date varchar(100)not null,
u_id int ,foreign key(u_id) references user(u_id),
t_id int ,foreign key(t_id) references trek(t_id)
);




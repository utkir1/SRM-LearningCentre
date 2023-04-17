insert into
   centers ( name, address, open_date, close_date)
values
   ('Najot talim', 'Xadra', '01.05.2022', '30.10.2022');


insert into
    departments ( center_ref_id, dep_name, create_at)
  values
    ( 1, 'O''quv bo''limi',  '2023-04-17 17:25:27.175366+05'),
    ( 1, 'Buxgalteriya bo''limi',  '2023-04-17 17:27:27.175366+05');

insert into
    positions ( dep_ref_id, pos_name, salary)
  values
    ( 1, 'teacher', '500'),
    ( 2, 'accountant', '600'),
    ( 1, 'hr', '400'),
    ( 1, 'assistant', '200');

insert into
    positions ( dep_ref_id, pos_name)
  values
    ( 1, 'student'),
    ( 1, 'admin');

insert into
  directions ( dep_ref_id , dir_name, duration, salary, start_date, end_date)
  values
    (1, 'NodeJS', '9', '700000', '01.12.2021', '23.05.2023' ),
    (1, 'VueJS', '5', '700000', '01.01.2023', '23.06.2023' ),
    (1, 'ReactJS', '6', '700000', '03.03.2021', '23.09.2023' );


insert into
  groups ( dir_ref_id, gr_number,begin_date)
  values
    (1, '45','01.12.2021' ),
    (2, '36', '01.01.2023' ),
    (3, '85',  '03.03.2021' );

insert into
  users ( pos_ref_id , first_name, last_name, gender, contact, email, come_date )
  values
    (6, 'Ali', 'Valiyev', 1, '907060332', 'otkirsoatboyev1@gmail.com', '01.11.2022' ),
    (1, 'Shoxrux', 'Arslonov', 1, '914526598', 'sadfsdf@gmail.com', '01.05.2021' ),
    (2, 'Ikrom', 'Xojayev', 1, '997854512', 'ikromjsjdks@gmail.com', '11.10.2020' ),
    (5, 'Dilshod', 'Rahimboev', 1, '880457845', 'dilshodrr11@gmail.com', '01.03.2023' );

insert into
  checks ( gr_ref_id, user_ref_id , not_in_class, add_date)
  values
    (1, 4, '[ ]', '16.04.2023'),
    (1, 4, '[12,  ]', '20.04.2023');


insert into
  incomes ( user_ref_id , reason, amount, inc_time)
  values
    ( 4, 'oylik to''lov', 700000, '18.04.2023'),
    ( 4, 'oylik to''lov', 700000, '18.03.2023');

insert into
  outlay ( reason, amount, out_time)
  values
    ( 'o''qituvchilar maoshi', 15000000, '18.04.2023'),
    ( 'kommunal', 1200000, '18.03.2023');
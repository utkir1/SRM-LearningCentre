CREATE database srm_exam;

\c srm_exam;

create extension pgcrypto;


CREATE TABLE "centers"(
    "cen_id" serial NOT NULL PRIMARY KEY,
    "name" VARCHAR(50) NOT NULL UNIQUE,
    "address" VARCHAR(128) NOT NULL,
    "open_date" DATE NOT NULL,
    "close_date" DATE NOT NULL
);


CREATE TABLE "departments"(
    "dep_id" serial NOT NULL PRIMARY KEY,
    "center_ref_id" BIGINT NOT NULL,
    "dep_name" VARCHAR(60) NOT NULL,
    "create_at" DATE NOT NULL DEFAULT current_timestamp,
    "delete_at" DATE NULL
);


CREATE TABLE "positions"(
    "pos_id" serial NOT NULL PRIMARY KEY,
    "dep_ref_id" BIGINT NOT NULL,
    "pos_name" VARCHAR(25) NOT NULL,
    "salary" VARCHAR(32) NULL
);


CREATE TABLE "directions"(
    "dir_id" serial NOT NULL PRIMARY KEY,
    "dep_ref_id" BIGINT NOT NULL,
    "dir_name" VARCHAR(30) NOT NULL,
    "duration" VARCHAR(20) NOT NULL,
    "salary" VARCHAR(32) NOT NULL,
    "start_date" DATE NOT NULL DEFAULT current_timestamp,
    "end_date" DATE  NULL
);

CREATE TABLE "groups"(
    "gr_id" serial NOT NULL PRIMARY KEY,
    "dir_ref_id" BIGINT NOT NULL,
    "gr_number" VARCHAR(20) NOT NULL,
    "begin_date" DATE NULL DEFAULT current_timestamp,
    "end_date" DATE NULL
);

CREATE TABLE "users"(
    "user_id" serial NOT NULL PRIMARY KEY,
    "pos_ref_id" BIGINT NOT NULL,
    "first_name" VARCHAR(20) NOT NULL,
    "last_name" VARCHAR(20) NOT NULL,
    "gender" INTEGER NOT NULL,
    "contact" VARCHAR(15) NOT NULL UNIQUE,
    "email" VARCHAR(64) NOT NULL,
    "come_date" DATE NOT NULL DEFAULT current_timestamp,
    "left_date" DATE NULL,
    "group_ref_id" BIGINT NULL
);

CREATE TABLE "checks"(
    "check_id" serial NOT NULL PRIMARY KEY,
    "gr_ref_id" BIGINT NOT NULL,
    "user_ref_id" BIGINT NOT NULL,
    "not_in_class" TEXT NOT NULL DEFAULT '[ ]',
    "add_date" DATE NOT NULL DEFAULT current_timestamp
);


CREATE TABLE "incomes"(
    "incom_id" serial NOT NULL PRIMARY KEY,
    "user_ref_id" BIGINT NOT NULL,
    "reason" VARCHAR(255) NOT NULL,
    "amount" BIGINT NOT NULL,
    "inc_time" DATE NOT NULL
);


CREATE TABLE "outlay"(
    "outlay_id" serial NOT NULL PRIMARY KEY,
    "reason" VARCHAR(255) NOT NULL,
    "amount" BIGINT NOT NULL,
    "out_time" DATE NOT NULL
);





ALTER TABLE
    "departments" ADD CONSTRAINT "departments_center_ref_id_foreign" FOREIGN KEY("center_ref_id") REFERENCES "centers"("cen_id");
ALTER TABLE
    "groups" ADD CONSTRAINT "groups_dir_ref_id_foreign" FOREIGN KEY("dir_ref_id") REFERENCES "directions"("dir_id");
ALTER TABLE
    "positions" ADD CONSTRAINT "positions_dep_ref_id_foreign" FOREIGN KEY("dep_ref_id") REFERENCES "departments"("dep_id");
ALTER TABLE
    "checks" ADD CONSTRAINT "checks_user_ref_id_foreign" FOREIGN KEY("user_ref_id") REFERENCES "users"("user_id");
ALTER TABLE
    "users" ADD CONSTRAINT "users_group_ref_id_foreign" FOREIGN KEY("group_ref_id") REFERENCES "groups"("gr_id");
ALTER TABLE
    "users" ADD CONSTRAINT "users_pos_ref_id_foreign" FOREIGN KEY("pos_ref_id") REFERENCES "positions"("pos_id");
ALTER TABLE
    "checks" ADD CONSTRAINT "checks_gr_ref_id_foreign" FOREIGN KEY("gr_ref_id") REFERENCES "groups"("gr_id");
ALTER TABLE
    "directions" ADD CONSTRAINT "directions_dep_ref_id_foreign" FOREIGN KEY("dep_ref_id") REFERENCES "departments"("dep_id");
ALTER TABLE
    "incomes" ADD CONSTRAINT "incomes_user_ref_id_foreign" FOREIGN KEY("user_ref_id") REFERENCES "users"("user_id");
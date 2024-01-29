DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS alerts;
DROP TABLE IF EXISTS devices;
DROP TABLE IF EXISTS detectors;
DROP TABLE IF EXISTS actuators;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user TEXT NOT NULL,
    pass TEXT NOT NULL
);


CREATE TABLE devices (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);


CREATE TABLE detectors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    FOREIGN KEY (id) REFERENCES devices(id)
);

CREATE TABLE actuators (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    FOREIGN KEY (id) REFERENCES devices(id)
);


CREATE TABLE alerts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    source INTEGER,
    status BOOLEAN,
    time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (source) REFERENCES devices(id)
);


INSERT INTO users (user, pass) VALUES ('admin', 'password');


INSERT INTO devices (name) VALUES ('detector1');
INSERT INTO devices (name) VALUES ('actuator2');


INSERT INTO detectors (id) VALUES (1);
INSERT INTO actuators (id) VALUES (2);



insert into alerts (source, status, time) values (1, false, '2024-01-29 11:06:01');
insert into alerts (source, status, time) values (1, false, '2023-06-05 08:06:01');
insert into alerts (source, status, time) values (1, false, '2023-12-30 01:52:34');
insert into alerts (source, status, time) values (1, false, '2023-06-12 13:51:22');
insert into alerts (source, status, time) values (1, true, '2023-06-04 01:13:22');
insert into alerts (source, status, time) values (1, true, '2023-08-21 00:32:14');
insert into alerts (source, status, time) values (1, false, '2023-05-19 00:05:06');
insert into alerts (source, status, time) values (1, false, '2023-11-12 00:59:38');
insert into alerts (source, status, time) values (1, true, '2023-09-23 10:45:31');
insert into alerts (source, status, time) values (1, true, '2023-11-14 07:55:01');
insert into alerts (source, status, time) values (1, true, '2023-04-26 13:45:30');
insert into alerts (source, status, time) values (1, true, '2023-11-10 16:23:37');
insert into alerts (source, status, time) values (1, false, '2023-05-10 07:00:57');
insert into alerts (source, status, time) values (1, false, '2023-03-22 05:03:38');
insert into alerts (source, status, time) values (1, true, '2023-12-15 00:16:17');
insert into alerts (source, status, time) values (1, true, '2023-04-30 19:52:54');
insert into alerts (source, status, time) values (1, false, '2023-11-11 15:38:04');
insert into alerts (source, status, time) values (1, true, '2023-12-15 13:49:37');
insert into alerts (source, status, time) values (1, false, '2023-06-26 15:20:17');
insert into alerts (source, status, time) values (1, false, '2023-07-06 15:16:54');
insert into alerts (source, status, time) values (1, false, '2023-03-15 07:33:56');
insert into alerts (source, status, time) values (1, true, '2023-05-14 07:06:27');
insert into alerts (source, status, time) values (1, true, '2024-01-05 03:18:25');
insert into alerts (source, status, time) values (1, true, '2023-03-22 16:09:34');
insert into alerts (source, status, time) values (1, false, '2023-02-03 22:13:23');
insert into alerts (source, status, time) values (1, false, '2023-05-05 03:52:32');
insert into alerts (source, status, time) values (1, false, '2023-12-17 07:54:31');
insert into alerts (source, status, time) values (1, true, '2023-02-20 04:36:10');
insert into alerts (source, status, time) values (1, true, '2023-07-23 05:05:18');
insert into alerts (source, status, time) values (1, true, '2023-04-15 07:43:50');
insert into alerts (source, status, time) values (1, true, '2023-08-08 06:17:56');
insert into alerts (source, status, time) values (1, false, '2023-11-21 02:44:56');
insert into alerts (source, status, time) values (1, true, '2023-12-14 16:45:10');
insert into alerts (source, status, time) values (1, false, '2023-07-11 21:44:36');
insert into alerts (source, status, time) values (1, false, '2023-09-05 08:24:53');
insert into alerts (source, status, time) values (1, true, '2023-04-30 02:55:25');
insert into alerts (source, status, time) values (1, true, '2023-05-22 18:05:33');
insert into alerts (source, status, time) values (1, false, '2023-10-27 01:58:51');
insert into alerts (source, status, time) values (1, false, '2023-10-05 01:03:49');
insert into alerts (source, status, time) values (1, false, '2023-08-13 00:21:02');
insert into alerts (source, status, time) values (1, true, '2023-08-17 13:56:13');
insert into alerts (source, status, time) values (1, true, '2023-10-12 12:04:21');
insert into alerts (source, status, time) values (1, true, '2023-07-18 14:52:56');
insert into alerts (source, status, time) values (1, true, '2023-10-14 23:03:15');
insert into alerts (source, status, time) values (1, true, '2023-08-19 16:00:10');
insert into alerts (source, status, time) values (1, true, '2023-03-13 19:40:03');
insert into alerts (source, status, time) values (1, true, '2023-10-04 20:15:39');
insert into alerts (source, status, time) values (1, true, '2024-01-18 21:22:41');
insert into alerts (source, status, time) values (1, true, '2023-02-26 11:20:37');
insert into alerts (source, status, time) values (1, true, '2023-02-09 19:44:14');
insert into alerts (source, status, time) values (1, false, '2024-01-08 01:28:04');






CREATE database catalog_of_things;

CREATE table lable(
    id serial generated primary key,
    title varchar(255) not null,
    color varchar(255) not null,
);

CREATE table book (
    id serial generated primary key,
    lable_id int not null,
    publisher varchar(255) not null,
    publish_date date not null,
    archived boolean not null,
    foreign key (lable_id) references lable(id)
);

CREATE table games (
    id serial generated primary key,
    item_id int not null,
    multiplayer boolean not null,
    last_played_at date not null,
    foreign key (item_id) references items(id)
);

CREATE table authors(
    id serial generated primary key,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
);


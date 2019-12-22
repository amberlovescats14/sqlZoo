show databases ;

create database if not exists w3schools;
use w3schools;

create table if not exists countries(
    country_id int unsigned auto_increment,
    region_id int unsigned default null,
    country_name varchar(50) not null,
    primary key (country_id)
);

describe countries;

create table if not exists dup_countries(
    country_id int unsigned,
    foreign key (country_id) references countries(country_id),
    region_id int unsigned,
    foreign key (region_id) references countries(region_id),
    dupcountry_id int unsigned auto_increment,
    primary key (dupcountry_id),
    dupcountry_name varchar(50) not null
);

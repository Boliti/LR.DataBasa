
CREATE DATABASE 'CINEMAS';
USE 'CINEMAS';
/*Кинотеатры: идентификтор, название, адрес, количество мест*/
CREATE TABLE Cinemas (
  idCIN INT PRIMARY KEY,
  titleCIN VARCHAR(25),
  address VARCHAR(25),
  number_of_places INT
);
/* Фильмы: идентификатор, название, год выпуска, киностудия, длительность, страна */
CREATE TABLE Films (
  idFIL INT PRIMARY KEY,
  titleFIL VARCHAR(25),
  release_year INT,
  film_studio VARCHAR(25),
  duration TIME,
  country VARCHAR(25)
);
/* афиша: идентификатор, фильм, дата начала проката, дата окончания проката, кинотеатр, 
количество сеансов в день, стоимость просмотра (1 зритель) */
CREATE TABLE Poster (
  idPOS INT PRIMARY KEY,
  film INT,
  startDate DATE,
  endDate DATE,
  cinema INT,
  number_of_sessions INT,
  cost DECIMAL(10,2),
  FOREIGN KEY (films) REFERENCES Films(idFIL),
  FOREIGN KEY (cinema) REFERENCES Cinemas(idCIN)
);
/* Зрители (билеты): идентификатор, номер афиши, день посещения, количество билетов. */
CREATE TABLE Audience (
  idAUD INT PRIMARY KEY,
  poster_number INT,
  visiting_day DATE,
  number_of_tickets INT,
  FOREIGN KEY (poster_number) REFERENCES Poster(idPOS)
);
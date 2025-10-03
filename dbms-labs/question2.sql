--Create Following tables and insert tuples with suitable constraints 
--Table: Books 
--Book_I
-- d Book_name Author_Name Publishers Price Type Quantity 
--C0001 The Klone and I Lata Kappor EPP 355 Novel 5 
--F0001 The Tears William Hopkins First Publ 650 Fiction 20 
--T0001 My First C++ Brain & Brooke ERP 350 Text 10 
--T0002 C++ Brainworks A.W.Rossaine TDH 350 Text 15 
--F0002 Thunderbolts Ana Roberts First Publ. 750 Fiction 50 
create table books (
    "BookID" varchar,
    "Book_name" varchar,
    "Author_Name" varchar,
    "Publishers" varchar,
    "Price" numeric,
    "Type" varchar,
    "Quantity" numeric
);
insert into books
values (
        'C0001',
        'The Klone and I',
        'Lata Kappor',
        'EPP',
        '355',
        'Novel',
        '5'
    ),
    (
        'F0001',
        'The Tears',
        'William Hopkins',
        'First Publ',
        '650',
        'Fiction',
        '20'
    ),
    (
        'T0001',
        'My First C++',
        'Brain & Brooke',
        'ERP',
        '350',
        'Text',
        '10'
    ),
    (
        'T0002',
        'C++ Brainworks',
        'A.W.Rossaine',
        'TDH',
        '350',
        'Text',
        '15'
    ),
    (
        'F0002',
        'Thunderbolts',
        'Ana Roberts',
        'First Publ.',
        '750',
        'Fiction',
        '50'
    );
select *
from books;
--Table :  Issued 
--Book_Id Quantity_Issued 
--T0001 4 
--C0001 5 
--F0001 2 
--T0002 5 
--F0002 8 
create table issued ("BookID" varchar, "QuantityIssued" numeric);
insert into issued
values ('T0001', '4'),
    ('C0001', '5'),
    ('F0001', '2'),
    ('T0002', '5'),
    ('F0002', '8');
select *
from issued;
--Write queries for the following 
--1. To show Book name, Author name and price of books of First Publ. publisher
select "Book_name",
    "Author_Name",
    "Price"
from books
where "Publishers" = 'First Publ.';
-- 2. Display  Book id, Book name and publisher of books having quantity more than 8 and price less than
-- 500 
select "BookID",
    "Book_name",
    "Publishers"
from books b
where "Quantity" > 8
    and "Price" < 500;
--3. Select Book id, book name, author name of books which is published by other than ERP publishers
-- and price between 300 to 700 
select "BookID",
    "Book_name",
    "Author_Name"
from books b
where "Publishers" <> 'ERP'
    and "Price" between 300 and 700;
--4. Generate a Bill with Book_id, Book_name, Publisher, Price, Quantity, 4% of VAT ―Total‖
select "BookID",
    "Book_name",
    "Publishers",
    "Price",
    "Quantity",
    "Price" * "Quantity" * 1.04 as total
from books b;
-- 5. Display book details with book id‘s C0001, F0001, T0002, F0002 (Hint: use IN operator)
select *
from books b
where "BookID" in ('C0001', 'F0001', 'T0002', 'F0002');
-- 6. Display Book list other than, type Novel and Fiction
select *
from books b
where "Type" not in ('Novel', 'Fiction');
-- 7. Display book details with author name starts with letter ‗A‘
select *
from books b
where "Author_Name" like 'A%';
-- 8. Display book details with author name starts with letter ‗T‘ and ends with ‗S‘
select *
from books b
where "Author_Name" like 'T%S';
-- 9. Select BookId, BookName, Author Name , Quantity Issued where Books.BooksId = Issued.BookId
select b."BookID",
    "Book_name",
    "Author_Name",
    i."QuantityIssued"
from books b,
    issued i
where b."BookID" = i."BookID";
-- 10.List the book_name,  Author_name, Price. In ascending order of Book_name and then on descending
-- order of pric
select "Book_name",
    "Author_Name",
    "Price"
from books b
order by "Book_name",
    "Price" desc;
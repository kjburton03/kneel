CREATE TABLE `Metals`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `metal` NVARCHAR(160) NOT NULL,
    `price` NUMERIC(5,2) NOT NULL
);

CREATE TABLE `Sizes`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
    `size` NUMERIC(5,2) NOT NULL,
    `price` NUMERIC(5,2) NOT NULL
);

CREATE TABLE `Styles`
( 
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `style` NVARCHAR(160) NOT NULL,
    `price` NUMERIC(5,2) NOT NULL
);

INSERT INTO 'Metals' VALUES (null, "iron", 799);
INSERT INTO 'Metals' VALUES (null, "copper", 1738);
INSERT INTO 'Metals' VALUES (null, "steel", 367);

INSERT INTO 'Sizes' VALUES (null, 6, 390);
INSERT INTO 'Sizes' VALUES (null, 8, 420);
INSERT INTO 'Sizes' VALUES (null, 2, 432);

INSERT INTO 'Styles' VALUES (null, "emo-goth", 313);
INSERT INTO 'Styles' VALUES (null, "daddys girl", 999);
INSERT INTO 'Styles' VALUES (null, "crunchy life", 113);
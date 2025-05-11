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
    `price` NUMERIC(5,2) NOT NULL,
    `metals_id` INTEGER NOT NULL,
    FOREIGN KEY(`metals_id`) REFERENCES `Metals`(`id`)

);

CREATE TABLE `Styles`
( 
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `style` NVARCHAR(160) NOT NULL,
    `price` NUMERIC(5,2) NOT NULL, 
    `sizes_id` INTEGER NOT NULL,
    FOREIGN KEY(`sizes_id`) REFERENCES `Sizes`(`id`)
);

CREATE TABLE `Orders`
(
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `metals_id` INTEGER NOT NULL,
    `sizes_id` INTEGER NOT NULL,
    `styles_id` INTEGER NOT NULL,
    FOREIGN KEY(`metal_id`) REFERENCES `Metals`(`id`),
    FOREIGN KEY(`sizes_id`) REFERENCES `Sizes` (`id`),
    FOREIGN KEY(`styles_id`) REFERENCES `styles` (`id`)
);

INSERT INTO 'Metals' VALUES (null, "iron", 799);
INSERT INTO 'Metals' VALUES (null, "copper", 1738);
INSERT INTO 'Metals' VALUES (null, "steel", 367);

INSERT INTO 'Sizes' VALUES (null, 2, 432, 3);
INSERT INTO 'Sizes' VALUES (null, 3, 390, 2);
INSERT INTO 'Sizes' VALUES (null, 4, 190, 2);
INSERT INTO 'Sizes' VALUES (null, 5, 690, 1);
INSERT INTO 'Sizes' VALUES (null, 6, 490, 2);
INSERT INTO 'Sizes' VALUES (null, 7, 590, 3);
INSERT INTO 'Sizes' VALUES (null, 8, 420, 1);



INSERT INTO 'Styles' VALUES (null, "emo-goth", 313);
INSERT INTO 'Styles' VALUES (null, "daddys girl", 999);
INSERT INTO 'Styles' VALUES (null, "crunchy life", 113);

INSERT INTO 'Orders' VALUES (null, 1, 2, 3);
INSERT INTO 'Orders' VALUES (null, 2, 5, 1);
INSERT INTO 'Orders' VALUES (null, 2, 3, 2);
INSERT INTO 'Orders' VALUES (null, 3, 1, 2);
INSERT INTO 'Orders' VALUES (null, 1, 4, 1);
INSERT INTO 'Orders' VALUES (null, 3, 8, 3);
INSERT INTO 'Orders' VALUES (null, 2, 7, 3);
INSERT INTO 'Orders' VALUES (null, 1, 6, 1);

get_all_orders()

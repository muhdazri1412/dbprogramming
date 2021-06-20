CREATE TABLE Customer
(
	Cust_Id int(4),
	Cust_Name varchar(30) NOT NULL,
	Cust_phoneNum int(10) NOT NULL,
	Cust_Email varchar(30),
	Cust_address varchar(30),
	CONSTRAINT Cust_Id_pk PRIMARY KEY(Cust_Id)
);

CREATE TABLE Brand
(
	Brand_Id int(4),
	Brand_Name varchar(50) NOT NULL,
	Brand_Maker varchar(50) NOT NULL,
	Brand_Origin varchar(50) NOT NULL,
	CONSTRAINT brand_brand_id_pk PRIMARY KEY(Brand_Id)
);

CREATE TABLE Item
(
	item_Id int(4),
	Brand_Id int(4),
	Item_Name varchar(50) NOT NULL,
	Item_Price int(6) NOT NULL,
	Item_RelDate date NOT NULL,
	Item_Desc varchar(50) NOT NULL,
	CONSTRAINT item_item_id_pk PRIMARY KEY(Item_Id),
	CONSTRAINT item_brand_id_fk FOREIGN KEY(Brand_Id) REFERENCES Brand(Brand_Id) ON DELETE CASCADE
);

CREATE TABLE Purchase
(
	Pur_Id int(4),
	Cust_Id int(4),
	Item_Id int(4),
	Pur_Quantity int(4) NOT NULL,
	Pur_DatePurchase date NOT NULL,
	Pur_Total int(6) NOT NULL,
	CONSTRAINT purchase_pur_id_pk PRIMARY KEY(Pur_Id),
	CONSTRAINT purchase_cust_id_fk FOREIGN KEY(Cust_Id) REFERENCES Customer(Cust_Id) ON DELETE CASCADE,
	CONSTRAINT purchase_item_Id_fk FOREIGN KEY(Item_Id) REFERENCES Item(Item_Id) ON DELETE CASCADE
);


INSERT INTO Customer
VALUES(101, 'Amir', 0111238851, 'amir12@gmail.com','taman perdana,johor' );
INSERT INTO Customer
VALUES(102, 'Jack', 0123095312,'jack43@gmail.com','taman megah,melaka');
INSERT INTO Customer
VALUES(103, 'Kim', 0198765432, 'kim44@gmail.com','kampung langit,kelantan' );
INSERT INTO Customer
VALUES(104, 'Peter', 0160923412, 'peter78@gmail.com','ecosky,selangor' );
INSERT INTO Customer
VALUES(105, 'Tony', 0123406912, 'tonystark@gmail.com','taman semarak,sabah' );
INSERT INTO Customer
VALUES(106, 'Steve', 0190912841, 'stevejobs@gmail.com','taman sejahtera,sarawak' );
INSERT INTO Customer
VALUES(107, 'Syamil', 0111231234, 'syamil56@gmail.com','kampung mukmin,kedah' );
INSERT INTO Customer
VALUES(108, 'Jane', 0151409812, 'jane78@gmail.com','promenade,johor');
INSERT INTO Customer
VALUES(109, 'Danny', 0112359127, 'dannyphantom@gmail.com','taman megah');
INSERT INTO Customer
VALUES(110, 'Farah', 0167892343, 'farah48@gmail.com','taman perdana,melaka');


INSERT INTO Brand
VALUES(401, 'ASUS', 'Pegasus', 'Taiwan');
INSERT INTO Brand
VALUES(402, 'MSI', 'MicroStar', 'Taiwan');
INSERT INTO Brand
VALUES(403, 'CORSAIR', 'CorMicro', 'America');
INSERT INTO Brand
VALUES(404, 'G.SKILL', 'G.Skill', 'Taiwan');
INSERT INTO Brand
VALUES(405, 'KINGSTON', 'Kingston Technology Corporation', 'America');
INSERT INTO Brand
VALUES(406, 'AMD', 'AMD', 'America');
INSERT INTO Brand
VALUES(407, 'INTEL', 'Intel', 'America');
INSERT INTO Brand
VALUES(408, 'NVIDIA', 'Nvidia', 'America');
INSERT INTO Brand
VALUES(409, 'SEAGATE', 'Seagate', 'America');
INSERT INTO brand
VALUES(410, 'Acer', 'Acer', 'Taiwan');


INSERT INTO Item
VALUES(2001,401,'Asus ROG Maximus XII Hero',1898,'2020-05-27', 'Motherboard');
INSERT INTO Item
VALUES(2002,401,'ASUS ROG STRIX GeForce GTX 1080 Ti',830,'2018-09-27', 'Graphic Card');
INSERT INTO Item
VALUES(2003,401,'Asus Gaming Monitor 23.8 VG249Q',899,'2019-12-25', 'Monitor');
INSERT INTO Item
VALUES(2004,402,'MSI MEG Z490 Godlike',399,'2019-09-11', 'Motherboard');
INSERT INTO Item
VALUES(2005,402,'GeForce RTX™ 3090 GAMING X TRIO 24G',7899,'2020-09-03', 'Graphic Card');
INSERT INTO Item
VALUES(2006,403,'Corsair Vengeance LPX',220,'2017-09-21', 'Random Access Memory');
INSERT INTO Item
VALUES(2007,403,'CX Series™ CX650M',292,'2017-02-17', 'Power Supply');
INSERT INTO Item
VALUES(2008,404,'G-Skill Trident Z Rgb 16Gb',593,'2021-03-13', 'Random Access Memory');
INSERT INTO Item
VALUES(2009,405,'Kingston HyperX Predator 3600Mhz- 8GBx1',294,'2018-02-09', 'Graphic Card');
INSERT INTO Item
VALUES(2010,405,'A400 SATA SSD',113,'2018-01-11', 'Hard Disk');
INSERT INTO Item
VALUES(2011,406,'AMD Ryzen™ 9 5900X',2499,'2020-10-05', 'Processor');
INSERT INTO Item
VALUES(2012,406,'AMD Radeon™ RX 6900 XT Graphics',5699,'2020-12-08', 'Graphic Card');
INSERT INTO Item
VALUES(2013,407,'Intel® Core™ i9-11900KB Processor',1899,'2021-04-10', 'Processor');
INSERT INTO Item
VALUES(2014,407,'GIGABYTE H410M-S2 H410 LGA1200 +INL-|310100F',599,'2020-06-04', 'Motherboard');
INSERT INTO Item
VALUES(2015,408,'GEFORCE RTX 3060 Ti',2899,'2021-02-25', 'Graphic Card');
INSERT INTO Item
VALUES(2016,409,'Seagate Barracuda ST1000LM048 1TB',225,'2017-03-30', 'Hard Disk');
INSERT INTO Item
VALUES(2017,410,'Acer Nitro XV240YP',769,'2018-08-05', 'Monitor');


INSERT INTO Purchase
VALUES(3001, 102, 2003, 1, ('2021-01-10'), 899);
INSERT INTO Purchase
VALUES(3002, 102, 2004, 2, ('2021-01-10'), 798);
INSERT INTO Purchase
VALUES(3003,105, 2009, 1, ('2021-02-19'), 294);
INSERT INTO Purchase
VALUES(3004, 107, 2007, 3, ('2021-02-23'), 876);
INSERT INTO Purchase
VALUES(3005,101, 2009, 1, ('2021-02-25'), 294);
INSERT INTO Purchase
VALUES(3006, 102, 2001, 2, ('2021-03-04'), 3796);
INSERT INTO Purchase
VALUES(3007, 103, 2003, 1, ('2021-03-09'), 899);
INSERT INTO Purchase
VALUES(3008, 101, 2005, 1, ('2021-03-16'), 7899);
INSERT INTO Purchase
VALUES(3009, 105, 2010, 2, ('2021-03-24'), 226);
INSERT INTO Purchase
VALUES(3010, 109, 2008, 2, ('2021-04-01'), 1186);

--Function to calculate voucher according to total purchase of a certain customer
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `vouchCal`(totalPur int) RETURNS int(11)
BEGIN
		DECLARE voucher int;
    		SET voucher = 0;
    
		IF(totalPur BETWEEN 100 AND 500) THEN
    			SET voucher = 50;
    
    		ELSEIF(totalPur BETWEEN 501 AND 1000) THEN
    			SET voucher = 100;
        
    		ELSEIF(totalPur BETWEEN 1001 AND 2000) THEN
    			SET voucher = 150;
    
    		ELSEIF(totalPur BETWEEN 2001 AND 3000) THEN
  			SET voucher = 200;
   	
    		ELSEIF(totalPur > 3000) THEN
    			SET voucher = 250;
        
    		END IF;
  	
    	RETURN (voucher);
	END$$
DELIMITER ;

--Procedure to run the function

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_vouchCal`(custID int)
BEGIN
        	SELECT c.cust_id, c.cust_name, CONCAT('RM ',SUM(p.pur_total)) AS Total_Purchase, CONCAT('RM ', vouchCal(SUM(p.Pur_Total))) AS Eligible_Voucher
        	FROM customer c
            		INNER JOIN purchase p ON c.Cust_Id = p.Cust_Id
        	WHERE c.Cust_Id = custID;
	END$$
DELIMITER ;





--Function to calculate number of purchase by a certain customer

	DELIMITER $$
	CREATE FUNCTION calNumPurchase(custID int)
	RETURNS int
	BEGIN
		DECLARE numOfPurchase int;

		SELECT COUNT(pur_id) INTO numOfPurchase FROM purchase
		WHERE cust_id = custID;

		RETURN (numOfPurchase);
	END $$


--Procedure to run the function
	DELIMITER $$
	CREATE PROCEDURE proc_calNumPurchase()
	BEGIN
		DECLARE cname varchar(50);
    		DECLARE cid int;
    
   	 	SELECT cust_name, cust_id INTO cname, cid
    		FROM customer
    		WHERE cust_id = custID;
		SELECT CONCAT('Number of purchase by this customer is' calNumPurchase(custID)) AS '';
	END $$
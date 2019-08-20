INSERT INTO `bank`.`customer` (`C_ID`, `CNAME`, `MNO`, `ADDRESS`, `CITY`, `DOB`) VALUES ('C1', 'Ankur', '838289', 'Domlur', 'Bangalore', '11-Sep-1990');
INSERT INTO `bank`.`customer` (`C_ID`, `CNAME`, `MNO`, `ADDRESS`, `CITY`, `DOB`) VALUES ('C2', 'John', '89849', 'Vaishali', 'Jaiper', '10-Oct-1992');
INSERT INTO `bank`.`customer` (`C_ID`, `CNAME`, `MNO`, `ADDRESS`, `CITY`, `DOB`) VALUES ('C3', 'Raman', '888950', 'Marathali', 'bangalore', '15-Aug-1987');

UPDATE `bank`.`customer` SET `CITY` = 'Bangalore' WHERE (`C_ID` = 'C2');

DELETE FROM `bank`.`customer` WHERE (`C_ID` = 'C3');

CREATE TABLE `bank`.`account` (
  `ACCT_NO` VARCHAR(10) NOT NULL,
  `C_ID` VARCHAR(10) NULL,
  `TYPE` VARCHAR(10) NULL CHECK (`TYPE`="savings" OR `TYPE`="current"),
  `Balance` INT NULL,
  PRIMARY KEY (`ACCT_NO`),
  INDEX `ACCTC_ID_idx` (`C_ID` ASC) VISIBLE,
  CONSTRAINT `ACCTC_ID`
    FOREIGN KEY (`C_ID`)
    REFERENCES `bank`.`customer` (`C_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `bank`.`account` (`ACCT_NO`, `C_ID`, `TYPE`, `Balance`) VALUES ('CA1', 'C1', 'Savings', '50000');
INSERT INTO `bank`.`account` (`ACCT_NO`, `C_ID`, `TYPE`, `Balance`) VALUES ('CA2', 'C1', 'Savings', '10000');

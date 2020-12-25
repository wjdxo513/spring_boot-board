```
CREATE TABLE `tb_reply` (
  `idx` INT NOT NULL AUTO_INCREMENT,
  `board_idx` INT,
  `reply_idx` INT,
  `contents` TEXT NULL,
  PRIMARY KEY (`idx`));

CREATE TABLE `tb_board` (
  `idx` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NULL,
  `contents` TEXT NULL,
  `image` VARCHAR(255) NULL,
  PRIMARY KEY (`idx`));
  ```

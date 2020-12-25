# init_pjt
init_pjt

Spring Boot와 Mybatis MySQL로 만든 간단한 게시판입니다.
글 등록, 글 상세보기, 글 이미지 첨부, 계층형 댓글 기능이 삽입되어 있습니다.

초기 시작 URL은 http://localhost:8080/web/board 입니다.

테이블 Create 쿼리문

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

<img width="325" alt="이미지 38" src="https://user-images.githubusercontent.com/36690237/103128915-4d61c500-46da-11eb-8feb-a6a010c758cb.png">

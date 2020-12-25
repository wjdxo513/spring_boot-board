# 글 등록, 이미지 첨부, 계층형 댓글구조의 간단한 게시판

---

### 글 등록
![글 등록](https://user-images.githubusercontent.com/36690237/103134406-5fe8f800-46f4-11eb-8e32-f4a0b518b080.gif)


### 글 상세보기
![글 상세보기](https://user-images.githubusercontent.com/36690237/103134414-67a89c80-46f4-11eb-91f5-f9632963426c.gif)


### 댓글 달기
![댓글 달기](https://user-images.githubusercontent.com/36690237/103134388-36c86780-46f4-11eb-9d87-50e488064dfc.gif)


##테이블 create문
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

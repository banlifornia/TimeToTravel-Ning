CREATE TABLE `PRESS_LIKE` (
  `LIKE_NO` int NOT NULL AUTO_INCREMENT COMMENT '按讚流水號',
  `USER_ID` int NOT NULL COMMENT '會員編號',
  `POST_ID` int NOT NULL COMMENT '文章編號',
  PRIMARY KEY (`LIKE_NO`),
  KEY `PRESS_LIKE_FK_USER_ID` (`USER_ID`),
  KEY `PRESS_LIKE_FK_POST_ID` (`POST_ID`),
  CONSTRAINT `PRESS_LIKE_FK_POST_ID` FOREIGN KEY (`POST_ID`) REFERENCES `BLOG` (`POST_ID`),
  CONSTRAINT `PRESS_LIKE_FK_USER_ID` FOREIGN KEY (`USER_ID`) REFERENCES `MEMBER` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='按讚';
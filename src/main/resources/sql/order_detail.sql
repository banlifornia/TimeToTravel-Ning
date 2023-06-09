DROP TABLE order_detail;

CREATE TABLE order_detail
(
    ORDER_ID        INT        NOT NULL COMMENT '訂單編號' AUTO_INCREMENT,
    USER_ID         INT        NOT NULL COMMENT '消費者編號',
    ROOM_ID         INT        NOT NULL COMMENT '房型編號',
    JOURNEY_ID      INT        NOT NULL COMMENT '私房行程編號',
    ORDER_DATETIME  DATETIME   NOT NULL COMMENT '訂單建立日期' DEFAULT (NOW()),
    ORDER_AMOUNT    INT        NOT NULL COMMENT '訂單總金額',
    ORDER_CHECK_IN  DATE       NOT NULL COMMENT '訂單入住日期',
    ORDER_CHECK_OUT DATE       NOT NULL COMMENT '訂單退房日期',
    ORDER_RANK      INT        NOT NULL COMMENT '訂單評價星等' DEFAULT 0,
    ORDER_COMMENT   VARCHAR(50) COMMENT '訂單評語',
    PRIMARY KEY (ORDER_ID)
#     CONSTRAINT FK_ORDER_DETAIL_USER_ID FOREIGN KEY (USER_ID) REFERENCES USER (USER_ID),
#     CONSTRAINT FK_ORDER_DETAIL_ROOM_ID FOREIGN KEY (ROOM_ID) REFERENCES ROOM (ROOM_ID),
#     CONSTRAINT FK_ORDER_DETAIL_JOURNEY_ID FOREIGN KEY (JOURNEY_ID) REFERENCES JOURNEY (JOURNEY_ID)
) COMMENT '訂房訂單資料表';

INSERT INTO `order_detail` (`ORDER_ID`,`USER_ID`,`ROOM_ID`,`JOURNEY_ID`,`ORDER_DATETIME`,`ORDER_AMOUNT`,`ORDER_CHECK_IN`,`ORDER_CHECK_OUT`,`ORDER_RANK`,`ORDER_COMMENT`) VALUES (51,3,1,3,'2023-06-07 23:16:49',28000,'2023-06-01','2023-06-04',4,'住房體驗很不錯，下次還想再來');
INSERT INTO `order_detail` (`ORDER_ID`,`USER_ID`,`ROOM_ID`,`JOURNEY_ID`,`ORDER_DATETIME`,`ORDER_AMOUNT`,`ORDER_CHECK_IN`,`ORDER_CHECK_OUT`,`ORDER_RANK`,`ORDER_COMMENT`) VALUES (52,3,5,8,'2023-06-07 23:19:20',11350,'2023-06-07','2023-06-08',5,'風景非常漂亮，住過還想再來~');
INSERT INTO `order_detail` (`ORDER_ID`,`USER_ID`,`ROOM_ID`,`JOURNEY_ID`,`ORDER_DATETIME`,`ORDER_AMOUNT`,`ORDER_CHECK_IN`,`ORDER_CHECK_OUT`,`ORDER_RANK`,`ORDER_COMMENT`) VALUES (53,3,1,1,'2023-06-07 23:20:42',27900,'2023-06-01','2023-06-04',3,'搭配行程不好玩，建議其他人直接住房就好不要選行程');

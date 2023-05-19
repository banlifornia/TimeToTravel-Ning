CREATE TABLE ORDER_DETAIL
(
    ORDER_ID        INT         NOT NULL COMMENT '訂單編號' AUTO_INCREMENT,
    USER_ID         INT         NOT NULL COMMENT '消費者編號',
    ROOM_ID         INT         NOT NULL COMMENT '房型編號',
    JOURNEY_ID      INT         NOT NULL COMMENT '私房行程編號',
    ORDER_DATETIME  DATETIME    NOT NULL COMMENT '訂單建立日期' DEFAULT (NOW()),
    ORDER_AMOUNT    INT         NOT NULL COMMENT '訂單總金額',
    ORDER_CHECK_IN  DATE        NOT NULL COMMENT '訂單入住日期',
    ORDER_CHECK_OUT DATE        NOT NULL COMMENT '訂單退房日期',
    ORDER_RANK      TINYINT(5)  NOT NULL COMMENT '訂單評價星等',
    ORDER_COMMENT   VARCHAR(50) NOT NULL COMMENT '訂單評語',
    PRIMARY KEY (ORDER_ID)
#     CONSTRAINT FK_ORDER_DETAIL_USER_ID FOREIGN KEY (USER_ID) REFERENCES USER (USER_ID),
#     CONSTRAINT FK_ORDER_DETAIL_ROOM_ID FOREIGN KEY (ROOM_ID) REFERENCES ROOM (ROOM_ID),
#     CONSTRAINT FK_ORDER_DETAIL_JOURNEY_ID FOREIGN KEY (JOURNEY_ID) REFERENCES JOURNEY (JOURNEY_ID)
) COMMENT '訂房訂單資料表';
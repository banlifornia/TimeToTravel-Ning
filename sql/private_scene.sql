CREATE TABLE PRIVATE_SCENE
(
    PRIVATE_SCENE_ID   INT         NOT NULL COMMENT '私房景點編號' AUTO_INCREMENT,
    COM_ID             INT         NOT NULL COMMENT '商家編號',
    PRIVATE_SCENE_NAME VARCHAR(30) NOT NULL COMMENT '私房景點名稱',
    PRIVATE_SCENE_DESC VARCHAR(50) NOT NULL COMMENT '私房景點描述',
    PRIVATE_SCENE_PIC  LONGBLOB COMMENT '私房景點照片',
    PRIMARY KEY (PRIVATE_SCENE_ID)
#     CONSTRAINT FK_PRIVATE_SCENE_COM_ID FOREIGN KEY (COM_ID) REFERENCES COMPANY (COM_ID)
) COMMENT '私房景點資料表';
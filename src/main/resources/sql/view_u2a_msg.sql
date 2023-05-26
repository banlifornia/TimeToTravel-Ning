CREATE VIEW VIEW_U2A_MSG AS SELECT u2a.*, u.*, a.*
FROM USER_TO_ADMIN u2a left join USER u 
	on u2a.U2A_SENDER_ID = u.USER_ID
		left join ADMIN a on a.ADMIN_ID = u2a.U2A_RECEIVER_ID;
        
#DROP VIEW VIEW_U2A_MSG;
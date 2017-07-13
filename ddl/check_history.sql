DROP TABLE check_history;

CREATE TABLE check_history (
  check_year 				smallint(6) 	NOT NULL 								COMMENT '`FbNÎÛN'
  , check_month				tinyint(4) 		NOT NULL 								COMMENT '`FbNÎÛ'
  , check_day				tinyint(4) 		NOT NULL 								COMMENT '`FbNÎÛú'
  , chack_date_seq			varchar(12) 	NOT NULL 								COMMENT '`FbNÎÛúAÔ'
  , entry_user_id			varchar(12) 	NULL DEFAULT NULL 						COMMENT 'üÙÒID'
  , entry_time 				time 			NULL DEFAULT NULL 						COMMENT 'üÙ'
  , exit_user_id 			varchar(12) 	NULL DEFAULT NULL 						COMMENT 'ÞÙÒ¼'
  , exit_time 				time 			NULL DEFAULT NULL 						COMMENT 'ÞÙ'
  , pc_power 				bit(1) 			NOT NULL DEFAULT b'0'					COMMENT 'PCd¹'
  , clear_desk 				bit(1) 			NOT NULL DEFAULT b'0'					COMMENT 'NAfXN'
  , storage_lock 			bit(1) 			NOT NULL DEFAULT b'0'					COMMENT 'ÛÇÉ{ùiLrlbgj'
  , light_off 				bit(1) 			NOT NULL DEFAULT b'0'					COMMENT 'Á'
  , door_window_lock 		bit(1) 			NOT NULL DEFAULT b'0'					COMMENT 'ËEÌ{ù'
  , regist_date 			timestamp 		NOT NULL DEFAULT CURRENT_TIMESTAMP		COMMENT 'o^Nú'
  , regist_user_id 			varchar(12) 	NOT NULL 								COMMENT 'o^[UID'
  , update_date				timestamp 		NOT NULL DEFAULT '0000-00-00 00:00:00'	COMMENT 'XVNú'
  , update_user_id 			varchar(12) 	NOT NULL 								COMMENT 'XV[UID'
  , version 				int(11) 		NOT NULL DEFAULT '0' 					COMMENT 'o[WiyÏbNpj'
  , PRIMARY KEY (check_year,check_month,check_day,chack_date_seq)
);


DROP TABLE user_cookie;

CREATE TABLE user_cookie (
  user_id 				varchar(12) 	NOT NULL								COMMENT '���[�UID'
  , cookie_name 		varchar(12) 	NOT NULL								COMMENT '�N�b�L�[���O'
  , cookie_value 		varchar(100) 	NOT NULL								COMMENT '�N�b�L�[�l'
  , regist_date 		timestamp 		NOT NULL DEFAULT CURRENT_TIMESTAMP		COMMENT '�o�^�N����'
  , regist_user_id 		varchar(12) 	NOT NULL 								COMMENT '�o�^���[�UID'
  , update_date 		timestamp 		NOT NULL DEFAULT '0000-00-00 00:00:00' 	COMMENT '�X�V�N����'
  , update_user_id 		varchar(12) 	NOT NULL 								COMMENT '�X�V���[�UID'
  , version 			int(11) 		NOT NULL DEFAULT '0' 					COMMENT '�o�[�W�����i�y�σ��b�N�p�j'
  , PRIMARY KEY (user_id,cookie_name,cookie_value)
);

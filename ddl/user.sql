DROP TABLE user;

CREATE TABLE user (
  user_id			varchar(12)		NOT NULL								COMMENT '���[�UID'
  , family_name		varchar(5)		NULL DEFAULT NULL						COMMENT '��'
  , name			varchar(5)		NULL DEFAULT NULL						COMMENT '��'
  , mail			varchar(200)	NULL DEFAULT NULL						COMMENT '���[���A�h���X'
  , password		varchar(100)	NOT NULL								COMMENT '�p�X���[�h'
  , regist_date		timestamp		NOT NULL DEFAULT CURRENT_TIMESTAMP		COMMENT '�o�^�N����'
  , regist_user_id	varchar(12)		NOT NULL								COMMENT '�o�^���[�UID'
  , update_date		timestamp		NOT NULL DEFAULT '0000-00-00 00:00:00' 	COMMENT '�X�V�N����'
  , update_user_id	varchar(12)		NOT NULL								COMMENT '�X�V���[�UID'
  , version			int(11)			NOT NULL DEFAULT '0'					COMMENT '�o�[�W�����i�y�σ��b�N�p�j'
  , PRIMARY KEY (user_id)
);



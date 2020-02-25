SELECT * FROM BOARDV12;

CREATE TABLE reviewboard(
  bdno NUMBER PRIMARY KEY,
  userid VARCHAR2(50) NOT NULL,
  title VARCHAR2(100) NOT NULL,
  contents CLOB NOT NULL,
  views NUMBER DEFAULT 0,
  likes NUMBER DEFAULT 0,
  regdate DATE DEFAULT sysdate
);
CREATE SEQUENCE review_seq;
CREATE SEQUENCE comments_seq;
DROP SEQUENCE commnets_seq;

drop TABLE reviewboard;

SELECT * from reviewboard;

INSERT into reviewboard (bdno, userid, title, contents) VALUES (review_seq.nextval, '이승훈', '테스트입니다', '테스트중입니다.');

SELECT bdno,userid,title,contents,views,likes,regdate FROM reviewboard WHERE bdno = 1;

UPDATE reviewboard SET title = '테스트입니다 수정', contents = '테스트중입니다. 수정' WHERE bdno = 1;

DELETE FROM reviewboard WHERE bdno = 2;

UPDATE reviewboard SET views = views+1 WHERE bdno = 1;

SELECT count(bdno) FROM reviewboard;

ALTER TABLE reviewboard ADD(file1 VARCHAR2(100));
ALTER TABLE reviewboard ADD(file2 VARCHAR2(100));
ALTER TABLE reviewboard ADD(file3 VARCHAR2(100));
ALTER TABLE reviewboard ADD(file4 VARCHAR2(100));
ALTER TABLE reviewboard ADD(file5 VARCHAR2(100));

ALTER TABLE reviewboard ADD(comments VARCHAR2(100));

insert into reviewboard (bdno, comments) values (comments_seq.nextval,'댓글테스트중');

select PASSWD from GOODMEMBERS where USERID = 'test1@!213';

select * from QNABOARD;


SELECT GUGUN from JOIN_ZIPCODE WHERE GUGUN ='북구';
SELECT * from JOIN_ZIPCODE WHERE SEQ = 10000;


CREATE TABLE JOIN_ZIPCODE
(
  ZIPCODE VARCHAR2(10),
  SIDO VARCHAR2(60),
  GUGUN VARCHAR2(60),
  DONG VARCHAR2(60),
  RI VARCHAR2(140),
  BUNJI VARCHAR2(60),
  SEQ NUMBER PRIMARY KEY NOT NULL
);

CREATE TABLE rev_comments(
  comt_bdno NUMBER PRIMARY KEY,
  rev_bdno NUMBER,
  CONSTRAINT fk_comment FOREIGN KEY(rev_bdno) references reviewboard(bdno),
  comt_userid VARCHAR2(50) NOT NULL,
  comt_contents CLOB NOT NULL,
  comt_likes NUMBER DEFAULT 0,
  comt_regdate DATE DEFAULT sysdate);

SELECT * from REV_COMMENTS;

INSERT INTO rev_comments (comt_bdno, rev_bdno, comt_userid, comt_contents) VALUES (comments_seq.nextval, 62, 'null', '댓글테스트1111');
SELECT comt_bdno, comt_userid, comt_contents, comt_likes, comt_regdate from rev_comments WHERE rev_bdno = 82;
SELECT comt_bdno, comt_userid, comt_contents, comt_likes, comt_regdate from rev_comments WHERE rev_bdno = 82;


CREATE TABLE QNABOARD
(
  BDNO NUMBER(*) PRIMARY KEY NOT NULL,
  TITLE VARCHAR2(100),
  CONTENTS VARCHAR2(300),
  USERID VARCHAR2(30),
  REGDATE TIMESTAMP(6) DEFAULT SYSDATE,
  THUMB NUMBER DEFAULT 0,
  VIEWS NUMBER DEFAULT 0
);

DROP TABLE QNABOARD;

select ZIPCODE, sido, gugun, dong, ri, bunji from JOIN_ZIPCODE where GUGUN = '강북구';
select ZIPCODE, sido, gugun, dong, ri, bunji from JOIN_ZIPCODE where BUNJI = '791-2329';

ALTER TABLE rev_comments DROP CONSTRAINT "FK_COMMENT";

ALTER TABLE rev_comments ADD CONSTRAINT fk_comment
FOREIGN KEY(rev_bdno) REFERENCES reviewboard(bdno) ON DELETE CASCADE;

CREATE TABLE GOODMEMBERS
(
  MNO NUMBER(*) NOT NULL,
  NAME VARCHAR2(20) NOT NULL,
  JUMIN VARCHAR2(20) NOT NULL,
  USERID VARCHAR2(20) PRIMARY KEY NOT NULL,
  PASSWD VARCHAR2(20) NOT NULL,
  ZIPCODE VARCHAR2(20) NOT NULL,
  ADRR VARCHAR2(100) NOT NULL,
  EMAIL VARCHAR2(20) NOT NULL,
  HP VARCHAR2(20) NOT NULL,
  REGDATE DATE DEFAULT sysdate

);

SELECT USERID FROM GOODMEMBERS WHERE USERID = 'testuser2';

select * from (select bd.bdno, bd.title, bd.userid, bd.views, bd.regdate, rownum as rnum from
                (select bdno, title, userid, views, regdate from boardv12 WHERE TITLE = '테스트입니다' order by bdno desc) bd
                where rownum <= 10) bd2
                where bd2.rnum >= 1;

select * from (select bd.bdno, bd.title, bd.userid, bd.views, bd.regdate, bd.file1, rownum as rnum from
  (select bdno, title, userid, views, regdate, file1 from reviewboard WHERE title like '%아가%' order by regdate desc) bd
where rownum <= 10) bd2
where bd2.rnum >= 1;

SELECT *
FROM reviewboard;

select * from (select bd.bdno, bd.title, bd.userid, bd.views, bd.regdate, bd.thumbs, rownum as rnum from
               (select bdno, title, userid, views, regdate, thumbs from semilist1 WHERE title like '%유기견%' order by regdate desc) bd
                where rownum <= 10) bd2
               where bd2.rnum >= 1;

select PASSWD from GOODMEMBERS where USERID = 'testuser2333';

delete from cat_comments where catc_bdno=9;

ALTER TABLE cat_comments DROP CONSTRAINT "FK_COMMENT";

ALTER TABLE cat_comments ADD CONSTRAINT ck_comment
FOREIGN KEY (CATBOARD_BDNO) REFERENCES CATBOARD(BDNO) ON DELETE CASCADE;


select * from rev_comments;
select * from CAT_COMMENTS;

CREATE TABLE QNA_COMMENTS
(
  COMT_BDNO NUMBER(*) PRIMARY KEY NOT NULL,
  QAV_BDNO NUMBER(*),
  COMT_USERID VARCHAR2(50) NOT NULL,
  COMT_CONTENTS CLOB,
  COMT_LIKES NUMBER(*),
  COMT_REGDATE DATE DEFAULT SYSDATE

);

DROP TABLE QNA_COMMENTS;

ALTER TABLE qna_comments ADD CONSTRAINT qk_comment
FOREIGN KEY (QAV_BDNO) REFERENCES QNABOARD(BDNO) ON DELETE CASCADE;

SELECT * from SEMILIST1;

SELECT * from frv_comments;

SELECT count(contents) FROM reviewboard;

UPDATE SEMILIST1 SET views = views + 1 WHERE bdno = 74;

ALTER TABLE SEMILIST1 MODIFY (VIEWS NUMBER DEFAULT 0);
ALTER TABLE SEMILIST1 MODIFY (CONTENTS VARCHAR2(4000));
ALTER TABLE DOGBOARD MODIFY (LIKES NUMBER DEFAULT 0);

CREATE TABLE qna_anwser
(
  anwser_bdno NUMBER PRIMARY KEY NOT NULL,
  qnaboard_bdno NUMBER,
  anwser_userid VARCHAR2(50) NOT NULL,
  anwser_title VARCHAR2(50) NOT NULL,
  anwser_contents CLOB NOT NULL,
  anwser_views NUMBER DEFAULT 0,
  anwser_regdate DATE DEFAULT sysdate,
  CONSTRAINT fk_anwser FOREIGN KEY (qnaboard_bdno) REFERENCES QNABOARD (BDNO) ON DELETE CASCADE
);

DROP TABLE qna_anwser;

SELECT anwser_bdno, qnaboard_bdno, anwser_userid, anwser_title, anwser_contents, anwser_views, anwser_regdate from qna_anwser;

ALTER TABLE qna_anwser RENAME COLUMN LIKES to ANWSER_LIKES;--+-
+---------
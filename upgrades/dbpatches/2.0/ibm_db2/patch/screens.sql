ALTER TABLE screens ALTER COLUMN screenid SET WITH DEFAULT NULL
/
REORG TABLE screens
/
ALTER TABLE screens ALTER COLUMN name SET WITH DEFAULT NULL
/
REORG TABLE screens
/
ALTER TABLE screens ADD templateid bigint NULL
/
REORG TABLE screens
/
ALTER TABLE screens ADD CONSTRAINT c_screens_1 FOREIGN KEY (templateid) REFERENCES hosts (hostid) ON DELETE CASCADE
/

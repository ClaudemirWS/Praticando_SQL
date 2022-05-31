CREATE USER 'claudemir'@'localhost' IDENTIFIED BY '789456';
GRANT ALL PRIVILEGES ON stream_organizer.* TO 'claudemir'@'localhost';
CREATE ROLE 'content_updater';
GRANT SELECT, INSERT, UPDATE, DELETE ON stream_organizer.* TO 'content_updater';
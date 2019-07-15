ALTER DATABASE rhariyani CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS connection;
DROP TABLE IF EXISTS profile;

CREATE TABLE profile(
	profileId BINARY(16) NOT NULL,
	UserName VARCHAR(100) not null,
	UserPassward char(97) NOT NULL,
	Name VARCHAR(50) NOT NULL,
	Gender VARCHAR(50),
	Age TINYINT,
	Education VARCHAR(128),
	Awards  VARCHAR(128),
	Occupation VARCHAR(128),
	Likes VARCHAR(128),
	Dislikes VARCHAR(128),
	URL VARCHAR(128),
	PRIMARY KEY(profileId)
);

CREATE TABLE connection(
	ConnectionType VARCHAR(120),
	DateofConnection DATETIME,
	profileId BINARY(16) NOT NULL,
	INDEX (profileId),
		FOREIGN KEY (profileId) References profile(profileId)
	);


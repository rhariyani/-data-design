ALTER DATABASE rhariyani CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS connection;
DROP TABLE IF EXISTS profile;

CREATE TABLE profile(
	profileId BINARY(16) NOT NULL,
	ProfileUserName VARCHAR(100) not null,
	ProfileUserPassword char(97) NOT NULL,
	ProfileName VARCHAR(50) NOT NULL,
	ProfileGender VARCHAR(50),
	ProfileAge TINYINT,
	ProfileEducation VARCHAR(128),
	ProfileAwards  VARCHAR(128),
	ProfileOccupation VARCHAR(128),
	profileLikes VARCHAR(128),
	ProfileDislikes VARCHAR(128),
	ProfileURL VARCHAR(128),
	PRIMARY KEY(profileId)
);

CREATE TABLE connection(
	connectionType VARCHAR(120),
	connectionDate DATETIME,
	connectionProfileId1 BINARY(16) NOT NULL,
	connectionProfileId2 BINARY(16) NOT NULL,
	FOREIGN KEY (connectionProfileId1) References profile(profileId),
	FOREIGN KEY (connectionProfileId2) References profile(profileId)

	);


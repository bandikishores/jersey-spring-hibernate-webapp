-- Creating Schema is passed as part of JDBC Connection

CREATE TABLE TEST_TABLE(ID INT primary key auto_increment, 
						TEST_CHAR VARCHAR(255)  NOT NULL,
						TEST_INT INT,
						IC_CHAR VARCHAR_IGNORECASE(255), 
						ANOTHER_INT INT, 
						SIMPLE_VHAR VARCHAR, -- Max. size of varchar
						CREATED_ON TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
						MODIFIED_ON TIMESTAMP NOT NULL DEFAULT NOW());

/*
	CREATE TABLE URI_CACHE(URI VARCHAR_IGNORECASE(255) NOT NULL, 
							ACTION_TYPE VARCHAR_IGNORECASE(20) NOT NULL, 
							RESPONSE_DATA_ID INT NOT NULL REFERENCES RESPONSE_DATA(ID),
							CREATED_ON TIMESTAMP NOT NULL DEFAULT NOW(), 
							MODIFIED_ON TIMESTAMP NOT NULL DEFAULT NOW(),
							PRIMARY KEY(URI, ACTION_TYPE));
	
	ALTER TABLE URI_CACHE ADD UNIQUE INDEX(URI, ACTION_TYPE);
*/
	

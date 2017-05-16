-- use always the same password. Can be loaded automatically if it is moved in the sql folder

ALTER PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME UNLIMITED;
alter user SYSTEM identified by "oracle";

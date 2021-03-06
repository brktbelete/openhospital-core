ALTER TABLE PATIENTEXAMINATION 
CHANGE COLUMN PEX_HEIGHT PEX_HEIGHT INT(11) NULL DEFAULT NULL COMMENT 'Height in cm' ,
CHANGE COLUMN PEX_WEIGHT PEX_WEIGHT DOUBLE NULL DEFAULT NULL COMMENT 'Weight in Kg' ,
CHANGE COLUMN PEX_PA_MIN PEX_AP_MIN INT(11) NULL DEFAULT NULL COMMENT 'Blood Pressure MIN in mmHg' ,
CHANGE COLUMN PEX_PA_MAX PEX_AP_MAX INT(11) NULL DEFAULT NULL COMMENT 'Blood Pressure MAX in mmHg' ,
CHANGE COLUMN PEX_FC PEX_HR INT(11) NULL DEFAULT NULL COMMENT 'Heart Rate in APm' ,
CHANGE COLUMN PEX_TEMP PEX_TEMP DOUBLE NULL DEFAULT NULL COMMENT 'Temperature in °C' ,
CHANGE COLUMN PEX_SAT PEX_SAT DOUBLE NULL DEFAULT NULL COMMENT 'Saturation in %' ,
ADD COLUMN PEX_HGT INT(3) NULL DEFAULT NULL COMMENT 'Hemo Glucose Test' AFTER PEX_SAT,
ADD COLUMN PEX_DIURESIS INT(11) NULL DEFAULT NULL COMMENT 'Daily Urine Volume in ml' AFTER PEX_HGT,
ADD COLUMN PEX_DIURESIS_DESC VARCHAR(45) NULL DEFAULT NULL COMMENT 'Diuresis: physiological, oliguria, anuria, fequent, nocturia, stranguria, hematuria, pyuria' AFTER PEX_DIURESIS,
ADD COLUMN PEX_BOWEL_DESC VARCHAR(45) NULL DEFAULT NULL COMMENT 'Bowel Function: regular, irregular, constipation, diarrheal' AFTER PEX_DIURESIS_DESC;


UPDATE PATIENTEXAMINATION SET PEX_HEIGHT = NULL WHERE PEX_HEIGHT = 0;
UPDATE PATIENTEXAMINATION SET PEX_WEIGHT = NULL WHERE PEX_WEIGHT = 0;
UPDATE PATIENTEXAMINATION SET PEX_AP_MIN = NULL WHERE PEX_AP_MIN = 0;
UPDATE PATIENTEXAMINATION SET PEX_AP_MAX = NULL WHERE PEX_AP_MAX = 0;
UPDATE PATIENTEXAMINATION SET PEX_HR = NULL WHERE PEX_HR = 0;
UPDATE PATIENTEXAMINATION SET PEX_TEMP = NULL WHERE PEX_TEMP = 0;
UPDATE PATIENTEXAMINATION SET PEX_SAT = NULL WHERE PEX_SAT = 0;
UPDATE PATIENTEXAMINATION SET PEX_NOTE = NULL WHERE PEX_NOTE = '';

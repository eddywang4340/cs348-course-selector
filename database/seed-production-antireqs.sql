-- Inserts rows into Antireq.
USE CoursePlanner;

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACSTC' AND a.catalog_number = '445' AND b.subject = 'ACTSC' AND b.catalog_number = '845'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '127' AND b.subject = 'AFM' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '127' AND b.subject = 'CFM' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '221' AND b.subject = 'ACTSC' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '232' AND b.subject = 'ACTSC' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '291' AND b.subject = 'ACTSC' AND b.catalog_number = '372'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '291' AND b.subject = 'AFM' AND b.catalog_number = '273'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '291' AND b.subject = 'BUS' AND b.catalog_number = '223W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '291' AND b.subject = 'BUS' AND b.catalog_number = '283W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '291' AND b.subject = 'BUS' AND b.catalog_number = '393W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '291' AND b.subject = 'ECON' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '291' AND b.subject = 'MATBUS' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '371' AND b.subject = 'BUS' AND b.catalog_number = '223W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '371' AND b.subject = 'BUS' AND b.catalog_number = '283W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '371' AND b.subject = 'MATBUS' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '372' AND b.subject = 'ACTSC' AND b.catalog_number = '391'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '372' AND b.subject = 'AFM' AND b.catalog_number = '272'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '372' AND b.subject = 'AFM' AND b.catalog_number = '273'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '372' AND b.subject = 'AFM' AND b.catalog_number = '274'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '372' AND b.subject = 'AFM' AND b.catalog_number = '275'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '372' AND b.subject = 'AFM' AND b.catalog_number = '372'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '372' AND b.subject = 'BUS' AND b.catalog_number = '223W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '372' AND b.subject = 'BUS' AND b.catalog_number = '283W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '372' AND b.subject = 'BUS' AND b.catalog_number = '393W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '372' AND b.subject = 'ECON' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '372' AND b.subject = 'MATBUS' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '391' AND b.subject = 'AFM' AND b.catalog_number = '274'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '391' AND b.subject = 'AFM' AND b.catalog_number = '372'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '391' AND b.subject = 'BUS' AND b.catalog_number = '223W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '391' AND b.subject = 'BUS' AND b.catalog_number = '283W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '391' AND b.subject = 'BUS' AND b.catalog_number = '393W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '391' AND b.subject = 'ECON' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '391' AND b.subject = 'MATBUS' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '445' AND b.subject = 'AFM' AND b.catalog_number = '422'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '445' AND b.subject = 'BUS' AND b.catalog_number = '433W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '445' AND b.subject = 'BUS' AND b.catalog_number = '439W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '445' AND b.subject = 'MATBUS' AND b.catalog_number = '472'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '446' AND b.subject = 'ACTSC' AND b.catalog_number = '846'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '446' AND b.subject = 'AFM' AND b.catalog_number = '322'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '446' AND b.subject = 'BUS' AND b.catalog_number = '423W';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '446' AND b.subject = 'ECON' AND b.catalog_number = '372'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '446' AND b.subject = 'MATBUS' AND b.catalog_number = '470'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '456' AND b.subject = 'ACTSC' AND b.catalog_number = '856'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '456' AND b.subject = 'STAT' AND b.catalog_number = '441'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '457' AND b.subject = 'ACTSC' AND b.catalog_number = '489'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '471' AND b.subject = 'AFM' AND b.catalog_number = '373'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '471' AND b.subject = 'BUS' AND b.catalog_number = '463W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '856' AND b.subject = 'STAT' AND b.catalog_number = '441'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ACTSC' AND a.catalog_number = '856' AND b.subject = 'STAT' AND b.catalog_number = '841'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '104' AND b.subject = 'CIVE' AND b.catalog_number = '104'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '104' AND b.subject = 'PHYS' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '105' AND b.subject = 'CIVE' AND b.catalog_number = '105'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '105' AND b.subject = 'MTE' AND b.catalog_number = '119'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '115' AND b.subject = 'CIVE' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '114'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '136'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '146'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '121' AND b.subject = 'BME' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '121' AND b.subject = 'CIVE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '121' AND b.subject = 'CS' AND b.catalog_number = '135'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '121' AND b.subject = 'ECE' AND b.catalog_number = '150'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '121' AND b.subject = 'MTE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '121' AND b.subject = 'SYDE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '123' AND b.subject = 'ECE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '123' AND b.subject = 'GENE' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '123' AND b.subject = 'ME' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '123' AND b.subject = 'NE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '204' AND b.subject = 'CIVE' AND b.catalog_number = '204'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '205' AND b.subject = 'CIVE' AND b.catalog_number = '205'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '221' AND b.subject = 'CIVE' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '221' AND b.subject = 'MATH' AND b.catalog_number = '217'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '223' AND b.subject = 'CIVE' AND b.catalog_number = '222'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '223' AND b.subject = 'MATH' AND b.catalog_number = '218'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '224' AND b.subject = 'CIVE' AND b.catalog_number = '224'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '224' AND b.subject = 'ENVE' AND b.catalog_number = '224'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '224' AND b.subject = 'MSE' AND b.catalog_number = '251'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '265' AND b.subject = 'CIVE' AND b.catalog_number = '265'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '279' AND b.subject = 'BME' AND b.catalog_number = '384'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '279' AND b.subject = 'CHE' AND b.catalog_number = '330';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '279' AND b.subject = 'ENVE' AND b.catalog_number = '279'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '279' AND b.subject = 'ME' AND b.catalog_number = '250'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '279' AND b.subject = 'MTE' AND b.catalog_number = '309'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '279' AND b.subject = 'SYDE' AND b.catalog_number = '381'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '280' AND b.subject = 'CIVE' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '280' AND b.subject = 'ENVE' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '303' AND b.subject = 'CIVE' AND b.catalog_number = '303'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '310' AND b.subject = 'AE' AND b.catalog_number = '311'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '310' AND b.subject = 'CIVE' AND b.catalog_number = '310'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '310' AND b.subject = 'CIVE' AND b.catalog_number = '311'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '311' AND b.subject = 'CIVE' AND b.catalog_number = '310'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '377' AND b.subject = 'CIVE' AND b.catalog_number = '517'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '392' AND b.subject = 'MSE' AND b.catalog_number = '261'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '400' AND b.subject = 'AE' AND b.catalog_number = '601'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '425' AND b.subject = 'AE' AND b.catalog_number = '601'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '491' AND b.subject = 'CIVE' AND b.catalog_number = '491'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '572' AND b.subject = 'ME' AND b.catalog_number = '655'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AE' AND a.catalog_number = '573' AND b.subject = 'ME' AND b.catalog_number = '656'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '101' AND b.subject = 'AFM' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '101' AND b.subject = 'AFM' AND b.catalog_number = '191'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '101' AND b.subject = 'ARBUS' AND b.catalog_number = '102'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '101' AND b.subject = 'BUS' AND b.catalog_number = '127W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '101' AND b.subject = 'BUS' AND b.catalog_number = '227W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '101' AND b.subject = 'BUS' AND b.catalog_number = '237W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '102' AND b.subject = 'AFM' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '102' AND b.subject = 'AFM' AND b.catalog_number = '182'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '102' AND b.subject = 'ARBUS' AND b.catalog_number = '102'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '102' AND b.subject = 'BUS' AND b.catalog_number = '237W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '102' AND b.subject = 'BUS' AND b.catalog_number = '247W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '113' AND b.subject = 'AMATH' AND b.catalog_number = '350'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '113' AND b.subject = 'MATH' AND b.catalog_number = '128'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '113' AND b.subject = 'STAT' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '121' AND b.subject = 'AFM' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '121' AND b.subject = 'AFM' AND b.catalog_number = '127'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '121' AND b.subject = 'BUS' AND b.catalog_number = '127W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '121' AND b.subject = 'BUS' AND b.catalog_number = '237W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '121' AND b.subject = 'CFM' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '121' AND b.subject = 'COMM' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '122' AND b.subject = 'BUS' AND b.catalog_number = '237W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '123' AND b.subject = 'AFM' AND b.catalog_number = '182';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '123' AND b.subject = 'AFM' AND b.catalog_number = '191'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '123' AND b.subject = 'BUS' AND b.catalog_number = '127W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '123' AND b.subject = 'BUS' AND b.catalog_number = '227W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '123' AND b.subject = 'BUS' AND b.catalog_number = '237W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '123' AND b.subject = 'BUS' AND b.catalog_number = '247W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '127' AND b.subject = 'CFM' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '131' AND b.subject = 'AFM' AND b.catalog_number = '132'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '131' AND b.subject = 'BUS' AND b.catalog_number = '111W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '132' AND b.subject = 'ARBUS' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '132' AND b.subject = 'BUS' AND b.catalog_number = '111W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '182' AND b.subject = 'ARBUS' AND b.catalog_number = '102'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '182' AND b.subject = 'BUS' AND b.catalog_number = '247W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '191' AND b.subject = 'ARBUS' AND b.catalog_number = '102'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '191' AND b.subject = 'BUS' AND b.catalog_number = '127W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '191' AND b.subject = 'BUS' AND b.catalog_number = '227W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '204' AND b.subject = 'AFM' AND b.catalog_number = '205'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '211' AND b.subject = 'AFM' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '231' AND b.subject = 'AFM' AND b.catalog_number = '335'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '231' AND b.subject = 'BUS' AND b.catalog_number = '231W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '231' AND b.subject = 'CIVE' AND b.catalog_number = '491'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '231' AND b.subject = 'COMM' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '231' AND b.subject = 'ME' AND b.catalog_number = '401'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '241' AND b.subject = 'BUS' AND b.catalog_number = '415W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '241' AND b.subject = 'BUS' AND b.catalog_number = '476W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '241' AND b.subject = 'CS' AND b.catalog_number = '330'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '241' AND b.subject = 'CS' AND b.catalog_number = '480'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '241' AND b.subject = 'CS' AND b.catalog_number = '490'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '271' AND b.subject = 'BUS' AND b.catalog_number = '223W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '272' AND b.subject = 'AFM' AND b.catalog_number = '273'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '272' AND b.subject = 'BUS' AND b.catalog_number = '223W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '272' AND b.subject = 'BUS' AND b.catalog_number = '283W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '272' AND b.subject = 'BUS' AND b.catalog_number = '393W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '272' AND b.subject = 'ECON' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '272' AND b.subject = 'MATBUS' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '273' AND b.subject = 'BUS' AND b.catalog_number = '223W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '273' AND b.subject = 'BUS' AND b.catalog_number = '283W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '273' AND b.subject = 'BUS' AND b.catalog_number = '393W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '273' AND b.subject = 'ECON' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '273' AND b.subject = 'MATBUS' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '274' AND b.subject = 'AFM' AND b.catalog_number = '275';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '274' AND b.subject = 'AFM' AND b.catalog_number = '372'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '274' AND b.subject = 'BUS' AND b.catalog_number = '223W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '274' AND b.subject = 'BUS' AND b.catalog_number = '283W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '274' AND b.subject = 'BUS' AND b.catalog_number = '393W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '274' AND b.subject = 'ECON' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '274' AND b.subject = 'MATBUS' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '275' AND b.subject = 'AFM' AND b.catalog_number = '372'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '275' AND b.subject = 'BUS' AND b.catalog_number = '223W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '275' AND b.subject = 'BUS' AND b.catalog_number = '283W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '275' AND b.subject = 'BUS' AND b.catalog_number = '393W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '275' AND b.subject = 'ECON' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '275' AND b.subject = 'MATBUS' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '276' AND b.subject = 'AFM' AND b.catalog_number = '492'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '276' AND b.subject = 'BUS' AND b.catalog_number = '417W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '276' AND b.subject = 'COMM' AND b.catalog_number = '421'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '280' AND b.subject = 'AFM' AND b.catalog_number = '480'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '280' AND b.subject = 'MSCI' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '280' AND b.subject = 'MSE' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '280' AND b.subject = 'PSYCH' AND b.catalog_number = '238'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '281' AND b.subject = 'BUS' AND b.catalog_number = '237W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '285' AND b.subject = 'ENBUS' AND b.catalog_number = '102'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '285' AND b.subject = 'SFM' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '291' AND b.subject = 'BUS' AND b.catalog_number = '387W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '291' AND b.subject = 'COMM' AND b.catalog_number = '321'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '311' AND b.subject = 'ARBUS' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '311' AND b.subject = 'PHIL' AND b.catalog_number = '215'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '311' AND b.subject = 'SFM' AND b.catalog_number = '309'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '322' AND b.subject = 'BUS' AND b.catalog_number = '423W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '322' AND b.subject = 'ECON' AND b.catalog_number = '372'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '322' AND b.subject = 'MATBUS' AND b.catalog_number = '470'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '323' AND b.subject = 'ECON' AND b.catalog_number = '321'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '323' AND b.subject = 'STAT' AND b.catalog_number = '321'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '323' AND b.subject = 'STAT' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '323' AND b.subject = 'STAT' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '323' AND b.subject = 'STAT' AND b.catalog_number = '373'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '323' AND b.subject = 'STAT' AND b.catalog_number = '374'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '333' AND b.subject = 'BUS' AND b.catalog_number = '471W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '335' AND b.subject = 'BUS' AND b.catalog_number = '231W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '335' AND b.subject = 'CIVE' AND b.catalog_number = '491'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '335' AND b.subject = 'COMM' AND b.catalog_number = '231';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '335' AND b.subject = 'ENVS' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '335' AND b.subject = 'LS' AND b.catalog_number = '283'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '335' AND b.subject = 'ME' AND b.catalog_number = '401'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '351' AND b.subject = 'AFM' AND b.catalog_number = '451'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '351' AND b.subject = 'BUS' AND b.catalog_number = '477W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '361' AND b.subject = 'BUS' AND b.catalog_number = '357W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '371' AND b.subject = 'BUS' AND b.catalog_number = '223W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '372' AND b.subject = 'BUS' AND b.catalog_number = '223W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '372' AND b.subject = 'BUS' AND b.catalog_number = '283W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '372' AND b.subject = 'BUS' AND b.catalog_number = '393W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '372' AND b.subject = 'MATBUS' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '373' AND b.subject = 'AFM' AND b.catalog_number = '476'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '382' AND b.subject = 'AFM' AND b.catalog_number = '481'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '391' AND b.subject = 'BUS' AND b.catalog_number = '397W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '401' AND b.subject = 'BUS' AND b.catalog_number = '427W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '401' AND b.subject = 'BUS' AND b.catalog_number = '457W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '422' AND b.subject = 'MATBUS' AND b.catalog_number = '472'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '424' AND b.subject = 'BUS' AND b.catalog_number = '473W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '425' AND b.subject = 'BUS' AND b.catalog_number = '449W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '425' AND b.subject = 'MATBUS' AND b.catalog_number = '471'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '431' AND b.subject = 'BUS' AND b.catalog_number = '461QW'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '433' AND b.subject = 'ENBUS' AND b.catalog_number = '302'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '433' AND b.subject = 'GBDA' AND b.catalog_number = '405'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '443' AND b.subject = 'COMM' AND b.catalog_number = '432'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '451' AND b.subject = 'BUS' AND b.catalog_number = '477W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '461' AND b.subject = 'BUS' AND b.catalog_number = '466W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '472' AND b.subject = 'BUS' AND b.catalog_number = '473W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '473' AND b.subject = 'BUS' AND b.catalog_number = '463W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '474' AND b.subject = 'BUS' AND b.catalog_number = '423W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '476' AND b.subject = 'BUS' AND b.catalog_number = '463W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '480' AND b.subject = 'MSCI' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '480' AND b.subject = 'MSE' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '480' AND b.subject = 'PSYCH' AND b.catalog_number = '238'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '481' AND b.subject = 'BUS' AND b.catalog_number = '467W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '491' AND b.subject = 'BUS' AND b.catalog_number = '427W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '491' AND b.subject = 'BUS' AND b.catalog_number = '487W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '492' AND b.subject = 'BUS' AND b.catalog_number = '417W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AFM' AND a.catalog_number = '492' AND b.subject = 'COMM' AND b.catalog_number = '421'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AHS' AND a.catalog_number = '100' AND b.subject = 'HEALTH' AND b.catalog_number = '100'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AHS' AND a.catalog_number = '105' AND b.subject = 'HEALTH' AND b.catalog_number = '105';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AHS' AND a.catalog_number = '107' AND b.subject = 'HEALTH' AND b.catalog_number = '107'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AHS' AND a.catalog_number = '150' AND b.subject = 'HEALTH' AND b.catalog_number = '150'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AHS' AND a.catalog_number = '395' AND b.subject = 'HEALTH' AND b.catalog_number = '395'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '231' AND b.subject = 'ECE' AND b.catalog_number = '206'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '231' AND b.subject = 'MATH' AND b.catalog_number = '207'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '231' AND b.subject = 'MATH' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '231' AND b.subject = 'MATH' AND b.catalog_number = '217'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '231' AND b.subject = 'MATH' AND b.catalog_number = '227'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '242' AND b.subject = 'CS' AND b.catalog_number = '335'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '242' AND b.subject = 'CS' AND b.catalog_number = '370'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '250' AND b.subject = 'AMATH' AND b.catalog_number = '251'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '250' AND b.subject = 'AMATH' AND b.catalog_number = '350'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '250' AND b.subject = 'MATH' AND b.catalog_number = '213'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '250' AND b.subject = 'MATH' AND b.catalog_number = '218'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '250' AND b.subject = 'MATH' AND b.catalog_number = '228'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '251' AND b.subject = 'AMATH' AND b.catalog_number = '350'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '251' AND b.subject = 'MATH' AND b.catalog_number = '213'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '251' AND b.subject = 'MATH' AND b.catalog_number = '218'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '251' AND b.subject = 'MATH' AND b.catalog_number = '228'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '271' AND b.subject = 'PHYS' AND b.catalog_number = '263'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '331' AND b.subject = 'PMATH' AND b.catalog_number = '333'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '331' AND b.subject = 'PMATH' AND b.catalog_number = '351'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '332' AND b.subject = 'PHYS' AND b.catalog_number = '365'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '332' AND b.subject = 'PMATH' AND b.catalog_number = '352'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '342' AND b.subject = 'ECE' AND b.catalog_number = '204'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '350' AND b.subject = 'AMATH' AND b.catalog_number = '353'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '350' AND b.subject = 'CIVE' AND b.catalog_number = '222'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '350' AND b.subject = 'ECE' AND b.catalog_number = '205'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '350' AND b.subject = 'ENVE' AND b.catalog_number = '223'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '350' AND b.subject = 'MATH' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '350' AND b.subject = 'MATH' AND b.catalog_number = '218'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '350' AND b.subject = 'MATH' AND b.catalog_number = '228'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '350' AND b.subject = 'ME' AND b.catalog_number = '203'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '350' AND b.subject = 'NE' AND b.catalog_number = '216'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '350' AND b.subject = 'PHYS' AND b.catalog_number = '364'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '350' AND b.subject = 'SYDE' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '351' AND b.subject = 'MATH' AND b.catalog_number = '218'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '353' AND b.subject = 'PHYS' AND b.catalog_number = '364'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '373' AND b.subject = 'PHYS' AND b.catalog_number = '334'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '442' AND b.subject = 'AMATH' AND b.catalog_number = '642';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '445' AND b.subject = 'AMATH' AND b.catalog_number = '645'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '446' AND b.subject = 'AMATH' AND b.catalog_number = '646'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '449' AND b.subject = 'CS' AND b.catalog_number = '679'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '449' AND b.subject = 'ECE' AND b.catalog_number = '457D'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '451' AND b.subject = 'AMATH' AND b.catalog_number = '651'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '453' AND b.subject = 'AMATH' AND b.catalog_number = '653'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '455' AND b.subject = 'AMATH' AND b.catalog_number = '655'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '456' AND b.subject = 'AMATH' AND b.catalog_number = '656'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '462' AND b.subject = 'AMATH' AND b.catalog_number = '662'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '463' AND b.subject = 'AMATH' AND b.catalog_number = '663'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '473' AND b.subject = 'AMATH' AND b.catalog_number = '673'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '474' AND b.subject = 'AMATH' AND b.catalog_number = '674'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '474' AND b.subject = 'PHYS' AND b.catalog_number = '484'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '475' AND b.subject = 'AMATH' AND b.catalog_number = '675'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '477' AND b.subject = 'AMATH' AND b.catalog_number = '677'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AMATH' AND a.catalog_number = '642' AND b.subject = 'AMATH' AND b.catalog_number = '741'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ANTH' AND a.catalog_number = '100' AND b.subject = 'ANTH' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ANTH' AND a.catalog_number = '100' AND b.subject = 'ANTH' AND b.catalog_number = '102'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ANTH' AND a.catalog_number = '204' AND b.subject = 'ANTH' AND b.catalog_number = '260'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARABIC' AND a.catalog_number = '101R' AND b.subject = 'ARABIC' AND b.catalog_number = '120'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARABIC' AND a.catalog_number = '101R' AND b.subject = 'ARABIC' AND b.catalog_number = '120R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARABIC' AND a.catalog_number = '101R' AND b.subject = 'SI' AND b.catalog_number = '101R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARABIC' AND a.catalog_number = '101R' AND b.subject = 'SI' AND b.catalog_number = '120R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARABIC' AND a.catalog_number = '102R' AND b.subject = 'ARABIC' AND b.catalog_number = '120R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARABIC' AND a.catalog_number = '102R' AND b.subject = 'SI' AND b.catalog_number = '102R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARABIC' AND a.catalog_number = '102R' AND b.subject = 'SI' AND b.catalog_number = '120R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARABIC' AND a.catalog_number = '120R' AND b.subject = 'ARABIC' AND b.catalog_number = '201R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARABIC' AND a.catalog_number = '120R' AND b.subject = 'SI' AND b.catalog_number = '101R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARABIC' AND a.catalog_number = '120R' AND b.subject = 'SI' AND b.catalog_number = '102R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARABIC' AND a.catalog_number = '120R' AND b.subject = 'SI' AND b.catalog_number = '120R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARABIC' AND a.catalog_number = '120R' AND b.subject = 'SI' AND b.catalog_number = '201R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARABIC' AND a.catalog_number = '201R' AND b.subject = 'SI' AND b.catalog_number = '120R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '101' AND b.subject = 'BUS' AND b.catalog_number = '111W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '102' AND b.subject = 'BUS' AND b.catalog_number = '127W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '102' AND b.subject = 'BUS' AND b.catalog_number = '227W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '102' AND b.subject = 'BUS' AND b.catalog_number = '247W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '200' AND b.subject = 'BUS' AND b.catalog_number = '311W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '200' AND b.subject = 'BUS' AND b.catalog_number = '461RW'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '200' AND b.subject = 'ENBUS' AND b.catalog_number = '203'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '200' AND b.subject = 'GBDA' AND b.catalog_number = '308';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '200' AND b.subject = 'MGMT' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '201' AND b.subject = 'BUS' AND b.catalog_number = '461RW'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '201' AND b.subject = 'ENBUS' AND b.catalog_number = '203'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '300' AND b.subject = 'GBDA' AND b.catalog_number = '405'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '301' AND b.subject = 'GBDA' AND b.catalog_number = '405'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '302' AND b.subject = 'BUS' AND b.catalog_number = '252W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '302' AND b.subject = 'BUS' AND b.catalog_number = '352W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '302' AND b.subject = 'ECON' AND b.catalog_number = '344'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '302' AND b.subject = 'ENBUS' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '302' AND b.subject = 'GBDA' AND b.catalog_number = '304'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '303' AND b.subject = 'BUS' AND b.catalog_number = '352W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '303' AND b.subject = 'ECON' AND b.catalog_number = '345'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '303' AND b.subject = 'ENBUS' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '303' AND b.subject = 'MGMT' AND b.catalog_number = '345'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARBUS' AND a.catalog_number = '400' AND b.subject = 'GBDA' AND b.catalog_number = '405'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARCH' AND a.catalog_number = '277' AND b.subject = 'CIVE' AND b.catalog_number = '517'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '125' AND b.subject = 'MENN' AND b.catalog_number = '125'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '130' AND b.subject = 'HIST' AND b.catalog_number = '228'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'ECON' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'ENVS' AND b.catalog_number = '278'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'GBDA' AND b.catalog_number = '205'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'HLTH' AND b.catalog_number = '204'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'KIN' AND b.catalog_number = '232'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'LS' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'PSCI' AND b.catalog_number = '314'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'PSYCH' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'REC' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'SDS' AND b.catalog_number = '250R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'SMF' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'SOC' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'SRF' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '206'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '280' AND b.subject = 'SWREN' AND b.catalog_number = '250R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ARTS' AND a.catalog_number = '390' AND b.subject = 'THPERF' AND b.catalog_number = '367'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '101' AND b.subject = 'AVIA' AND b.catalog_number = '121';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '101' AND b.subject = 'AVIA' AND b.catalog_number = '141'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '102' AND b.subject = 'AVIA' AND b.catalog_number = '142'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '203' AND b.subject = 'AVIA' AND b.catalog_number = '222'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '203' AND b.subject = 'AVIA' AND b.catalog_number = '243'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '204' AND b.subject = 'AVIA' AND b.catalog_number = '223'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '204' AND b.subject = 'AVIA' AND b.catalog_number = '233'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '204' AND b.subject = 'AVIA' AND b.catalog_number = '244'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '205' AND b.subject = 'AVIA' AND b.catalog_number = '245'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '210' AND b.subject = 'AVIA' AND b.catalog_number = '310'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '210' AND b.subject = 'SYDE' AND b.catalog_number = '543'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '270' AND b.subject = 'GEOG' AND b.catalog_number = '270'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '306' AND b.subject = 'AVIA' AND b.catalog_number = '324'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '306' AND b.subject = 'AVIA' AND b.catalog_number = '346'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '307' AND b.subject = 'AVIA' AND b.catalog_number = '325'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '307' AND b.subject = 'AVIA' AND b.catalog_number = '347'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'AVIA' AND a.catalog_number = '408' AND b.subject = 'AVIA' AND b.catalog_number = '426'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BE' AND a.catalog_number = '602' AND b.subject = 'MSE' AND b.catalog_number = '609'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BE' AND a.catalog_number = '602' AND b.subject = 'MSE' AND b.catalog_number = '718'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BE' AND a.catalog_number = '605' AND b.subject = 'MSE' AND b.catalog_number = '651'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BE' AND a.catalog_number = '660' AND b.subject = 'BET' AND b.catalog_number = '460'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BE' AND a.catalog_number = '680' AND b.subject = 'BET' AND b.catalog_number = '580'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BET' AND a.catalog_number = '100' AND b.subject = 'BET' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BET' AND a.catalog_number = '450' AND b.subject = 'COMMST' AND b.catalog_number = '204'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BET' AND a.catalog_number = '450' AND b.subject = 'COMMST' AND b.catalog_number = '227'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BET' AND a.catalog_number = '450' AND b.subject = 'MSE' AND b.catalog_number = '411'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BET' AND a.catalog_number = '615' AND b.subject = 'BET' AND b.catalog_number = '615A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BET' AND a.catalog_number = '615' AND b.subject = 'BET' AND b.catalog_number = '615B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '120' AND b.subject = 'BIOL' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '130' AND b.subject = 'HLTH' AND b.catalog_number = '103'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '130' AND b.subject = 'NE' AND b.catalog_number = '281'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '150' AND b.subject = 'BIOL' AND b.catalog_number = '251'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '235' AND b.subject = 'BIOL' AND b.catalog_number = '309'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '251' AND b.subject = 'ENVS' AND b.catalog_number = '200'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '273' AND b.subject = 'SYDE' AND b.catalog_number = '584'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '273L' AND b.subject = 'BIOL' AND b.catalog_number = '373L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '303' AND b.subject = 'BIOL' AND b.catalog_number = '403'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '352' AND b.subject = 'BIOL' AND b.catalog_number = '456'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '361' AND b.subject = 'BME' AND b.catalog_number = '213'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '361' AND b.subject = 'PSCI' AND b.catalog_number = '314'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '361' AND b.subject = 'PSYCH' AND b.catalog_number = '391';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '361' AND b.subject = 'STAT' AND b.catalog_number = '332'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '441' AND b.subject = 'OPTOM' AND b.catalog_number = '134'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '462' AND b.subject = 'GEOG' AND b.catalog_number = '405'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '499A' AND b.subject = 'CHEM' AND b.catalog_number = '494A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '499A' AND b.subject = 'CHEM' AND b.catalog_number = '494B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '499B' AND b.subject = 'CHEM' AND b.catalog_number = '494A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '499B' AND b.subject = 'CHEM' AND b.catalog_number = '494B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '631' AND b.subject = 'GEOG' AND b.catalog_number = '616'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BIOL' AND a.catalog_number = '631' AND b.subject = 'PLAN' AND b.catalog_number = '616'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '101' AND b.subject = 'SYDE' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '101L' AND b.subject = 'SYDE' AND b.catalog_number = '101L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '121' AND b.subject = 'CS' AND b.catalog_number = '105'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '121' AND b.subject = 'CS' AND b.catalog_number = '106'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '121' AND b.subject = 'CS' AND b.catalog_number = '114'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '121' AND b.subject = 'CS' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '121' AND b.subject = 'CS' AND b.catalog_number = '135'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '121' AND b.subject = 'MSE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '121' AND b.subject = 'SYDE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '122' AND b.subject = 'CS' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '122' AND b.subject = 'CS' AND b.catalog_number = '234'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '122' AND b.subject = 'CS' AND b.catalog_number = '240'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '122' AND b.subject = 'MSE' AND b.catalog_number = '240'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '122' AND b.subject = 'SYDE' AND b.catalog_number = '223'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '161' AND b.subject = 'SYDE' AND b.catalog_number = '161'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '162' AND b.subject = 'SYDE' AND b.catalog_number = '162'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '181' AND b.subject = 'SYDE' AND b.catalog_number = '181'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '182' AND b.subject = 'BME' AND b.catalog_number = '288'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '182' AND b.subject = 'ME' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '182' AND b.subject = 'MTE' AND b.catalog_number = '182'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '182' AND b.subject = 'NE' AND b.catalog_number = '131'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '182' AND b.subject = 'SYDE' AND b.catalog_number = '182'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '182' AND b.subject = 'SYDE' AND b.catalog_number = '288'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '213' AND b.subject = 'CHE' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '213' AND b.subject = 'CIVE' AND b.catalog_number = '224'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '213' AND b.subject = 'ENVE' AND b.catalog_number = '224'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '213' AND b.subject = 'ME' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '213' AND b.subject = 'MSCI' AND b.catalog_number = '252'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '213' AND b.subject = 'MSE' AND b.catalog_number = '251'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '213' AND b.subject = 'MSE' AND b.catalog_number = '252'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '213' AND b.subject = 'MTE' AND b.catalog_number = '201';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '213' AND b.subject = 'NE' AND b.catalog_number = '215'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '213' AND b.subject = 'PSYCH' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '213' AND b.subject = 'STAT' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '213' AND b.subject = 'STAT' AND b.catalog_number = '206'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '213' AND b.subject = 'STAT' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '213' AND b.subject = 'SYDE' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '252' AND b.subject = 'MTE' AND b.catalog_number = '252'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '252' AND b.subject = 'SYDE' AND b.catalog_number = '252'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '281' AND b.subject = 'CIVE' AND b.catalog_number = '204'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '281' AND b.subject = 'ME' AND b.catalog_number = '219'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '281' AND b.subject = 'SYDE' AND b.catalog_number = '286'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '281L' AND b.subject = 'BME' AND b.catalog_number = '385L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '282' AND b.subject = 'BME' AND b.catalog_number = '385'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '282' AND b.subject = 'SYDE' AND b.catalog_number = '285'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '284' AND b.subject = 'SYDE' AND b.catalog_number = '584'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '285' AND b.subject = 'NE' AND b.catalog_number = '281'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '288' AND b.subject = 'ME' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '288' AND b.subject = 'MTE' AND b.catalog_number = '182'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '288' AND b.subject = 'NE' AND b.catalog_number = '131'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '288' AND b.subject = 'SYDE' AND b.catalog_number = '182'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '288' AND b.subject = 'SYDE' AND b.catalog_number = '288'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '292' AND b.subject = 'SYDE' AND b.catalog_number = '192'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '294' AND b.subject = 'SYDE' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '294L' AND b.subject = 'SYDE' AND b.catalog_number = '292L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '341' AND b.subject = 'BME' AND b.catalog_number = '530'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '356' AND b.subject = 'ME' AND b.catalog_number = '360'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '356' AND b.subject = 'SYDE' AND b.catalog_number = '352'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '356L' AND b.subject = 'SYDE' AND b.catalog_number = '352L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '361' AND b.subject = 'SYDE' AND b.catalog_number = '361'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '362' AND b.subject = 'SYDE' AND b.catalog_number = '362'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '364' AND b.subject = 'MSE' AND b.catalog_number = '261'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '364' AND b.subject = 'SYDE' AND b.catalog_number = '262'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '384' AND b.subject = 'SYDE' AND b.catalog_number = '381'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '384' AND b.subject = 'SYDE' AND b.catalog_number = '383'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '385' AND b.subject = 'SYDE' AND b.catalog_number = '285'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '386' AND b.subject = 'SYDE' AND b.catalog_number = '283'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '393' AND b.subject = 'CS' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '393' AND b.subject = 'CS' AND b.catalog_number = '251'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '393' AND b.subject = 'CS' AND b.catalog_number = '251E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '393' AND b.subject = 'SYDE' AND b.catalog_number = '192';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '393L' AND b.subject = 'SYDE' AND b.catalog_number = '192L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '400' AND b.subject = 'WKRPT' AND b.catalog_number = '400'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '400' AND b.subject = 'WKRPT' AND b.catalog_number = '401'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '411' AND b.subject = 'CHE' AND b.catalog_number = '521'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '411' AND b.subject = 'MSE' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '411' AND b.subject = 'SYDE' AND b.catalog_number = '411'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '461' AND b.subject = 'SYDE' AND b.catalog_number = '461'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '462' AND b.subject = 'SYDE' AND b.catalog_number = '462'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '489' AND b.subject = 'NE' AND b.catalog_number = '488'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '522' AND b.subject = 'CHE' AND b.catalog_number = '523'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '522' AND b.subject = 'CS' AND b.catalog_number = '480'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '522' AND b.subject = 'CS' AND b.catalog_number = '486'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '522' AND b.subject = 'ECE' AND b.catalog_number = '457A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '522' AND b.subject = 'ECE' AND b.catalog_number = '457B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '522' AND b.subject = 'MSE' AND b.catalog_number = '446'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '530' AND b.subject = 'GERON' AND b.catalog_number = '245'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '530' AND b.subject = 'HLTH' AND b.catalog_number = '245'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '544' AND b.subject = 'SYDE' AND b.catalog_number = '544'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '550' AND b.subject = 'BME' AND b.catalog_number = '721'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '551' AND b.subject = 'BME' AND b.catalog_number = '722'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '552' AND b.subject = 'BME' AND b.catalog_number = '588'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '553' AND b.subject = 'BME' AND b.catalog_number = '588'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '553' AND b.subject = 'BME' AND b.catalog_number = '723'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '561' AND b.subject = 'BME' AND b.catalog_number = '589'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '582' AND b.subject = 'BME' AND b.catalog_number = '587'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '589' AND b.subject = 'CHE' AND b.catalog_number = '561'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '601' AND b.subject = 'ECE' AND b.catalog_number = '601'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '603' AND b.subject = 'ECE' AND b.catalog_number = '609'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '611' AND b.subject = 'SYDE' AND b.catalog_number = '684'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BME' AND a.catalog_number = '641' AND b.subject = 'SYDE' AND b.catalog_number = '677'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '121W' AND b.subject = 'COMM' AND b.catalog_number = '102'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '205W' AND b.subject = 'ECON' AND b.catalog_number = '255W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '208W' AND b.subject = 'COMMST' AND b.catalog_number = '100'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '223W' AND b.subject = 'BUS' AND b.catalog_number = '283W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '223W' AND b.subject = 'BUS' AND b.catalog_number = '393W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '223W' AND b.subject = 'ECON' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '227W' AND b.subject = 'BUS' AND b.catalog_number = '237W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '228W' AND b.subject = 'BUS' AND b.catalog_number = '288W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '228W' AND b.subject = 'BUS' AND b.catalog_number = '398W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '228W' AND b.subject = 'MSCI' AND b.catalog_number = '211';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '228W' AND b.subject = 'PSYCH' AND b.catalog_number = '238'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '228W' AND b.subject = 'PSYCH' AND b.catalog_number = '338'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '229W' AND b.subject = 'BUS' AND b.catalog_number = '252W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '229W' AND b.subject = 'BUS' AND b.catalog_number = '352W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '229W' AND b.subject = 'ECON' AND b.catalog_number = '344'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '229W' AND b.subject = 'INTTS' AND b.catalog_number = '302'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '231W' AND b.subject = 'CIVE' AND b.catalog_number = '491'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '231W' AND b.subject = 'COMM' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '231W' AND b.subject = 'ENVS' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '231W' AND b.subject = 'LS' AND b.catalog_number = '283'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '231W' AND b.subject = 'ME' AND b.catalog_number = '401'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '237W' AND b.subject = 'BUS' AND b.catalog_number = '247W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '237W' AND b.subject = 'MSCI' AND b.catalog_number = '262'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '252W' AND b.subject = 'ECON' AND b.catalog_number = '344'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '252W' AND b.subject = 'MGMT' AND b.catalog_number = '244'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '252W' AND b.subject = 'MGMT' AND b.catalog_number = '344'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '255W' AND b.subject = 'ECON' AND b.catalog_number = '205W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '275W' AND b.subject = 'CO' AND b.catalog_number = '227'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '275W' AND b.subject = 'CO' AND b.catalog_number = '250'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '275W' AND b.subject = 'CO' AND b.catalog_number = '255'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '275W' AND b.subject = 'CO' AND b.catalog_number = '350'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '275W' AND b.subject = 'CO' AND b.catalog_number = '355'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '275W' AND b.subject = 'MSCI' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '283W' AND b.subject = 'COMM' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '283W' AND b.subject = 'ECON' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '283W' AND b.subject = 'MATBUS' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '285W' AND b.subject = 'BUS' AND b.catalog_number = '385W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '285W' AND b.subject = 'BUS' AND b.catalog_number = '395W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '288W' AND b.subject = 'MSE' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '288W' AND b.subject = 'MSE' AND b.catalog_number = '311'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '288W' AND b.subject = 'PSYCH' AND b.catalog_number = '238'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '311W' AND b.subject = 'BUS' AND b.catalog_number = '440W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '321W' AND b.subject = 'BUS' AND b.catalog_number = '461W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '352W' AND b.subject = 'ECON' AND b.catalog_number = '344'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '352W' AND b.subject = 'ENBUS' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '352W' AND b.subject = 'MGMT' AND b.catalog_number = '244'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '352W' AND b.subject = 'MGMT' AND b.catalog_number = '344'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '353W' AND b.subject = 'MTHEL' AND b.catalog_number = '305A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '353W' AND b.subject = 'MTHEL' AND b.catalog_number = '305B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '354W' AND b.subject = 'HRM' AND b.catalog_number = '200';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '354W' AND b.subject = 'PSYCH' AND b.catalog_number = '339'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '357W' AND b.subject = 'COMM' AND b.catalog_number = '433'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '375W' AND b.subject = 'BUS' AND b.catalog_number = '385W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '375W' AND b.subject = 'BUS' AND b.catalog_number = '395W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '385W' AND b.subject = 'MSCI' AND b.catalog_number = '432'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '387W' AND b.subject = 'COMM' AND b.catalog_number = '321'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '388W' AND b.subject = 'PSYCH' AND b.catalog_number = '238'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '395W' AND b.subject = 'MSCI' AND b.catalog_number = '432'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '397W' AND b.subject = 'COMM' AND b.catalog_number = '321'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '398W' AND b.subject = 'MSCI' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '398W' AND b.subject = 'MSCI' AND b.catalog_number = '311'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '398W' AND b.subject = 'PSYCH' AND b.catalog_number = '238'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '408W' AND b.subject = 'PSYCH' AND b.catalog_number = '339'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '409W' AND b.subject = 'BUS' AND b.catalog_number = '492HW'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '414W' AND b.subject = 'HRM' AND b.catalog_number = '305'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '415W' AND b.subject = 'BUS' AND b.catalog_number = '476W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '415W' AND b.subject = 'BUS' AND b.catalog_number = '486W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '415W' AND b.subject = 'CS' AND b.catalog_number = '330'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '415W' AND b.subject = 'CS' AND b.catalog_number = '480'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '415W' AND b.subject = 'CS' AND b.catalog_number = '490'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '415W' AND b.subject = 'MSCI' AND b.catalog_number = '444'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '417W' AND b.subject = 'COMM' AND b.catalog_number = '421'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '418W' AND b.subject = 'HRM' AND b.catalog_number = '301'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '423W' AND b.subject = 'ECON' AND b.catalog_number = '372'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '423W' AND b.subject = 'MATBUS' AND b.catalog_number = '470'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '423W' AND b.subject = 'STAT' AND b.catalog_number = '446'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '427W' AND b.subject = 'BUS' AND b.catalog_number = '457W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '427W' AND b.subject = 'BUS' AND b.catalog_number = '487W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '430W' AND b.subject = 'BUS' AND b.catalog_number = '493UW'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '433W' AND b.subject = 'MATBUS' AND b.catalog_number = '472'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '435W' AND b.subject = 'MSE' AND b.catalog_number = '434'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '440W' AND b.subject = 'COMM' AND b.catalog_number = '400'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '440W' AND b.subject = 'MTHEL' AND b.catalog_number = '400'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '442W' AND b.subject = 'BUS' AND b.catalog_number = '492W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '443W' AND b.subject = 'ECON' AND b.catalog_number = '332'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '448W' AND b.subject = 'HRM' AND b.catalog_number = '303'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '449W' AND b.subject = 'MATBUS' AND b.catalog_number = '471'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '454W' AND b.subject = 'HRM' AND b.catalog_number = '200'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '454W' AND b.subject = 'PSYCH' AND b.catalog_number = '339'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '456W' AND b.subject = 'BUS' AND b.catalog_number = '486W';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '459W' AND b.subject = 'BUS' AND b.catalog_number = '492KW'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '461QW' AND b.subject = 'PHIL' AND b.catalog_number = '215'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '461RW' AND b.subject = 'ECON' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '464W' AND b.subject = 'HRM' AND b.catalog_number = '307'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '474W' AND b.subject = 'PSYCH' AND b.catalog_number = '340'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '476W' AND b.subject = 'BUS' AND b.catalog_number = '486W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '476W' AND b.subject = 'CS' AND b.catalog_number = '330'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '476W' AND b.subject = 'CS' AND b.catalog_number = '480'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '476W' AND b.subject = 'CS' AND b.catalog_number = '490'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '476W' AND b.subject = 'MSCI' AND b.catalog_number = '441'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '486W' AND b.subject = 'CS' AND b.catalog_number = '330'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '486W' AND b.subject = 'CS' AND b.catalog_number = '490'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'BUS' AND a.catalog_number = '498KW' AND b.subject = 'PSYCH' AND b.catalog_number = '339'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CDNST' AND a.catalog_number = '244' AND b.subject = 'RS' AND b.catalog_number = '319'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CFM' AND a.catalog_number = '101' AND b.subject = 'COMM' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '102' AND b.subject = 'ENVE' AND b.catalog_number = '175'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '102' AND b.subject = 'NE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '120' AND b.subject = 'CS' AND b.catalog_number = '114'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '121' AND b.subject = 'CS' AND b.catalog_number = '105'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '121' AND b.subject = 'CS' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '161' AND b.subject = 'NE' AND b.catalog_number = '281'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '220' AND b.subject = 'CIVE' AND b.catalog_number = '224'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '220' AND b.subject = 'ENVE' AND b.catalog_number = '224'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '220' AND b.subject = 'GEOE' AND b.catalog_number = '224'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '220' AND b.subject = 'MSE' AND b.catalog_number = '251'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '220' AND b.subject = 'NE' AND b.catalog_number = '215'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '241' AND b.subject = 'NE' AND b.catalog_number = '125'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '253' AND b.subject = 'MSE' AND b.catalog_number = '446'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '330' AND b.subject = 'ENVE' AND b.catalog_number = '279'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '331' AND b.subject = 'NE' AND b.catalog_number = '496'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '380' AND b.subject = 'MSE' AND b.catalog_number = '261'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '516' AND b.subject = 'ME' AND b.catalog_number = '459'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '521' AND b.subject = 'MSE' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '521' AND b.subject = 'SYDE' AND b.catalog_number = '411'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '523' AND b.subject = 'ECE' AND b.catalog_number = '457B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '523' AND b.subject = 'MSE' AND b.catalog_number = '446'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '523' AND b.subject = 'SYDE' AND b.catalog_number = '522'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '541' AND b.subject = 'CHEM' AND b.catalog_number = '370'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '541' AND b.subject = 'NE' AND b.catalog_number = '333'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHE' AND a.catalog_number = '541' AND b.subject = 'NE' AND b.catalog_number = '335';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '120' AND b.subject = 'CHEM' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '120' AND b.subject = 'ECE' AND b.catalog_number = '109'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '120' AND b.subject = 'NE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '120L' AND b.subject = 'CHEM' AND b.catalog_number = '121L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '123' AND b.subject = 'CHEM' AND b.catalog_number = '125'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '123' AND b.subject = 'NE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '123L' AND b.subject = 'CHEM' AND b.catalog_number = '125L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '233' AND b.subject = 'CHEM' AND b.catalog_number = '237'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '233' AND b.subject = 'NE' AND b.catalog_number = '224'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '233' AND b.subject = 'NE' AND b.catalog_number = '381'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '233L' AND b.subject = 'CHEM' AND b.catalog_number = '237L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '237' AND b.subject = 'NE' AND b.catalog_number = '224'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '237' AND b.subject = 'NE' AND b.catalog_number = '381'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '254' AND b.subject = 'ECE' AND b.catalog_number = '403'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '254' AND b.subject = 'PHYS' AND b.catalog_number = '357'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '254' AND b.subject = 'PHYS' AND b.catalog_number = '358'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '262' AND b.subject = 'CHEM' AND b.catalog_number = '264'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '262' AND b.subject = 'CHEM' AND b.catalog_number = '266'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '262' AND b.subject = 'NE' AND b.catalog_number = '122'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '262' AND b.subject = 'NE' AND b.catalog_number = '222'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '264' AND b.subject = 'CHEM' AND b.catalog_number = '266'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '264' AND b.subject = 'NE' AND b.catalog_number = '122'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '264' AND b.subject = 'NE' AND b.catalog_number = '222'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '265' AND b.subject = 'CHEM' AND b.catalog_number = '267'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '266' AND b.subject = 'NE' AND b.catalog_number = '222'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '331' AND b.subject = 'CHEM' AND b.catalog_number = '333'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '356' AND b.subject = 'NE' AND b.catalog_number = '332'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '356' AND b.subject = 'PHYS' AND b.catalog_number = '233'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '356' AND b.subject = 'PHYS' AND b.catalog_number = '234'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '370' AND b.subject = 'MNS' AND b.catalog_number = '322'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHEM' AND a.catalog_number = '370' AND b.subject = 'NE' AND b.catalog_number = '333'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHINA' AND a.catalog_number = '101R' AND b.subject = 'CHINA' AND b.catalog_number = '120R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CHINA' AND a.catalog_number = '102R' AND b.subject = 'CHINA' AND b.catalog_number = '120R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '104' AND b.subject = 'NE' AND b.catalog_number = '131'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '104' AND b.subject = 'PHYS' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '105' AND b.subject = 'MTE' AND b.catalog_number = '119'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '106'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '114'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '136';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '146'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '121' AND b.subject = 'CS' AND b.catalog_number = '105'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '121' AND b.subject = 'CS' AND b.catalog_number = '106'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '121' AND b.subject = 'CS' AND b.catalog_number = '114'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '121' AND b.subject = 'CS' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '121' AND b.subject = 'CS' AND b.catalog_number = '135'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '121' AND b.subject = 'CS' AND b.catalog_number = '370'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '121' AND b.subject = 'ECE' AND b.catalog_number = '150'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '121' AND b.subject = 'GENE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '121' AND b.subject = 'MTE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '121' AND b.subject = 'NE' AND b.catalog_number = '113'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '121' AND b.subject = 'SYDE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '123' AND b.subject = 'ECE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '123' AND b.subject = 'GENE' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '123' AND b.subject = 'ME' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '123' AND b.subject = 'NE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '153' AND b.subject = 'EARTH' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '204' AND b.subject = 'MTE' AND b.catalog_number = '219'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '204' AND b.subject = 'SYDE' AND b.catalog_number = '286'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '221' AND b.subject = 'ENVE' AND b.catalog_number = '225'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '221' AND b.subject = 'MATH' AND b.catalog_number = '217'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '222' AND b.subject = 'ENVE' AND b.catalog_number = '223'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '222' AND b.subject = 'GEOE' AND b.catalog_number = '223'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '222' AND b.subject = 'MATH' AND b.catalog_number = '218'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '224' AND b.subject = 'ENVE' AND b.catalog_number = '224'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '224' AND b.subject = 'GEOE' AND b.catalog_number = '224'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '224' AND b.subject = 'MSE' AND b.catalog_number = '251'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '224' AND b.subject = 'MTE' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '224' AND b.subject = 'NE' AND b.catalog_number = '215'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '224' AND b.subject = 'SYDE' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '265' AND b.subject = 'NE' AND b.catalog_number = '125'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '280' AND b.subject = 'ENVE' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '280' AND b.subject = 'GEOE' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '280' AND b.subject = 'ME' AND b.catalog_number = '351'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '310' AND b.subject = 'CIVE' AND b.catalog_number = '311'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '332' AND b.subject = 'ENVE' AND b.catalog_number = '335'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '332' AND b.subject = 'MSE' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '332' AND b.subject = 'SYDE' AND b.catalog_number = '411'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '375' AND b.subject = 'ENVE' AND b.catalog_number = '375'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '392' AND b.subject = 'MSE' AND b.catalog_number = '261';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '392' AND b.subject = 'SYDE' AND b.catalog_number = '262'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '422' AND b.subject = 'CIVE' AND b.catalog_number = '622'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '422' AND b.subject = 'ME' AND b.catalog_number = '559'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '491' AND b.subject = 'COMM' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '491' AND b.subject = 'ENVS' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '491' AND b.subject = 'LS' AND b.catalog_number = '283'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '491' AND b.subject = 'ME' AND b.catalog_number = '401'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '497' AND b.subject = 'ENVE' AND b.catalog_number = '418'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CIVE' AND a.catalog_number = '611' AND b.subject = 'CIVE' AND b.catalog_number = '622'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CLAS' AND a.catalog_number = '241' AND b.subject = 'FINE' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CLAS' AND a.catalog_number = '242' AND b.subject = 'FINE' AND b.catalog_number = '242'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CLAS' AND a.catalog_number = '261' AND b.subject = 'PHIL' AND b.catalog_number = '250A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CLAS' AND a.catalog_number = '341' AND b.subject = 'FINE' AND b.catalog_number = '341'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CLAS' AND a.catalog_number = '342' AND b.subject = 'FINE' AND b.catalog_number = '342'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CM' AND a.catalog_number = '372' AND b.subject = 'CS' AND b.catalog_number = '675'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CM' AND a.catalog_number = '461' AND b.subject = 'CM' AND b.catalog_number = '761'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CM' AND a.catalog_number = '461' AND b.subject = 'STAT' AND b.catalog_number = '840'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CM' AND a.catalog_number = '462' AND b.subject = 'CM' AND b.catalog_number = '762'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CM' AND a.catalog_number = '462' AND b.subject = 'STAT' AND b.catalog_number = '842'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CM' AND a.catalog_number = '463' AND b.subject = 'CM' AND b.catalog_number = '763'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CM' AND a.catalog_number = '463' AND b.subject = 'STAT' AND b.catalog_number = '841'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CM' AND a.catalog_number = '464' AND b.subject = 'CM' AND b.catalog_number = '764'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CM' AND a.catalog_number = '464' AND b.subject = 'STAT' AND b.catalog_number = '844'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CM' AND a.catalog_number = '761' AND b.subject = 'STAT' AND b.catalog_number = '440'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CM' AND a.catalog_number = '762' AND b.subject = 'STAT' AND b.catalog_number = '442'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CM' AND a.catalog_number = '763' AND b.subject = 'STAT' AND b.catalog_number = '441'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CM' AND a.catalog_number = '764' AND b.subject = 'STAT' AND b.catalog_number = '444'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CMW' AND a.catalog_number = '363' AND b.subject = 'TS' AND b.catalog_number = '652'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CO' AND a.catalog_number = '227' AND b.subject = 'CO' AND b.catalog_number = '250'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CO' AND a.catalog_number = '227' AND b.subject = 'CO' AND b.catalog_number = '255'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CO' AND a.catalog_number = '250' AND b.subject = 'CO' AND b.catalog_number = '255'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CO' AND a.catalog_number = '250' AND b.subject = 'MSE' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CO' AND a.catalog_number = '327' AND b.subject = 'CO' AND b.catalog_number = '370'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CO' AND a.catalog_number = '327' AND b.subject = 'MSE' AND b.catalog_number = '332'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CO' AND a.catalog_number = '454' AND b.subject = 'MSE' AND b.catalog_number = '555'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CO' AND a.catalog_number = '456' AND b.subject = 'ECE' AND b.catalog_number = '407'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CO' AND a.catalog_number = '487' AND b.subject = 'ECE' AND b.catalog_number = '409'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'COMM' AND a.catalog_number = '103' AND b.subject = 'ECON' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'COMM' AND a.catalog_number = '103' AND b.subject = 'ECON' AND b.catalog_number = '102'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'COMM' AND a.catalog_number = '231' AND b.subject = 'LS' AND b.catalog_number = '283';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'COMMST' AND a.catalog_number = '111' AND b.subject = 'COMMST' AND b.catalog_number = '204'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'COMMST' AND a.catalog_number = '191' AND b.subject = 'GENE' AND b.catalog_number = '199'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'COMMST' AND a.catalog_number = '192' AND b.subject = 'GENE' AND b.catalog_number = '191'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'COMMST' AND a.catalog_number = '192' AND b.subject = 'UCR' AND b.catalog_number = '192E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'COMMST' AND a.catalog_number = '235' AND b.subject = 'SOC' AND b.catalog_number = '225'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'COMMST' AND a.catalog_number = '479' AND b.subject = 'GEOG' AND b.catalog_number = '417'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '105' AND b.subject = 'CS' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '105' AND b.subject = 'CS' AND b.catalog_number = '135'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '105' AND b.subject = 'CS' AND b.catalog_number = '137'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '105' AND b.subject = 'CS' AND b.catalog_number = '145'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '105' AND b.subject = 'ECE' AND b.catalog_number = '150'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '105' AND b.subject = 'GENE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '105' AND b.subject = 'MSE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '105' AND b.subject = 'MTE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '105' AND b.subject = 'NE' AND b.catalog_number = '111'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '105' AND b.subject = 'PHYS' AND b.catalog_number = '236'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '105' AND b.subject = 'SYDE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '106' AND b.subject = 'CS' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '106' AND b.subject = 'CS' AND b.catalog_number = '135'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '106' AND b.subject = 'CS' AND b.catalog_number = '137'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '106' AND b.subject = 'CS' AND b.catalog_number = '145'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '106' AND b.subject = 'ECE' AND b.catalog_number = '150'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '106' AND b.subject = 'MSCI' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '106' AND b.subject = 'MSE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '106' AND b.subject = 'MTE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '106' AND b.subject = 'NE' AND b.catalog_number = '111'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '106' AND b.subject = 'SYDE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '114' AND b.subject = 'CS' AND b.catalog_number = '116'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '114' AND b.subject = 'CS' AND b.catalog_number = '135'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '114' AND b.subject = 'CS' AND b.catalog_number = '136'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '114' AND b.subject = 'CS' AND b.catalog_number = '137'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '114' AND b.subject = 'CS' AND b.catalog_number = '138'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '114' AND b.subject = 'CS' AND b.catalog_number = '145'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '114' AND b.subject = 'CS' AND b.catalog_number = '146'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '114' AND b.subject = 'ECE' AND b.catalog_number = '150'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '114' AND b.subject = 'ME' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '114' AND b.subject = 'MSCI' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '114' AND b.subject = 'MSE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '114' AND b.subject = 'MTE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '114' AND b.subject = 'NE' AND b.catalog_number = '111';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '114' AND b.subject = 'PHYS' AND b.catalog_number = '236'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '114' AND b.subject = 'SYDE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '115' AND b.subject = 'CS' AND b.catalog_number = '135'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '115' AND b.subject = 'CS' AND b.catalog_number = '137'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '115' AND b.subject = 'CS' AND b.catalog_number = '138'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '115' AND b.subject = 'CS' AND b.catalog_number = '145'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '115' AND b.subject = 'ECE' AND b.catalog_number = '150'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '115' AND b.subject = 'GENE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '115' AND b.subject = 'ME' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '115' AND b.subject = 'MSE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '115' AND b.subject = 'MTE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '115' AND b.subject = 'NE' AND b.catalog_number = '111'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '115' AND b.subject = 'NE' AND b.catalog_number = '113'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '115' AND b.subject = 'PHYS' AND b.catalog_number = '139'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '115' AND b.subject = 'SYDE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '116' AND b.subject = 'CS' AND b.catalog_number = '136'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '116' AND b.subject = 'CS' AND b.catalog_number = '137'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '116' AND b.subject = 'CS' AND b.catalog_number = '138'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '116' AND b.subject = 'CS' AND b.catalog_number = '146'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '116' AND b.subject = 'MSE' AND b.catalog_number = '240'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '116' AND b.subject = 'NE' AND b.catalog_number = '111'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '116' AND b.subject = 'PHYS' AND b.catalog_number = '236'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '116' AND b.subject = 'PHYS' AND b.catalog_number = '239'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '135' AND b.subject = 'CS' AND b.catalog_number = '137'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '135' AND b.subject = 'CS' AND b.catalog_number = '138'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '135' AND b.subject = 'CS' AND b.catalog_number = '145'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '135' AND b.subject = 'ECE' AND b.catalog_number = '150'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '135' AND b.subject = 'ME' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '135' AND b.subject = 'MSE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '135' AND b.subject = 'NE' AND b.catalog_number = '113'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '135' AND b.subject = 'PHYS' AND b.catalog_number = '236'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '135' AND b.subject = 'SYDE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '136' AND b.subject = 'CS' AND b.catalog_number = '137'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '136' AND b.subject = 'CS' AND b.catalog_number = '138'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '136' AND b.subject = 'CS' AND b.catalog_number = '146'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '136' AND b.subject = 'PHYS' AND b.catalog_number = '239'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '137' AND b.subject = 'CS' AND b.catalog_number = '145'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '137' AND b.subject = 'CS' AND b.catalog_number = '146'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '138' AND b.subject = 'CS' AND b.catalog_number = '145'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '138' AND b.subject = 'CS' AND b.catalog_number = '146';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '145' AND b.subject = 'NE' AND b.catalog_number = '113'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '230' AND b.subject = 'CS' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '230' AND b.subject = 'CS' AND b.catalog_number = '241E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '230' AND b.subject = 'CS' AND b.catalog_number = '251'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '230' AND b.subject = 'CS' AND b.catalog_number = '251E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '230' AND b.subject = 'SYDE' AND b.catalog_number = '192'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '231' AND b.subject = 'CS' AND b.catalog_number = '341'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '231' AND b.subject = 'ECE' AND b.catalog_number = '250'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '231' AND b.subject = 'MSE' AND b.catalog_number = '240'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '231' AND b.subject = 'MTE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '231' AND b.subject = 'SYDE' AND b.catalog_number = '223'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '234' AND b.subject = 'CS' AND b.catalog_number = '240'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '234' AND b.subject = 'CS' AND b.catalog_number = '240E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '234' AND b.subject = 'ECE' AND b.catalog_number = '250'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '234' AND b.subject = 'MSE' AND b.catalog_number = '240'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '234' AND b.subject = 'MTE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '234' AND b.subject = 'SYDE' AND b.catalog_number = '223'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '240' AND b.subject = 'CS' AND b.catalog_number = '240E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '240' AND b.subject = 'ECE' AND b.catalog_number = '250'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '240' AND b.subject = 'MSE' AND b.catalog_number = '240'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '240' AND b.subject = 'MTE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '240' AND b.subject = 'SYDE' AND b.catalog_number = '223'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '240E' AND b.subject = 'ECE' AND b.catalog_number = '250'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '240E' AND b.subject = 'MSE' AND b.catalog_number = '240'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '240E' AND b.subject = 'MTE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '240E' AND b.subject = 'SYDE' AND b.catalog_number = '223'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '241' AND b.subject = 'CS' AND b.catalog_number = '241E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '241' AND b.subject = 'ECE' AND b.catalog_number = '351'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '241E' AND b.subject = 'ECE' AND b.catalog_number = '351'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '245' AND b.subject = 'CS' AND b.catalog_number = '245E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '245' AND b.subject = 'ECE' AND b.catalog_number = '208'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '245' AND b.subject = 'PMATH' AND b.catalog_number = '330'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '245' AND b.subject = 'SE' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '245E' AND b.subject = 'ECE' AND b.catalog_number = '208'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '245E' AND b.subject = 'PMATH' AND b.catalog_number = '330'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '245E' AND b.subject = 'SE' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '246' AND b.subject = 'CS' AND b.catalog_number = '246E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '246' AND b.subject = 'CS' AND b.catalog_number = '247'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '246' AND b.subject = 'MSE' AND b.catalog_number = '342'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '246' AND b.subject = 'SYDE' AND b.catalog_number = '322';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '246E' AND b.subject = 'CS' AND b.catalog_number = '247'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '246E' AND b.subject = 'SYDE' AND b.catalog_number = '322'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '247' AND b.subject = 'MSE' AND b.catalog_number = '342'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '247' AND b.subject = 'SYDE' AND b.catalog_number = '322'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '251' AND b.subject = 'CS' AND b.catalog_number = '251E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '251' AND b.subject = 'ECE' AND b.catalog_number = '222'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '251' AND b.subject = 'ME' AND b.catalog_number = '262'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '251' AND b.subject = 'MTE' AND b.catalog_number = '262'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '251' AND b.subject = 'SYDE' AND b.catalog_number = '192'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '251E' AND b.subject = 'ECE' AND b.catalog_number = '222'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '251E' AND b.subject = 'ME' AND b.catalog_number = '262'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '251E' AND b.subject = 'MTE' AND b.catalog_number = '262'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '251E' AND b.subject = 'SYDE' AND b.catalog_number = '192'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '330' AND b.subject = 'CS' AND b.catalog_number = '480'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '330' AND b.subject = 'CS' AND b.catalog_number = '490'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '330' AND b.subject = 'MSCI' AND b.catalog_number = '441'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '335' AND b.subject = 'CS' AND b.catalog_number = '370'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '335' AND b.subject = 'CS' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '335' AND b.subject = 'MTE' AND b.catalog_number = '204'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '338' AND b.subject = 'CS' AND b.catalog_number = '348'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '338' AND b.subject = 'CS' AND b.catalog_number = '448'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '338' AND b.subject = 'MSE' AND b.catalog_number = '245'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '341' AND b.subject = 'ECE' AND b.catalog_number = '250'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '341' AND b.subject = 'ECE' AND b.catalog_number = '406'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '343' AND b.subject = 'ECE' AND b.catalog_number = '252'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '348' AND b.subject = 'ECE' AND b.catalog_number = '356'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '348' AND b.subject = 'MSE' AND b.catalog_number = '245'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '350' AND b.subject = 'ECE' AND b.catalog_number = '252'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '350' AND b.subject = 'ECE' AND b.catalog_number = '254'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '350' AND b.subject = 'ECE' AND b.catalog_number = '350'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '350' AND b.subject = 'MTE' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '350' AND b.subject = 'SE' AND b.catalog_number = '350'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '360' AND b.subject = 'CS' AND b.catalog_number = '365'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '370' AND b.subject = 'CS' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '370' AND b.subject = 'ECE' AND b.catalog_number = '204'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '370' AND b.subject = 'MTE' AND b.catalog_number = '204'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '371' AND b.subject = 'ECE' AND b.catalog_number = '204'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '372' AND b.subject = 'CS' AND b.catalog_number = '675'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '430' AND b.subject = 'CS' AND b.catalog_number = '446'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '430' AND b.subject = 'ECE' AND b.catalog_number = '452';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '430' AND b.subject = 'SE' AND b.catalog_number = '464'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '431' AND b.subject = 'CS' AND b.catalog_number = '451'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '436' AND b.subject = 'CS' AND b.catalog_number = '454'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '436' AND b.subject = 'CS' AND b.catalog_number = '456'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '436' AND b.subject = 'ECE' AND b.catalog_number = '454'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '445' AND b.subject = 'ECE' AND b.catalog_number = '651'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '445' AND b.subject = 'SE' AND b.catalog_number = '463'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '446' AND b.subject = 'ECE' AND b.catalog_number = '651'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '446' AND b.subject = 'SE' AND b.catalog_number = '464'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '447' AND b.subject = 'ECE' AND b.catalog_number = '653'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '447' AND b.subject = 'SE' AND b.catalog_number = '465'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '449' AND b.subject = 'MSE' AND b.catalog_number = '343'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '449' AND b.subject = 'SYDE' AND b.catalog_number = '548'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '450' AND b.subject = 'ECE' AND b.catalog_number = '320'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '450' AND b.subject = 'ECE' AND b.catalog_number = '429'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '450' AND b.subject = 'ECE' AND b.catalog_number = '621'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '453' AND b.subject = 'CS' AND b.catalog_number = '489'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '454' AND b.subject = 'CS' AND b.catalog_number = '755'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '454' AND b.subject = 'ECE' AND b.catalog_number = '454'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '456' AND b.subject = 'CS' AND b.catalog_number = '755'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '456' AND b.subject = 'ECE' AND b.catalog_number = '358'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '456' AND b.subject = 'ECE' AND b.catalog_number = '416'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '458' AND b.subject = 'ECE' AND b.catalog_number = '409'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '459' AND b.subject = 'CS' AND b.catalog_number = '489'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '466' AND b.subject = 'ECE' AND b.catalog_number = '406'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '472' AND b.subject = 'CS' AND b.catalog_number = '675'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '479' AND b.subject = 'CS' AND b.catalog_number = '679'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '479' AND b.subject = 'ECE' AND b.catalog_number = '457D'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '480' AND b.subject = 'ECE' AND b.catalog_number = '657'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '480' AND b.subject = 'GEOG' AND b.catalog_number = '484'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '480' AND b.subject = 'MSCI' AND b.catalog_number = '446'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '480' AND b.subject = 'MSE' AND b.catalog_number = '446'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '480' AND b.subject = 'SYDE' AND b.catalog_number = '321'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '480' AND b.subject = 'SYDE' AND b.catalog_number = '522'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '486' AND b.subject = 'ECE' AND b.catalog_number = '457B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '486' AND b.subject = 'ECE' AND b.catalog_number = '657A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '486' AND b.subject = 'SYDE' AND b.catalog_number = '522'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '645' AND b.subject = 'ECE' AND b.catalog_number = '651'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '645' AND b.subject = 'HLTH' AND b.catalog_number = '615'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '646' AND b.subject = 'ECE' AND b.catalog_number = '651';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '647' AND b.subject = 'ECE' AND b.catalog_number = '653'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '649' AND b.subject = 'MSE' AND b.catalog_number = '630'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '649' AND b.subject = 'SYDE' AND b.catalog_number = '348'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '649' AND b.subject = 'SYDE' AND b.catalog_number = '548'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '650' AND b.subject = 'ECE' AND b.catalog_number = '621'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '654' AND b.subject = 'CS' AND b.catalog_number = '755'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '654' AND b.subject = 'ECE' AND b.catalog_number = '454'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '656' AND b.subject = 'CS' AND b.catalog_number = '755'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '664' AND b.subject = 'CS' AND b.catalog_number = '764'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '679' AND b.subject = 'CS' AND b.catalog_number = '779'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '680' AND b.subject = 'ECE' AND b.catalog_number = '657'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '680' AND b.subject = 'MSE' AND b.catalog_number = '623'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '684' AND b.subject = 'CS' AND b.catalog_number = '784'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '685' AND b.subject = 'CS' AND b.catalog_number = '785'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '686' AND b.subject = 'ECE' AND b.catalog_number = '657A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '698Q' AND b.subject = 'CS' AND b.catalog_number = '787'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '741' AND b.subject = 'CS' AND b.catalog_number = '748O'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '741' AND b.subject = 'CS' AND b.catalog_number = '748S'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '760K' AND b.subject = 'CS' AND b.catalog_number = '762'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '760M' AND b.subject = 'CS' AND b.catalog_number = '763'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '770G' AND b.subject = 'CS' AND b.catalog_number = '775'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'CS' AND a.catalog_number = '786' AND b.subject = 'CS' AND b.catalog_number = '786P'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'DAC' AND a.catalog_number = '201' AND b.subject = 'FINE' AND b.catalog_number = '228'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'DAC' AND a.catalog_number = '201' AND b.subject = 'GBDA' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'DAC' AND a.catalog_number = '202' AND b.subject = 'GBDA' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'DAC' AND a.catalog_number = '202' AND b.subject = 'GBDA' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'DAC' AND a.catalog_number = '309' AND b.subject = 'GBDA' AND b.catalog_number = '210'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EARTH' AND a.catalog_number = '121' AND b.subject = 'ENVE' AND b.catalog_number = '153'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EARTH' AND a.catalog_number = '121' AND b.subject = 'GEOE' AND b.catalog_number = '153'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EARTH' AND a.catalog_number = '122' AND b.subject = 'ENVS' AND b.catalog_number = '195'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EARTH' AND a.catalog_number = '305' AND b.subject = 'EARTH' AND b.catalog_number = '358'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EARTH' AND a.catalog_number = '305' AND b.subject = 'SCI' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EARTH' AND a.catalog_number = '343' AND b.subject = 'EARTH' AND b.catalog_number = '491'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EARTH' AND a.catalog_number = '358' AND b.subject = 'SCI' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EARTH' AND a.catalog_number = '444' AND b.subject = 'GEOG' AND b.catalog_number = '405'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EASIA' AND a.catalog_number = '100R' AND b.subject = 'EASIA' AND b.catalog_number = '201R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EASIA' AND a.catalog_number = '231R' AND b.subject = 'FINE' AND b.catalog_number = '204'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EASIA' AND a.catalog_number = '231R' AND b.subject = 'FINE' AND b.catalog_number = '275'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EASIA' AND a.catalog_number = '231R' AND b.subject = 'SI' AND b.catalog_number = '375R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '100A' AND b.subject = 'ECE' AND b.catalog_number = '190';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '103' AND b.subject = 'ECE' AND b.catalog_number = '108'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '105' AND b.subject = 'NE' AND b.catalog_number = '131'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '105' AND b.subject = 'PHYS' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '106' AND b.subject = 'NE' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '106' AND b.subject = 'PHYS' AND b.catalog_number = '112'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '106' AND b.subject = 'PHYS' AND b.catalog_number = '112L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '108' AND b.subject = 'ECE' AND b.catalog_number = '155'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '108' AND b.subject = 'MATH' AND b.catalog_number = '229'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '108' AND b.subject = 'MATH' AND b.catalog_number = '239'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '108' AND b.subject = 'MATH' AND b.catalog_number = '249'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '108' AND b.subject = 'SYDE' AND b.catalog_number = '208'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '140' AND b.subject = 'ENVE' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '140' AND b.subject = 'GENE' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '140' AND b.subject = 'GEOE' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '140' AND b.subject = 'ME' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '140' AND b.subject = 'MTE' AND b.catalog_number = '120'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '140' AND b.subject = 'NE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '150' AND b.subject = 'ENVE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '150' AND b.subject = 'GEOE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '150' AND b.subject = 'MSE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '150' AND b.subject = 'MTE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '150' AND b.subject = 'NE' AND b.catalog_number = '113'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '150' AND b.subject = 'SYDE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '203' AND b.subject = 'ECE' AND b.catalog_number = '306'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '203' AND b.subject = 'ECE' AND b.catalog_number = '316'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '203' AND b.subject = 'MSE' AND b.catalog_number = '251'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '204' AND b.subject = 'ECE' AND b.catalog_number = '204A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '204' AND b.subject = 'ECE' AND b.catalog_number = '204B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '204' AND b.subject = 'MTE' AND b.catalog_number = '204'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '205' AND b.subject = 'MATH' AND b.catalog_number = '213'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '205' AND b.subject = 'MATH' AND b.catalog_number = '218'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '206' AND b.subject = 'MATH' AND b.catalog_number = '217'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '206' AND b.subject = 'MATH' AND b.catalog_number = '227'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '206' AND b.subject = 'MATH' AND b.catalog_number = '237'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '208' AND b.subject = 'SE' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '218' AND b.subject = 'MATH' AND b.catalog_number = '213'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '222' AND b.subject = 'MTE' AND b.catalog_number = '262'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '224' AND b.subject = 'MTE' AND b.catalog_number = '325'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '228' AND b.subject = 'MATH' AND b.catalog_number = '213'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '231' AND b.subject = 'NE' AND b.catalog_number = '242';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '240' AND b.subject = 'NE' AND b.catalog_number = '344'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '242' AND b.subject = 'ECE' AND b.catalog_number = '340'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '242' AND b.subject = 'NE' AND b.catalog_number = '344'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '250' AND b.subject = 'MSE' AND b.catalog_number = '240'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '250' AND b.subject = 'MTE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '250' AND b.subject = 'SYDE' AND b.catalog_number = '223'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '252' AND b.subject = 'SE' AND b.catalog_number = '350'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '254' AND b.subject = 'MTE' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '254' AND b.subject = 'SE' AND b.catalog_number = '350'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '260' AND b.subject = 'ECE' AND b.catalog_number = '361'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '260' AND b.subject = 'ME' AND b.catalog_number = '269'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '260' AND b.subject = 'MTE' AND b.catalog_number = '320'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '290' AND b.subject = 'PD' AND b.catalog_number = '22'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '305' AND b.subject = 'PHYS' AND b.catalog_number = '234'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '306' AND b.subject = 'MSE' AND b.catalog_number = '251'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '307' AND b.subject = 'MSE' AND b.catalog_number = '253'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '307' AND b.subject = 'STAT' AND b.catalog_number = '330'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '307' AND b.subject = 'STAT' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '307' AND b.subject = 'STAT' AND b.catalog_number = '332'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '309' AND b.subject = 'ENVE' AND b.catalog_number = '279'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '313' AND b.subject = 'ECE' AND b.catalog_number = '413'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '316' AND b.subject = 'SYDE' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '320' AND b.subject = 'ECE' AND b.catalog_number = '429'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '320' AND b.subject = 'ECE' AND b.catalog_number = '621'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '327' AND b.subject = 'ECE' AND b.catalog_number = '627'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '340' AND b.subject = 'NE' AND b.catalog_number = '344'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '350' AND b.subject = 'SE' AND b.catalog_number = '350'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '355' AND b.subject = 'ECE' AND b.catalog_number = '651'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '360' AND b.subject = 'ECE' AND b.catalog_number = '361'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '373' AND b.subject = 'ECE' AND b.catalog_number = '473'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '380' AND b.subject = 'ME' AND b.catalog_number = '360'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '380' AND b.subject = 'MTE' AND b.catalog_number = '360'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '380' AND b.subject = 'SE' AND b.catalog_number = '380'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '380' AND b.subject = 'SYDE' AND b.catalog_number = '352'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '390' AND b.subject = 'MSE' AND b.catalog_number = '261'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '403' AND b.subject = 'ME' AND b.catalog_number = '250'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '403' AND b.subject = 'ME' AND b.catalog_number = '354'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '403' AND b.subject = 'MTE' AND b.catalog_number = '309'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '403' AND b.subject = 'PHYS' AND b.catalog_number = '357'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '403' AND b.subject = 'PHYS' AND b.catalog_number = '358';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '403' AND b.subject = 'SYDE' AND b.catalog_number = '381'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '404' AND b.subject = 'PHYS' AND b.catalog_number = '256'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '404' AND b.subject = 'PHYS' AND b.catalog_number = '356'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '405' AND b.subject = 'NE' AND b.catalog_number = '332'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '405' AND b.subject = 'PHYS' AND b.catalog_number = '233'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '405' AND b.subject = 'PHYS' AND b.catalog_number = '234'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '405A' AND b.subject = 'PHYS' AND b.catalog_number = '468'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '405B' AND b.subject = 'ECE' AND b.catalog_number = '676B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '405B' AND b.subject = 'PHYS' AND b.catalog_number = '468'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '405C' AND b.subject = 'ECE' AND b.catalog_number = '676C'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '405C' AND b.subject = 'PHYS' AND b.catalog_number = '468'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '405D' AND b.subject = 'ECE' AND b.catalog_number = '676D'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '405D' AND b.subject = 'PHYS' AND b.catalog_number = '468'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '406' AND b.subject = 'ECE' AND b.catalog_number = '606'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '406' AND b.subject = 'SYDE' AND b.catalog_number = '423'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '407' AND b.subject = 'ECE' AND b.catalog_number = '493'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '407' AND b.subject = 'ECE' AND b.catalog_number = '752'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '407' AND b.subject = 'ECON' AND b.catalog_number = '412'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '414' AND b.subject = 'ECE' AND b.catalog_number = '614'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '417' AND b.subject = 'ECE' AND b.catalog_number = '613'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '417' AND b.subject = 'SYDE' AND b.catalog_number = '575'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '429' AND b.subject = 'ECE' AND b.catalog_number = '621'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '433' AND b.subject = 'NE' AND b.catalog_number = '343'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '444' AND b.subject = 'MTE' AND b.catalog_number = '421'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '451' AND b.subject = 'ECE' AND b.catalog_number = '651'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '451' AND b.subject = 'SE' AND b.catalog_number = '463'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '452' AND b.subject = 'ECE' AND b.catalog_number = '651'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '452' AND b.subject = 'SE' AND b.catalog_number = '464'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '453' AND b.subject = 'ECE' AND b.catalog_number = '653'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '453' AND b.subject = 'SE' AND b.catalog_number = '465'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '454' AND b.subject = 'ECE' AND b.catalog_number = '751'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '457A' AND b.subject = 'SYDE' AND b.catalog_number = '522'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '457B' AND b.subject = 'MSE' AND b.catalog_number = '446'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '457B' AND b.subject = 'SYDE' AND b.catalog_number = '522'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '457C' AND b.subject = 'ECE' AND b.catalog_number = '493'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '457D' AND b.subject = 'MSE' AND b.catalog_number = '546'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '457D' AND b.subject = 'SYDE' AND b.catalog_number = '577'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '463' AND b.subject = 'ECE' AND b.catalog_number = '663'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '463' AND b.subject = 'MTE' AND b.catalog_number = '420'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '474' AND b.subject = 'ECE' AND b.catalog_number = '774';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '481' AND b.subject = 'ECE' AND b.catalog_number = '484'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '481' AND b.subject = 'MTE' AND b.catalog_number = '484'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '484' AND b.subject = 'MTE' AND b.catalog_number = '484'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '486' AND b.subject = 'ECE' AND b.catalog_number = '687'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '486' AND b.subject = 'ME' AND b.catalog_number = '547'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '487' AND b.subject = 'ECE' AND b.catalog_number = '493'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '487' AND b.subject = 'ECE' AND b.catalog_number = '787'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '606' AND b.subject = 'SYDE' AND b.catalog_number = '423'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '634' AND b.subject = 'NE' AND b.catalog_number = '472'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '635' AND b.subject = 'NE' AND b.catalog_number = '353'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '649' AND b.subject = 'ECE' AND b.catalog_number = '699'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '651' AND b.subject = 'SE' AND b.catalog_number = '463'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '651' AND b.subject = 'SE' AND b.catalog_number = '464'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '653' AND b.subject = 'SE' AND b.catalog_number = '465'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '657' AND b.subject = 'MSE' AND b.catalog_number = '623'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '657A' AND b.subject = 'MSE' AND b.catalog_number = '623'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '660' AND b.subject = 'ECE' AND b.catalog_number = '760'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '661' AND b.subject = 'ECE' AND b.catalog_number = '761'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '661' AND b.subject = 'ECE' AND b.catalog_number = '765'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '664' AND b.subject = 'ECE' AND b.catalog_number = '762'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '667' AND b.subject = 'ECE' AND b.catalog_number = '763'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '676E' AND b.subject = 'PHYS' AND b.catalog_number = '762'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '676E' AND b.subject = 'QIC' AND b.catalog_number = '862'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '699A' AND b.subject = 'ECE' AND b.catalog_number = '700'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECE' AND a.catalog_number = '780' AND b.subject = 'STAT' AND b.catalog_number = '902'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '100' AND b.subject = 'ECON' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '100' AND b.subject = 'ECON' AND b.catalog_number = '102'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '101' AND b.subject = 'ECON' AND b.catalog_number = '120W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '101' AND b.subject = 'MSE' AND b.catalog_number = '263'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '102' AND b.subject = 'ECON' AND b.catalog_number = '140W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '201' AND b.subject = 'ECON' AND b.catalog_number = '260W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '202' AND b.subject = 'ECON' AND b.catalog_number = '250W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '221' AND b.subject = 'ENVS' AND b.catalog_number = '278'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '221' AND b.subject = 'GBDA' AND b.catalog_number = '205'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '221' AND b.subject = 'LS' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '221' AND b.subject = 'MSE' AND b.catalog_number = '251'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '221' AND b.subject = 'MTE' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '221' AND b.subject = 'PSCI' AND b.catalog_number = '314'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '221' AND b.subject = 'PSYCH' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '221' AND b.subject = 'SDS' AND b.catalog_number = '250R';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '221' AND b.subject = 'SOC' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '221' AND b.subject = 'SRF' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '344' AND b.subject = 'ENBUS' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '344' AND b.subject = 'GBDA' AND b.catalog_number = '304'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '344' AND b.subject = 'MGMT' AND b.catalog_number = '244'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '345' AND b.subject = 'MGMT' AND b.catalog_number = '345'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '357' AND b.subject = 'ECON' AND b.catalog_number = '457'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '371' AND b.subject = 'MATBUS' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '372' AND b.subject = 'MATBUS' AND b.catalog_number = '470'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '421' AND b.subject = 'STAT' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '458' AND b.subject = 'ECON' AND b.catalog_number = '484'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '604' AND b.subject = 'ECON' AND b.catalog_number = '704'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '625' AND b.subject = 'ECON' AND b.catalog_number = '673'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '643' AND b.subject = 'PHARM' AND b.catalog_number = '618'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ECON' AND a.catalog_number = '658' AND b.subject = 'ECON' AND b.catalog_number = '673'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EMLS' AND a.catalog_number = '101' AND b.subject = 'EMLS' AND b.catalog_number = '103R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EMLS' AND a.catalog_number = '103' AND b.subject = 'EMLS' AND b.catalog_number = '103R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EMLS' AND a.catalog_number = '104' AND b.subject = 'EMLS' AND b.catalog_number = '104R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EMLS' AND a.catalog_number = '105' AND b.subject = 'EMLS' AND b.catalog_number = '105R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'EMLS' AND a.catalog_number = '110' AND b.subject = 'EMLS' AND b.catalog_number = '110R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '102' AND b.subject = 'SFM' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '203' AND b.subject = 'GBDA' AND b.catalog_number = '308'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '203' AND b.subject = 'MGMT' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '211' AND b.subject = 'ENBUS' AND b.catalog_number = '311'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '211' AND b.subject = 'MGMT' AND b.catalog_number = '244'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '211' AND b.subject = 'MGMT' AND b.catalog_number = '344'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '306' AND b.subject = 'ERS' AND b.catalog_number = '302'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '306' AND b.subject = 'GEOG' AND b.catalog_number = '390'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '306' AND b.subject = 'INTEG' AND b.catalog_number = '340'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '306' AND b.subject = 'PLAN' AND b.catalog_number = '350'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '307' AND b.subject = 'ENBUS' AND b.catalog_number = '405'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '310' AND b.subject = 'SFM' AND b.catalog_number = '310'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '311' AND b.subject = 'MGMT' AND b.catalog_number = '244'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '402A' AND b.subject = 'ENBUS' AND b.catalog_number = '403A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '402A' AND b.subject = 'ENBUS' AND b.catalog_number = '409A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '402A' AND b.subject = 'ENVS' AND b.catalog_number = '403A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '402A' AND b.subject = 'ENVS' AND b.catalog_number = '404'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '402A' AND b.subject = 'ENVS' AND b.catalog_number = '405'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '402B' AND b.subject = 'ENBUS' AND b.catalog_number = '403B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '403A' AND b.subject = 'ENBUS' AND b.catalog_number = '409A';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '403A' AND b.subject = 'ENVS' AND b.catalog_number = '403A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '403A' AND b.subject = 'ENVS' AND b.catalog_number = '404'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '403A' AND b.subject = 'ENVS' AND b.catalog_number = '405'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '403B' AND b.subject = 'SVENT' AND b.catalog_number = '225P'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '403B' AND b.subject = 'SVENT' AND b.catalog_number = '325P'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '409A' AND b.subject = 'ENBUS' AND b.catalog_number = '475'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '409A' AND b.subject = 'ENVS' AND b.catalog_number = '403A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '409A' AND b.subject = 'ENVS' AND b.catalog_number = '404'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '409A' AND b.subject = 'ENVS' AND b.catalog_number = '405'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '475' AND b.subject = 'ENVS' AND b.catalog_number = '403A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '475' AND b.subject = 'ENVS' AND b.catalog_number = '404'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENBUS' AND a.catalog_number = '475' AND b.subject = 'ENVS' AND b.catalog_number = '405'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENGL' AND a.catalog_number = '191' AND b.subject = 'GENE' AND b.catalog_number = '199'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENGL' AND a.catalog_number = '192' AND b.subject = 'GENE' AND b.catalog_number = '191'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENGL' AND a.catalog_number = '192' AND b.subject = 'UCR' AND b.catalog_number = '192E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENGL' AND a.catalog_number = '203' AND b.subject = 'GBDA' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENGL' AND a.catalog_number = '204' AND b.subject = 'GBDA' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENGL' AND a.catalog_number = '204' AND b.subject = 'GBDA' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENGL' AND a.catalog_number = '208E' AND b.subject = 'WS' AND b.catalog_number = '208E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '106'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '114'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '136'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '146'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '121' AND b.subject = 'MTE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '121' AND b.subject = 'SYDE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '123' AND b.subject = 'GENE' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '123' AND b.subject = 'ME' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '123' AND b.subject = 'NE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '223' AND b.subject = 'MATH' AND b.catalog_number = '218'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '224' AND b.subject = 'MSE' AND b.catalog_number = '251'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '225' AND b.subject = 'GEOE' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '279' AND b.subject = 'ME' AND b.catalog_number = '250'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '279' AND b.subject = 'SYDE' AND b.catalog_number = '381'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '280' AND b.subject = 'ME' AND b.catalog_number = '351'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '335' AND b.subject = 'MSE' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '392' AND b.subject = 'MSE' AND b.catalog_number = '261'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '392' AND b.subject = 'SYDE' AND b.catalog_number = '262'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVE' AND a.catalog_number = '417' AND b.subject = 'ENVE' AND b.catalog_number = '497'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '278' AND b.subject = 'GBDA' AND b.catalog_number = '205';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '278' AND b.subject = 'LS' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '278' AND b.subject = 'PSCI' AND b.catalog_number = '314'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '278' AND b.subject = 'PSYCH' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '278' AND b.subject = 'REC' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '278' AND b.subject = 'SDS' AND b.catalog_number = '250R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '278' AND b.subject = 'SOC' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '278' AND b.subject = 'SRF' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '278' AND b.subject = 'STAT' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '278' AND b.subject = 'STAT' AND b.catalog_number = '206'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '278' AND b.subject = 'STAT' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '278' AND b.subject = 'STAT' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '278' AND b.subject = 'STAT' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '278' AND b.subject = 'STAT' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '403A' AND b.subject = 'ENVS' AND b.catalog_number = '404'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '403A' AND b.subject = 'ENVS' AND b.catalog_number = '405'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '403A' AND b.subject = 'ENVS' AND b.catalog_number = '474'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '404' AND b.subject = 'ENVS' AND b.catalog_number = '474'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '405' AND b.subject = 'ENVS' AND b.catalog_number = '474'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ENVS' AND a.catalog_number = '459' AND b.subject = 'ENVS' AND b.catalog_number = '474'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ERS' AND a.catalog_number = '221' AND b.subject = 'ERS' AND b.catalog_number = '275'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ERS' AND a.catalog_number = '302' AND b.subject = 'GEOG' AND b.catalog_number = '390'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ERS' AND a.catalog_number = '302' AND b.subject = 'INTEG' AND b.catalog_number = '340'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ERS' AND a.catalog_number = '302' AND b.subject = 'PLAN' AND b.catalog_number = '350'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ERS' AND a.catalog_number = '310' AND b.subject = 'PACS' AND b.catalog_number = '301'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ERS' AND a.catalog_number = '402' AND b.subject = 'ERS' AND b.catalog_number = '403A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ERS' AND a.catalog_number = '402' AND b.subject = 'ERS' AND b.catalog_number = '403B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ERS' AND a.catalog_number = '456' AND b.subject = 'GEOG' AND b.catalog_number = '662'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ERS' AND a.catalog_number = '675' AND b.subject = 'INDEV' AND b.catalog_number = '478'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ERS' AND a.catalog_number = '675' AND b.subject = 'PSCI' AND b.catalog_number = '606'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '101' AND b.subject = 'VCULT' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '102' AND b.subject = 'VCULT' AND b.catalog_number = '100'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '130' AND b.subject = 'FINE' AND b.catalog_number = '228'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '130' AND b.subject = 'FINE' AND b.catalog_number = '229'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '130' AND b.subject = 'GBDA' AND b.catalog_number = '228'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '130' AND b.subject = 'GBDA' AND b.catalog_number = '229'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '204' AND b.subject = 'SI' AND b.catalog_number = '231R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '204' AND b.subject = 'VCULT' AND b.catalog_number = '275'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '209' AND b.subject = 'VCULT' AND b.catalog_number = '209'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '216' AND b.subject = 'INDG' AND b.catalog_number = '216'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '216' AND b.subject = 'VCULT' AND b.catalog_number = '216';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '228' AND b.subject = 'GBDA' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '241' AND b.subject = 'VCULT' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '242' AND b.subject = 'VCULT' AND b.catalog_number = '242'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '244' AND b.subject = 'VCULT' AND b.catalog_number = '244'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '245' AND b.subject = 'VCULT' AND b.catalog_number = '245'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '253' AND b.subject = 'RS' AND b.catalog_number = '271R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '256' AND b.subject = 'VCULT' AND b.catalog_number = '256'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '257' AND b.subject = 'VCULT' AND b.catalog_number = '257'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '262' AND b.subject = 'GSJ' AND b.catalog_number = '262'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '262' AND b.subject = 'VCULT' AND b.catalog_number = '262'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '270' AND b.subject = 'RCS' AND b.catalog_number = '270'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '270' AND b.subject = 'VCULT' AND b.catalog_number = '252'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '275' AND b.subject = 'SI' AND b.catalog_number = '231R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '275' AND b.subject = 'VCULT' AND b.catalog_number = '275'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '281' AND b.subject = 'VCULT' AND b.catalog_number = '281'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '282' AND b.subject = 'VCULT' AND b.catalog_number = '282'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '293' AND b.subject = 'VCULT' AND b.catalog_number = '293'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '319' AND b.subject = 'VCULT' AND b.catalog_number = '319'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '330' AND b.subject = 'VCULT' AND b.catalog_number = '330'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '338' AND b.subject = 'PHIL' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '338' AND b.subject = 'VCULT' AND b.catalog_number = '338'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '341' AND b.subject = 'VCULT' AND b.catalog_number = '341'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '342' AND b.subject = 'VCULT' AND b.catalog_number = '342'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '377' AND b.subject = 'RCS' AND b.catalog_number = '377'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '377' AND b.subject = 'VCULT' AND b.catalog_number = '377'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FINE' AND a.catalog_number = '393' AND b.subject = 'VCULT' AND b.catalog_number = '393'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FR' AND a.catalog_number = '101' AND b.subject = 'FR' AND b.catalog_number = '151'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FR' AND a.catalog_number = '101' AND b.subject = 'FR' AND b.catalog_number = '152'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FR' AND a.catalog_number = '101' AND b.subject = 'FR' AND b.catalog_number = '192A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FR' AND a.catalog_number = '101' AND b.subject = 'FR' AND b.catalog_number = '192B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FR' AND a.catalog_number = '151' AND b.subject = 'FR' AND b.catalog_number = '152'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FR' AND a.catalog_number = '151' AND b.subject = 'FR' AND b.catalog_number = '192A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FR' AND a.catalog_number = '151' AND b.subject = 'FR' AND b.catalog_number = '192B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FR' AND a.catalog_number = '152' AND b.subject = 'FR' AND b.catalog_number = '192A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FR' AND a.catalog_number = '152' AND b.subject = 'FR' AND b.catalog_number = '192B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FR' AND a.catalog_number = '192A' AND b.subject = 'FR' AND b.catalog_number = '192B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FR' AND a.catalog_number = '291' AND b.subject = 'FR' AND b.catalog_number = '296'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'FR' AND a.catalog_number = '292' AND b.subject = 'FR' AND b.catalog_number = '297'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '102' AND b.subject = 'GBDA' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'KIN' AND b.catalog_number = '232';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'LS' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'PSCI' AND b.catalog_number = '314'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'PSYCH' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'REC' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'SDS' AND b.catalog_number = '250R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'SMF' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'SOC' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'SRF' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'STAT' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'STAT' AND b.catalog_number = '206'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'STAT' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'STAT' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'STAT' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'STAT' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '205' AND b.subject = 'SWREN' AND b.catalog_number = '250R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '206' AND b.subject = 'GBDA' AND b.catalog_number = '311'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '207' AND b.subject = 'GBDA' AND b.catalog_number = '305'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '304' AND b.subject = 'MGMT' AND b.catalog_number = '244'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GBDA' AND a.catalog_number = '308' AND b.subject = 'MGMT' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GDS' AND a.catalog_number = '181' AND b.subject = 'GEOG' AND b.catalog_number = '181'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GDS' AND a.catalog_number = '187' AND b.subject = 'GEOG' AND b.catalog_number = '187'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GDS' AND a.catalog_number = '270' AND b.subject = 'GEOG' AND b.catalog_number = '270'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GDS' AND a.catalog_number = '271' AND b.subject = 'GEOG' AND b.catalog_number = '271'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GDS' AND a.catalog_number = '281' AND b.subject = 'GEOG' AND b.catalog_number = '281'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GDS' AND a.catalog_number = '318' AND b.subject = 'GEOG' AND b.catalog_number = '318'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GDS' AND a.catalog_number = '318' AND b.subject = 'GEOG' AND b.catalog_number = '604'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GDS' AND a.catalog_number = '371' AND b.subject = 'GEOG' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GDS' AND a.catalog_number = '387' AND b.subject = 'GEOG' AND b.catalog_number = '387'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GDS' AND a.catalog_number = '481' AND b.subject = 'GEOG' AND b.catalog_number = '481'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEMCC' AND a.catalog_number = '600' AND b.subject = 'GEMCC' AND b.catalog_number = '601'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEMCC' AND a.catalog_number = '600' AND b.subject = 'GEMCC' AND b.catalog_number = '602'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEMCC' AND a.catalog_number = '600' AND b.subject = 'GEMCC' AND b.catalog_number = '603'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEMCC' AND a.catalog_number = '600' AND b.subject = 'GEMCC' AND b.catalog_number = '605'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEMCC' AND a.catalog_number = '601' AND b.subject = 'GEMCC' AND b.catalog_number = '605'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEMCC' AND a.catalog_number = '602' AND b.subject = 'GEMCC' AND b.catalog_number = '605'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEMCC' AND a.catalog_number = '603' AND b.subject = 'GEMCC' AND b.catalog_number = '605'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEMCC' AND a.catalog_number = '610' AND b.subject = 'GEOG' AND b.catalog_number = '408'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEMCC' AND a.catalog_number = '614' AND b.subject = 'GEOG' AND b.catalog_number = '314'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEMCC' AND a.catalog_number = '652' AND b.subject = 'PLAN' AND b.catalog_number = '348'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEMCC' AND a.catalog_number = '652' AND b.subject = 'PLAN' AND b.catalog_number = '419';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GENE' AND a.catalog_number = '101' AND b.subject = 'UNIV' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GENE' AND a.catalog_number = '121' AND b.subject = 'MSE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GENE' AND a.catalog_number = '123' AND b.subject = 'GEOE' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GENE' AND a.catalog_number = '123' AND b.subject = 'ME' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GENE' AND a.catalog_number = '123' AND b.subject = 'MTE' AND b.catalog_number = '120'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GENE' AND a.catalog_number = '123' AND b.subject = 'NE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GENE' AND a.catalog_number = '191' AND b.subject = 'UCR' AND b.catalog_number = '192E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '106'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '114'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '136'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOE' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '146'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOE' AND a.catalog_number = '121' AND b.subject = 'MTE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOE' AND a.catalog_number = '121' AND b.subject = 'SYDE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOE' AND a.catalog_number = '123' AND b.subject = 'ME' AND b.catalog_number = '123'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOE' AND a.catalog_number = '123' AND b.subject = 'NE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOE' AND a.catalog_number = '221' AND b.subject = 'MATH' AND b.catalog_number = '217'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOE' AND a.catalog_number = '223' AND b.subject = 'MATH' AND b.catalog_number = '218'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOE' AND a.catalog_number = '392' AND b.subject = 'MSE' AND b.catalog_number = '261'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOE' AND a.catalog_number = '392' AND b.subject = 'SYDE' AND b.catalog_number = '262'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '100' AND b.subject = 'GEOG' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '165' AND b.subject = 'GEOG' AND b.catalog_number = '181'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '203' AND b.subject = 'GEOG' AND b.catalog_number = '326'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '281' AND b.subject = 'PLAN' AND b.catalog_number = '281'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '293' AND b.subject = 'GEOG' AND b.catalog_number = '390'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '294' AND b.subject = 'GEOG' AND b.catalog_number = '390'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '318' AND b.subject = 'GEOG' AND b.catalog_number = '604'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '318' AND b.subject = 'PLAN' AND b.catalog_number = '353'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '357' AND b.subject = 'GEOG' AND b.catalog_number = '374'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '381' AND b.subject = 'GEOG' AND b.catalog_number = '607'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '387' AND b.subject = 'GEOG' AND b.catalog_number = '607'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '390' AND b.subject = 'GEOG' AND b.catalog_number = '391'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '390' AND b.subject = 'INTEG' AND b.catalog_number = '340'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '390' AND b.subject = 'PLAN' AND b.catalog_number = '350'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '391' AND b.subject = 'GEOG' AND b.catalog_number = '392'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '402' AND b.subject = 'GEOG' AND b.catalog_number = '405'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '403' AND b.subject = 'GEOG' AND b.catalog_number = '656'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '456' AND b.subject = 'GEOG' AND b.catalog_number = '662'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '481' AND b.subject = 'PLAN' AND b.catalog_number = '481'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GEOG' AND a.catalog_number = '483' AND b.subject = 'GEOG' AND b.catalog_number = '683';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GERON' AND a.catalog_number = '220' AND b.subject = 'GERON' AND b.catalog_number = '320'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GERON' AND a.catalog_number = '220' AND b.subject = 'HLTH' AND b.catalog_number = '320'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GERON' AND a.catalog_number = '320' AND b.subject = 'HLTH' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GRK' AND a.catalog_number = '101' AND b.subject = 'GRK' AND b.catalog_number = '133'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GRK' AND a.catalog_number = '101' AND b.subject = 'RCS' AND b.catalog_number = '133'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GRK' AND a.catalog_number = '133' AND b.subject = 'RCS' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '101' AND b.subject = 'WS' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '102' AND b.subject = 'WS' AND b.catalog_number = '102'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '108' AND b.subject = 'WS' AND b.catalog_number = '108E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '201' AND b.subject = 'WS' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '205' AND b.subject = 'WS' AND b.catalog_number = '205'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '206' AND b.subject = 'WS' AND b.catalog_number = '206'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '207' AND b.subject = 'WS' AND b.catalog_number = '207'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '208E' AND b.subject = 'WS' AND b.catalog_number = '208E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '222' AND b.subject = 'WS' AND b.catalog_number = '222'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '261' AND b.subject = 'WS' AND b.catalog_number = '261'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '280' AND b.subject = 'GSJ' AND b.catalog_number = '380'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '280' AND b.subject = 'HLTH' AND b.catalog_number = '380'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '302' AND b.subject = 'WS' AND b.catalog_number = '302'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '320' AND b.subject = 'WS' AND b.catalog_number = '320'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '331' AND b.subject = 'WS' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '334' AND b.subject = 'WS' AND b.catalog_number = '334'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '347' AND b.subject = 'WS' AND b.catalog_number = '347'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '371' AND b.subject = 'WS' AND b.catalog_number = '365'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '380' AND b.subject = 'HLTH' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '402' AND b.subject = 'WS' AND b.catalog_number = '422'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'GSJ' AND a.catalog_number = '410' AND b.subject = 'WS' AND b.catalog_number = '410F'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HIST' AND a.catalog_number = '208' AND b.subject = 'HIST' AND b.catalog_number = '315'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HIST' AND a.catalog_number = '225' AND b.subject = 'SDS' AND b.catalog_number = '205R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HIST' AND a.catalog_number = '230' AND b.subject = 'PSCI' AND b.catalog_number = '257'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HIST' AND a.catalog_number = '246' AND b.subject = 'HIST' AND b.catalog_number = '291'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '204' AND b.subject = 'PSYCH' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '217' AND b.subject = 'KIN' AND b.catalog_number = '217'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '220' AND b.subject = 'HLTH' AND b.catalog_number = '320'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '280' AND b.subject = 'HLTH' AND b.catalog_number = '380'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '301' AND b.subject = 'HLTH' AND b.catalog_number = '305'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '333' AND b.subject = 'PSYCH' AND b.catalog_number = '291'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '333' AND b.subject = 'STAT' AND b.catalog_number = '337'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '335' AND b.subject = 'REC' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '335' AND b.subject = 'STAT' AND b.catalog_number = '316';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '358' AND b.subject = 'HLTH' AND b.catalog_number = '460'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '400' AND b.subject = 'HLTH' AND b.catalog_number = '642'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '403' AND b.subject = 'HLTH' AND b.catalog_number = '643'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '451' AND b.subject = 'HLTH' AND b.catalog_number = '626'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '454' AND b.subject = 'HLTH' AND b.catalog_number = '629'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '471' AND b.subject = 'HLTH' AND b.catalog_number = '671'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '605A' AND b.subject = 'HLTH' AND b.catalog_number = '605B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '606A' AND b.subject = 'HLTH' AND b.catalog_number = '606B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '606B' AND b.subject = 'HSG' AND b.catalog_number = '606'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '616' AND b.subject = 'HSG' AND b.catalog_number = '652'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HLTH' AND a.catalog_number = '632' AND b.subject = 'PHARM' AND b.catalog_number = '618'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HRTS' AND a.catalog_number = '102' AND b.subject = 'HRTS' AND b.catalog_number = '204'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'HRTS' AND a.catalog_number = '202' AND b.subject = 'HRTS' AND b.catalog_number = '302'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'INDEV' AND a.catalog_number = '475' AND b.subject = 'INDEV' AND b.catalog_number = '478'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'INTEG' AND a.catalog_number = '340' AND b.subject = 'PLAN' AND b.catalog_number = '350'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ITAL' AND a.catalog_number = '101' AND b.subject = 'ITAL' AND b.catalog_number = '155'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ITAL' AND a.catalog_number = '102' AND b.subject = 'ITAL' AND b.catalog_number = '155'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JAPAN' AND a.catalog_number = '102R' AND b.subject = 'JAPAN' AND b.catalog_number = '112R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '114' AND b.subject = 'JS' AND b.catalog_number = '209'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '114' AND b.subject = 'RCS' AND b.catalog_number = '209'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '120' AND b.subject = 'JS' AND b.catalog_number = '218'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '120' AND b.subject = 'RCS' AND b.catalog_number = '218'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '125' AND b.subject = 'JS' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '125' AND b.subject = 'RCS' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '130' AND b.subject = 'JS' AND b.catalog_number = '234'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '130' AND b.subject = 'RCS' AND b.catalog_number = '234'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '131' AND b.subject = 'JS' AND b.catalog_number = '228'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '131' AND b.subject = 'RCS' AND b.catalog_number = '228'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '209' AND b.subject = 'RCS' AND b.catalog_number = '114'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '211' AND b.subject = 'JS' AND b.catalog_number = '314'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '211' AND b.subject = 'RCS' AND b.catalog_number = '314'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '218' AND b.subject = 'RCS' AND b.catalog_number = '111'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '228' AND b.subject = 'RCS' AND b.catalog_number = '130'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '234' AND b.subject = 'RCS' AND b.catalog_number = '112'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'JS' AND a.catalog_number = '314' AND b.subject = 'RS' AND b.catalog_number = '213'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'KIN' AND a.catalog_number = '222' AND b.subject = 'PSYCH' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'KIN' AND a.catalog_number = '232' AND b.subject = 'PSCI' AND b.catalog_number = '314'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'KIN' AND a.catalog_number = '232' AND b.subject = 'PSYCH' AND b.catalog_number = '291'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'KIN' AND a.catalog_number = '232' AND b.subject = 'PSYCH' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'KIN' AND a.catalog_number = '232' AND b.subject = 'SDS' AND b.catalog_number = '250R';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'KIN' AND a.catalog_number = '301' AND b.subject = 'KIN' AND b.catalog_number = '657'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'KIN' AND a.catalog_number = '314' AND b.subject = 'KIN' AND b.catalog_number = '414'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'KIN' AND a.catalog_number = '330' AND b.subject = 'PSYCH' AND b.catalog_number = '291'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'KIN' AND a.catalog_number = '359' AND b.subject = 'KIN' AND b.catalog_number = '456'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'KIN' AND a.catalog_number = '359' AND b.subject = 'PSYCH' AND b.catalog_number = '307'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'KIN' AND a.catalog_number = '427' AND b.subject = 'KIN' AND b.catalog_number = '627'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'KIN' AND a.catalog_number = '446' AND b.subject = 'KIN' AND b.catalog_number = '646'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'KIN' AND a.catalog_number = '457' AND b.subject = 'KIN' AND b.catalog_number = '459'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'KIN' AND a.catalog_number = '492' AND b.subject = 'KIN' AND b.catalog_number = '492A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'KIN' AND a.catalog_number = '492' AND b.subject = 'KIN' AND b.catalog_number = '492B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '201' AND b.subject = 'WS' AND b.catalog_number = '206'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '221' AND b.subject = 'PSYCH' AND b.catalog_number = '291'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '221' AND b.subject = 'SDS' AND b.catalog_number = '251R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '221' AND b.subject = 'SMF' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '221' AND b.subject = 'SRF' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '221' AND b.subject = 'SWREN' AND b.catalog_number = '251R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '280' AND b.subject = 'MTE' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '280' AND b.subject = 'PSCI' AND b.catalog_number = '314'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '280' AND b.subject = 'PSYCH' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '280' AND b.subject = 'REC' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '280' AND b.subject = 'SDS' AND b.catalog_number = '250R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '280' AND b.subject = 'SMF' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '280' AND b.subject = 'SRF' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '206'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '280' AND b.subject = 'SWREN' AND b.catalog_number = '250R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '283' AND b.subject = 'ME' AND b.catalog_number = '401'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '319' AND b.subject = 'PSYCH' AND b.catalog_number = '439'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '322' AND b.subject = 'SDS' AND b.catalog_number = '351R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '330' AND b.subject = 'LS' AND b.catalog_number = '348'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '330' AND b.subject = 'LS' AND b.catalog_number = '364'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '330' AND b.subject = 'PSCI' AND b.catalog_number = '365'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '342' AND b.subject = 'PSCI' AND b.catalog_number = '375'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '364' AND b.subject = 'PSCI' AND b.catalog_number = '390'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '409' AND b.subject = 'LS' AND b.catalog_number = '496'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '409' AND b.subject = 'SOC' AND b.catalog_number = '430';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '410' AND b.subject = 'LS' AND b.catalog_number = '496'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '496' AND b.subject = 'SOC' AND b.catalog_number = '409'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'LS' AND a.catalog_number = '496' AND b.subject = 'SOC' AND b.catalog_number = '465'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '103' AND b.subject = 'MATH' AND b.catalog_number = '106'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '103' AND b.subject = 'MATH' AND b.catalog_number = '114'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '103' AND b.subject = 'MATH' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '103' AND b.subject = 'MATH' AND b.catalog_number = '136'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '103' AND b.subject = 'MATH' AND b.catalog_number = '146'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '103' AND b.subject = 'NE' AND b.catalog_number = '112'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '104' AND b.subject = 'MATH' AND b.catalog_number = '127'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '104' AND b.subject = 'MATH' AND b.catalog_number = '137'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '104' AND b.subject = 'MATH' AND b.catalog_number = '147'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '106' AND b.subject = 'MATH' AND b.catalog_number = '114'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '106' AND b.subject = 'MATH' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '106' AND b.subject = 'MATH' AND b.catalog_number = '136'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '106' AND b.subject = 'MATH' AND b.catalog_number = '146'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '106' AND b.subject = 'MATH' AND b.catalog_number = '215'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '106' AND b.subject = 'NE' AND b.catalog_number = '112'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '109' AND b.subject = 'MATH' AND b.catalog_number = '124'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '109' AND b.subject = 'MATH' AND b.catalog_number = '127'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '114' AND b.subject = 'MATH' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '114' AND b.subject = 'MATH' AND b.catalog_number = '136'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '114' AND b.subject = 'MATH' AND b.catalog_number = '146'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '114' AND b.subject = 'MATH' AND b.catalog_number = '215'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '114' AND b.subject = 'NE' AND b.catalog_number = '112'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '136'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '146'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '115' AND b.subject = 'MATH' AND b.catalog_number = '215'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '115' AND b.subject = 'NE' AND b.catalog_number = '112'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '116' AND b.subject = 'MATH' AND b.catalog_number = '117'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '116' AND b.subject = 'MATH' AND b.catalog_number = '124'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '116' AND b.subject = 'MATH' AND b.catalog_number = '127'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '116' AND b.subject = 'MATH' AND b.catalog_number = '137'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '116' AND b.subject = 'MATH' AND b.catalog_number = '147'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '116' AND b.subject = 'SYDE' AND b.catalog_number = '111'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '117' AND b.subject = 'MATH' AND b.catalog_number = '124'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '117' AND b.subject = 'MATH' AND b.catalog_number = '127'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '117' AND b.subject = 'MATH' AND b.catalog_number = '137'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '117' AND b.subject = 'MATH' AND b.catalog_number = '147'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '117' AND b.subject = 'SYDE' AND b.catalog_number = '111';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '118' AND b.subject = 'MATH' AND b.catalog_number = '119'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '118' AND b.subject = 'MATH' AND b.catalog_number = '128'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '118' AND b.subject = 'MATH' AND b.catalog_number = '138'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '118' AND b.subject = 'MATH' AND b.catalog_number = '148'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '118' AND b.subject = 'SYDE' AND b.catalog_number = '112'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '119' AND b.subject = 'MATH' AND b.catalog_number = '128'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '119' AND b.subject = 'MATH' AND b.catalog_number = '138'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '119' AND b.subject = 'MATH' AND b.catalog_number = '148'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '119' AND b.subject = 'SYDE' AND b.catalog_number = '112'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '124' AND b.subject = 'MATH' AND b.catalog_number = '127'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '124' AND b.subject = 'MATH' AND b.catalog_number = '137'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '124' AND b.subject = 'MATH' AND b.catalog_number = '147'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '127' AND b.subject = 'MATH' AND b.catalog_number = '137'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '127' AND b.subject = 'MATH' AND b.catalog_number = '147'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '127' AND b.subject = 'SYDE' AND b.catalog_number = '111'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '128' AND b.subject = 'MATH' AND b.catalog_number = '138'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '128' AND b.subject = 'MATH' AND b.catalog_number = '148'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '128' AND b.subject = 'SYDE' AND b.catalog_number = '112'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '135' AND b.subject = 'MATH' AND b.catalog_number = '145'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '136' AND b.subject = 'MATH' AND b.catalog_number = '146'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '136' AND b.subject = 'MATH' AND b.catalog_number = '215'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '136' AND b.subject = 'NE' AND b.catalog_number = '112'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '136' AND b.subject = 'PHYS' AND b.catalog_number = '249'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '137' AND b.subject = 'MATH' AND b.catalog_number = '147'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '137' AND b.subject = 'SYDE' AND b.catalog_number = '111'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '138' AND b.subject = 'MATH' AND b.catalog_number = '148'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '138' AND b.subject = 'SYDE' AND b.catalog_number = '112'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '146' AND b.subject = 'MATH' AND b.catalog_number = '215'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '146' AND b.subject = 'NE' AND b.catalog_number = '112'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '147' AND b.subject = 'SYDE' AND b.catalog_number = '111'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '148' AND b.subject = 'SYDE' AND b.catalog_number = '112'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '207' AND b.subject = 'MATH' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '207' AND b.subject = 'MATH' AND b.catalog_number = '217'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '207' AND b.subject = 'MATH' AND b.catalog_number = '227'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '207' AND b.subject = 'MATH' AND b.catalog_number = '237'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '207' AND b.subject = 'MATH' AND b.catalog_number = '247'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '207' AND b.subject = 'NE' AND b.catalog_number = '217'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '211' AND b.subject = 'MATH' AND b.catalog_number = '213'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '211' AND b.subject = 'MATH' AND b.catalog_number = '218'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '211' AND b.subject = 'MATH' AND b.catalog_number = '228';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '212' AND b.subject = 'MATH' AND b.catalog_number = '217'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '212' AND b.subject = 'MATH' AND b.catalog_number = '227'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '212' AND b.subject = 'MATH' AND b.catalog_number = '237'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '212' AND b.subject = 'MATH' AND b.catalog_number = '247'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '215' AND b.subject = 'NE' AND b.catalog_number = '112'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '217' AND b.subject = 'MATH' AND b.catalog_number = '227'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '217' AND b.subject = 'MATH' AND b.catalog_number = '237'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '217' AND b.subject = 'MATH' AND b.catalog_number = '247'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '217' AND b.subject = 'ME' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '217' AND b.subject = 'NE' AND b.catalog_number = '217'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '218' AND b.subject = 'ME' AND b.catalog_number = '203'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '218' AND b.subject = 'NE' AND b.catalog_number = '216'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '218' AND b.subject = 'NE' AND b.catalog_number = '217'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '218' AND b.subject = 'NE' AND b.catalog_number = '228'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '218' AND b.subject = 'SYDE' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '225' AND b.subject = 'MATH' AND b.catalog_number = '235'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '225' AND b.subject = 'MATH' AND b.catalog_number = '245'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '227' AND b.subject = 'MATH' AND b.catalog_number = '237'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '227' AND b.subject = 'MATH' AND b.catalog_number = '247'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '227' AND b.subject = 'NE' AND b.catalog_number = '217'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '228' AND b.subject = 'NE' AND b.catalog_number = '216'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '229' AND b.subject = 'MATH' AND b.catalog_number = '239'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '229' AND b.subject = 'MATH' AND b.catalog_number = '249'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '235' AND b.subject = 'MATH' AND b.catalog_number = '245'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '237' AND b.subject = 'MATH' AND b.catalog_number = '247'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '239' AND b.subject = 'MATH' AND b.catalog_number = '249'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '247' AND b.subject = 'PMATH' AND b.catalog_number = '333'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MATH' AND a.catalog_number = '650' AND b.subject = 'MATH' AND b.catalog_number = '655'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '101' AND b.subject = 'MTE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '115' AND b.subject = 'ME' AND b.catalog_number = '235'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '115' AND b.subject = 'MTE' AND b.catalog_number = '111'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '123' AND b.subject = 'MTE' AND b.catalog_number = '120'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '123' AND b.subject = 'NE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '201' AND b.subject = 'MTE' AND b.catalog_number = '203'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '202' AND b.subject = 'MSE' AND b.catalog_number = '251'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '202' AND b.subject = 'MTE' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '202' AND b.subject = 'NE' AND b.catalog_number = '215'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '203' AND b.subject = 'MTE' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '212' AND b.subject = 'MTE' AND b.catalog_number = '182'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '212' AND b.subject = 'SYDE' AND b.catalog_number = '182';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '212' AND b.subject = 'SYDE' AND b.catalog_number = '288'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '219' AND b.subject = 'MTE' AND b.catalog_number = '219'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '219' AND b.subject = 'SYDE' AND b.catalog_number = '286'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '230' AND b.subject = 'ME' AND b.catalog_number = '235'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '235' AND b.subject = 'MTE' AND b.catalog_number = '111'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '235' AND b.subject = 'NE' AND b.catalog_number = '125'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '250' AND b.subject = 'MTE' AND b.catalog_number = '309'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '250' AND b.subject = 'SYDE' AND b.catalog_number = '381'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '262' AND b.subject = 'MTE' AND b.catalog_number = '262'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '269' AND b.subject = 'MTE' AND b.catalog_number = '320'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '321' AND b.subject = 'MTE' AND b.catalog_number = '321'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '351' AND b.subject = 'MTE' AND b.catalog_number = '352'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '351' AND b.subject = 'SYDE' AND b.catalog_number = '383'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '360' AND b.subject = 'MTE' AND b.catalog_number = '360'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '360' AND b.subject = 'SE' AND b.catalog_number = '380'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '360' AND b.subject = 'SYDE' AND b.catalog_number = '352'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '380' AND b.subject = 'MTE' AND b.catalog_number = '380'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '459' AND b.subject = 'ME' AND b.catalog_number = '659'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '481' AND b.subject = 'MTE' AND b.catalog_number = '481'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '482' AND b.subject = 'MTE' AND b.catalog_number = '482'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '567' AND b.subject = 'ME' AND b.catalog_number = '671'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '571' AND b.subject = 'ME' AND b.catalog_number = '760'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '572' AND b.subject = 'ME' AND b.catalog_number = '655'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '573' AND b.subject = 'ME' AND b.catalog_number = '656'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'ME' AND a.catalog_number = '738' AND b.subject = 'NANO' AND b.catalog_number = '604'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MNS' AND a.catalog_number = '322' AND b.subject = 'NE' AND b.catalog_number = '333'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSCI' AND a.catalog_number = '121' AND b.subject = 'MTE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSCI' AND a.catalog_number = '211' AND b.subject = 'PSYCH' AND b.catalog_number = '238'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSCI' AND a.catalog_number = '232' AND b.subject = 'MSE' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSCI' AND a.catalog_number = '252' AND b.subject = 'MTE' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSCI' AND a.catalog_number = '331' AND b.subject = 'MSE' AND b.catalog_number = '232'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSCI' AND a.catalog_number = '432' AND b.subject = 'MSE' AND b.catalog_number = '334'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSCI' AND a.catalog_number = '603' AND b.subject = 'MSE' AND b.catalog_number = '634'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSCI' AND a.catalog_number = '634' AND b.subject = 'MSE' AND b.catalog_number = '603'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSCI' AND a.catalog_number = '723' AND b.subject = 'MSE' AND b.catalog_number = '623'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSCI' AND a.catalog_number = '730' AND b.subject = 'MSE' AND b.catalog_number = '630'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '121' AND b.subject = 'MTE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '121' AND b.subject = 'SYDE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '211' AND b.subject = 'PSYCH' AND b.catalog_number = '238'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '211' AND b.subject = 'SCBUS' AND b.catalog_number = '225';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '232' AND b.subject = 'MSE' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '240' AND b.subject = 'MTE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '240' AND b.subject = 'SYDE' AND b.catalog_number = '223'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '251' AND b.subject = 'MTE' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '251' AND b.subject = 'NE' AND b.catalog_number = '215'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '251' AND b.subject = 'STAT' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '251' AND b.subject = 'SYDE' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '253' AND b.subject = 'STAT' AND b.catalog_number = '332'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '261' AND b.subject = 'SYDE' AND b.catalog_number = '262'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '331' AND b.subject = 'SYDE' AND b.catalog_number = '411'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '333' AND b.subject = 'STAT' AND b.catalog_number = '340'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '334' AND b.subject = 'MSE' AND b.catalog_number = '432'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '342' AND b.subject = 'SYDE' AND b.catalog_number = '322'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '343' AND b.subject = 'SYDE' AND b.catalog_number = '548'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '391' AND b.subject = 'WKRPT' AND b.catalog_number = '200'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '391' AND b.subject = 'WKRPT' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '392' AND b.subject = 'WKRPT' AND b.catalog_number = '300'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '392' AND b.subject = 'WKRPT' AND b.catalog_number = '301'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '431' AND b.subject = 'STAT' AND b.catalog_number = '333'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '446' AND b.subject = 'MSE' AND b.catalog_number = '623'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '446' AND b.subject = 'SYDE' AND b.catalog_number = '522'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '491' AND b.subject = 'WKRPT' AND b.catalog_number = '400'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '491' AND b.subject = 'WKRPT' AND b.catalog_number = '401'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '602' AND b.subject = 'MSE' AND b.catalog_number = '682'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '603' AND b.subject = 'MSE' AND b.catalog_number = '683'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MSE' AND a.catalog_number = '609' AND b.subject = 'MSE' AND b.catalog_number = '689'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '119' AND b.subject = 'SYDE' AND b.catalog_number = '181'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '120' AND b.subject = 'NE' AND b.catalog_number = '140'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '120' AND b.subject = 'NE' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '121' AND b.subject = 'NE' AND b.catalog_number = '113'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '121' AND b.subject = 'SYDE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '140' AND b.subject = 'SYDE' AND b.catalog_number = '223'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '182' AND b.subject = 'SYDE' AND b.catalog_number = '182'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '182' AND b.subject = 'SYDE' AND b.catalog_number = '288'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '201' AND b.subject = 'PSCI' AND b.catalog_number = '314'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '201' AND b.subject = 'PSYCH' AND b.catalog_number = '291'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '201' AND b.subject = 'PSYCH' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '201' AND b.subject = 'REC' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '201' AND b.subject = 'SOC' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '201' AND b.subject = 'STAT' AND b.catalog_number = '202';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '201' AND b.subject = 'STAT' AND b.catalog_number = '206'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '201' AND b.subject = 'STAT' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '201' AND b.subject = 'STAT' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '201' AND b.subject = 'STAT' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '201' AND b.subject = 'STAT' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '201' AND b.subject = 'STAT' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '201' AND b.subject = 'SYDE' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '219' AND b.subject = 'SYDE' AND b.catalog_number = '286'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '220' AND b.subject = 'SYDE' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '241' AND b.subject = 'SE' AND b.catalog_number = '350'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '252' AND b.subject = 'SYDE' AND b.catalog_number = '252'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '309' AND b.subject = 'SYDE' AND b.catalog_number = '381'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '351' AND b.subject = 'SYDE' AND b.catalog_number = '351'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '360' AND b.subject = 'SE' AND b.catalog_number = '380'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MTE' AND a.catalog_number = '360' AND b.subject = 'SYDE' AND b.catalog_number = '352'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MUSIC' AND a.catalog_number = '111' AND b.subject = 'MUSIC' AND b.catalog_number = '270'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MUSIC' AND a.catalog_number = '353W' AND b.subject = 'MUSIC' AND b.catalog_number = '380E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MUSIC' AND a.catalog_number = '353W' AND b.subject = 'MUSIC' AND b.catalog_number = '380W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MUSIC' AND a.catalog_number = '363' AND b.subject = 'TS' AND b.catalog_number = '652'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'MUSIC' AND a.catalog_number = '427' AND b.subject = 'MUSIC' AND b.catalog_number = '428'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NANO' AND a.catalog_number = '602' AND b.subject = 'NANO' AND b.catalog_number = '701'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NANO' AND a.catalog_number = '603' AND b.subject = 'NANO' AND b.catalog_number = '701'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NANO' AND a.catalog_number = '604' AND b.subject = 'NANO' AND b.catalog_number = '701'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NANO' AND a.catalog_number = '604' AND b.subject = 'NANO' AND b.catalog_number = '702'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NANO' AND a.catalog_number = '605' AND b.subject = 'NANO' AND b.catalog_number = '702'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NANO' AND a.catalog_number = '606' AND b.subject = 'NANO' AND b.catalog_number = '702'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NANO' AND a.catalog_number = '606' AND b.subject = 'SYDE' AND b.catalog_number = '682'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NANO' AND a.catalog_number = '702' AND b.subject = 'SYDE' AND b.catalog_number = '682'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '112' AND b.subject = 'SYDE' AND b.catalog_number = '114'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '113' AND b.subject = 'SYDE' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '115' AND b.subject = 'SYDE' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '131' AND b.subject = 'PHYS' AND b.catalog_number = '111'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '131' AND b.subject = 'PHYS' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '131' AND b.subject = 'PHYS' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '131' AND b.subject = 'SYDE' AND b.catalog_number = '182'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '131' AND b.subject = 'SYDE' AND b.catalog_number = '288'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '140' AND b.subject = 'SYDE' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '215' AND b.subject = 'STAT' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '215' AND b.subject = 'STAT' AND b.catalog_number = '206'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '215' AND b.subject = 'STAT' AND b.catalog_number = '220';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '215' AND b.subject = 'STAT' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '232' AND b.subject = 'PHYS' AND b.catalog_number = '233'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '232' AND b.subject = 'PHYS' AND b.catalog_number = '234'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '241' AND b.subject = 'SYDE' AND b.catalog_number = '283'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '250' AND b.subject = 'WKRPT' AND b.catalog_number = '200'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '332' AND b.subject = 'PHYS' AND b.catalog_number = '233'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '332' AND b.subject = 'PHYS' AND b.catalog_number = '234'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '334' AND b.subject = 'PHYS' AND b.catalog_number = '359'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '344' AND b.subject = 'SYDE' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'NE' AND a.catalog_number = '450' AND b.subject = 'WKRPT' AND b.catalog_number = '400'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'OPTOM' AND a.catalog_number = '232L' AND b.subject = 'OPTOM' AND b.catalog_number = '282L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PACS' AND a.catalog_number = '301' AND b.subject = 'PACS' AND b.catalog_number = '310'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PACS' AND a.catalog_number = '301' AND b.subject = 'SOC' AND b.catalog_number = '388'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PACS' AND a.catalog_number = '320' AND b.subject = 'RCS' AND b.catalog_number = '256'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PACS' AND a.catalog_number = '323' AND b.subject = 'PSYCH' AND b.catalog_number = '439'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PD' AND a.catalog_number = '19' AND b.subject = 'PD' AND b.catalog_number = '21'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHARM' AND a.catalog_number = '601' AND b.subject = 'PHARM' AND b.catalog_number = '616A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHIL' AND a.catalog_number = '101' AND b.subject = 'PHIL' AND b.catalog_number = '110A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHIL' AND a.catalog_number = '101' AND b.subject = 'PHIL' AND b.catalog_number = '110B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHIL' AND a.catalog_number = '121' AND b.subject = 'PHIL' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHIL' AND a.catalog_number = '202' AND b.subject = 'WS' AND b.catalog_number = '222'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHIL' AND a.catalog_number = '250A' AND b.subject = 'PHIL' AND b.catalog_number = '283'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHIL' AND a.catalog_number = '250B' AND b.subject = 'PHIL' AND b.catalog_number = '284'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHIL' AND a.catalog_number = '254' AND b.subject = 'PHIL' AND b.catalog_number = '271'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHIL' AND a.catalog_number = '257' AND b.subject = 'PHIL' AND b.catalog_number = '359'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '105' AND b.subject = 'PHYS' AND b.catalog_number = '111'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '105' AND b.subject = 'PHYS' AND b.catalog_number = '112'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '105' AND b.subject = 'PHYS' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '105' AND b.subject = 'PHYS' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '111' AND b.subject = 'PHYS' AND b.catalog_number = '115'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '111' AND b.subject = 'PHYS' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '111L' AND b.subject = 'PHYS' AND b.catalog_number = '121L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '111L' AND b.subject = 'PHYS' AND b.catalog_number = '131L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '112' AND b.subject = 'PHYS' AND b.catalog_number = '122'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '112' AND b.subject = 'PHYS' AND b.catalog_number = '125'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '112L' AND b.subject = 'PHYS' AND b.catalog_number = '122L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '112L' AND b.subject = 'PHYS' AND b.catalog_number = '132L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '115' AND b.subject = 'PHYS' AND b.catalog_number = '121'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '121L' AND b.subject = 'PHYS' AND b.catalog_number = '131L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '122' AND b.subject = 'PHYS' AND b.catalog_number = '125';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '122L' AND b.subject = 'PHYS' AND b.catalog_number = '132L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '132L' AND b.subject = 'PHYS' AND b.catalog_number = '160L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '175' AND b.subject = 'SCI' AND b.catalog_number = '238'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '232L' AND b.subject = 'PHYS' AND b.catalog_number = '260A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '233' AND b.subject = 'PHYS' AND b.catalog_number = '234'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '239' AND b.subject = 'PHYS' AND b.catalog_number = '349'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '242L' AND b.subject = 'PHYS' AND b.catalog_number = '260B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '256' AND b.subject = 'PHYS' AND b.catalog_number = '356'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '256L' AND b.subject = 'PHYS' AND b.catalog_number = '260A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '260B' AND b.subject = 'PHYS' AND b.catalog_number = '260L'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '267' AND b.subject = 'STAT' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '267' AND b.subject = 'STAT' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '335' AND b.subject = 'PHYS' AND b.catalog_number = '436'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '357' AND b.subject = 'PHYS' AND b.catalog_number = '358'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '357' AND b.subject = 'PHYS' AND b.catalog_number = '359'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '359' AND b.subject = 'PHYS' AND b.catalog_number = '457'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '365' AND b.subject = 'PMATH' AND b.catalog_number = '332'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PHYS' AND a.catalog_number = '612' AND b.subject = 'PHYS' AND b.catalog_number = '776'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PLAN' AND a.catalog_number = '240' AND b.subject = 'PLAN' AND b.catalog_number = '340'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PLAN' AND a.catalog_number = '246' AND b.subject = 'PLAN' AND b.catalog_number = '346'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PLAN' AND a.catalog_number = '267' AND b.subject = 'PLAN' AND b.catalog_number = '474'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PLAN' AND a.catalog_number = '348' AND b.subject = 'PLAN' AND b.catalog_number = '419'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PLAN' AND a.catalog_number = '348' AND b.subject = 'PLAN' AND b.catalog_number = '474'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PLAN' AND a.catalog_number = '348' AND b.subject = 'PLAN' AND b.catalog_number = '627'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PLAN' AND a.catalog_number = '401' AND b.subject = 'PLAN' AND b.catalog_number = '601'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PLAN' AND a.catalog_number = '416' AND b.subject = 'PLAN' AND b.catalog_number = '606'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PLAN' AND a.catalog_number = '419' AND b.subject = 'PLAN' AND b.catalog_number = '474'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PLAN' AND a.catalog_number = '419' AND b.subject = 'PLAN' AND b.catalog_number = '627'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PLAN' AND a.catalog_number = '442' AND b.subject = 'PLAN' AND b.catalog_number = '474'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PLAN' AND a.catalog_number = '443' AND b.subject = 'PLAN' AND b.catalog_number = '474'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PLAN' AND a.catalog_number = '468' AND b.subject = 'PLAN' AND b.catalog_number = '474'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '321' AND b.subject = 'PMATH' AND b.catalog_number = '360'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '330' AND b.subject = 'SE' AND b.catalog_number = '212'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '333' AND b.subject = 'PMATH' AND b.catalog_number = '351'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '334' AND b.subject = 'PMATH' AND b.catalog_number = '348'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '336' AND b.subject = 'PMATH' AND b.catalog_number = '347'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '432' AND b.subject = 'PMATH' AND b.catalog_number = '632'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '434' AND b.subject = 'PMATH' AND b.catalog_number = '734'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '440' AND b.subject = 'PMATH' AND b.catalog_number = '740'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '445' AND b.subject = 'PMATH' AND b.catalog_number = '745';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '446' AND b.subject = 'PMATH' AND b.catalog_number = '646'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '450' AND b.subject = 'PMATH' AND b.catalog_number = '650'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '453' AND b.subject = 'PMATH' AND b.catalog_number = '753'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '455' AND b.subject = 'PMATH' AND b.catalog_number = '655'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '457' AND b.subject = 'PMATH' AND b.catalog_number = '754'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '457' AND b.subject = 'PMATH' AND b.catalog_number = '757'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '464' AND b.subject = 'PMATH' AND b.catalog_number = '764'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '465' AND b.subject = 'PMATH' AND b.catalog_number = '665'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PMATH' AND a.catalog_number = '467' AND b.subject = 'PMATH' AND b.catalog_number = '667'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '214' AND b.subject = 'PSYCH' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '314' AND b.subject = 'PSYCH' AND b.catalog_number = '292'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '314' AND b.subject = 'REC' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '314' AND b.subject = 'SDS' AND b.catalog_number = '250A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '314' AND b.subject = 'SDS' AND b.catalog_number = '250R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '314' AND b.subject = 'SMF' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '314' AND b.subject = 'SOC' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '314' AND b.subject = 'SRF' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '314' AND b.subject = 'STAT' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '314' AND b.subject = 'STAT' AND b.catalog_number = '206'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '314' AND b.subject = 'STAT' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '314' AND b.subject = 'STAT' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '314' AND b.subject = 'STAT' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '314' AND b.subject = 'STAT' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '314' AND b.subject = 'SWREN' AND b.catalog_number = '205R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '315' AND b.subject = 'SRF' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '365' AND b.subject = 'PSCI' AND b.catalog_number = '390'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '375' AND b.subject = 'SOC' AND b.catalog_number = '342'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '380' AND b.subject = 'PSCI' AND b.catalog_number = '402'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '400' AND b.subject = 'PSCI' AND b.catalog_number = '499A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '400' AND b.subject = 'PSCI' AND b.catalog_number = '499B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '408' AND b.subject = 'PSCI' AND b.catalog_number = '485'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '410' AND b.subject = 'PSCI' AND b.catalog_number = '485'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '424' AND b.subject = 'PSCI' AND b.catalog_number = '494'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '424' AND b.subject = 'PSCI' AND b.catalog_number = '495'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '424' AND b.subject = 'PSCI' AND b.catalog_number = '497'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSCI' AND a.catalog_number = '457' AND b.subject = 'PSCI' AND b.catalog_number = '490'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '236' AND b.subject = 'SRF' AND b.catalog_number = '204'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '238' AND b.subject = 'SCBUS' AND b.catalog_number = '225'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '264' AND b.subject = 'PSYCH' AND b.catalog_number = '464'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '291' AND b.subject = 'REC' AND b.catalog_number = '270';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '291' AND b.subject = 'SDS' AND b.catalog_number = '251R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '291' AND b.subject = 'SOC' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '291' AND b.subject = 'SRF' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '291' AND b.subject = 'SWREN' AND b.catalog_number = '251R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '292' AND b.subject = 'REC' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '292' AND b.subject = 'SDS' AND b.catalog_number = '250R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '292' AND b.subject = 'SOC' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '292' AND b.subject = 'SRF' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '292' AND b.subject = 'STAT' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '292' AND b.subject = 'STAT' AND b.catalog_number = '204'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '292' AND b.subject = 'STAT' AND b.catalog_number = '206'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '292' AND b.subject = 'STAT' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '292' AND b.subject = 'STAT' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '292' AND b.subject = 'STAT' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '292' AND b.subject = 'STAT' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '292' AND b.subject = 'SWREN' AND b.catalog_number = '250R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '349R' AND b.subject = 'PSYCH' AND b.catalog_number = '352'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '349R' AND b.subject = 'PSYCH' AND b.catalog_number = '352R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '352' AND b.subject = 'SWREN' AND b.catalog_number = '349R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '352R' AND b.subject = 'SWREN' AND b.catalog_number = '349R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '354' AND b.subject = 'SRF' AND b.catalog_number = '306'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '354R' AND b.subject = 'SRF' AND b.catalog_number = '306'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '389' AND b.subject = 'PSYCH' AND b.catalog_number = '393'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '389' AND b.subject = 'PSYCH' AND b.catalog_number = '395'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '389' AND b.subject = 'PSYCH' AND b.catalog_number = '397'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '389' AND b.subject = 'PSYCH' AND b.catalog_number = '399'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '390' AND b.subject = 'PSYCH' AND b.catalog_number = '392'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '390' AND b.subject = 'PSYCH' AND b.catalog_number = '394'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '390' AND b.subject = 'PSYCH' AND b.catalog_number = '396'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '390' AND b.subject = 'PSYCH' AND b.catalog_number = '398'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '391' AND b.subject = 'STAT' AND b.catalog_number = '322'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '391' AND b.subject = 'STAT' AND b.catalog_number = '332'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '391' AND b.subject = 'STAT' AND b.catalog_number = '430'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '392' AND b.subject = 'PSYCH' AND b.catalog_number = '394'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '392' AND b.subject = 'PSYCH' AND b.catalog_number = '396'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '392' AND b.subject = 'PSYCH' AND b.catalog_number = '398'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '393' AND b.subject = 'PSYCH' AND b.catalog_number = '395'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '393' AND b.subject = 'PSYCH' AND b.catalog_number = '397'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '393' AND b.subject = 'PSYCH' AND b.catalog_number = '399'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '394' AND b.subject = 'PSYCH' AND b.catalog_number = '396';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '394' AND b.subject = 'PSYCH' AND b.catalog_number = '398'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '395' AND b.subject = 'PSYCH' AND b.catalog_number = '397'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '395' AND b.subject = 'PSYCH' AND b.catalog_number = '399'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '396' AND b.subject = 'PSYCH' AND b.catalog_number = '398'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '397' AND b.subject = 'PSYCH' AND b.catalog_number = '399'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '448R' AND b.subject = 'PSYCH' AND b.catalog_number = '459'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '465' AND b.subject = 'PSYCH' AND b.catalog_number = '467'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '493' AND b.subject = 'PSYCH' AND b.catalog_number = '634'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '675C' AND b.subject = 'PSYCH' AND b.catalog_number = '784'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '722C' AND b.subject = 'PSYCH' AND b.catalog_number = '811A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '722C' AND b.subject = 'PSYCH' AND b.catalog_number = '811B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'PSYCH' AND a.catalog_number = '722C' AND b.subject = 'PSYCH' AND b.catalog_number = '811C'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '101' AND b.subject = 'RCS' AND b.catalog_number = '133'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '111' AND b.subject = 'RCS' AND b.catalog_number = '218'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '112' AND b.subject = 'RCS' AND b.catalog_number = '234'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '114' AND b.subject = 'RCS' AND b.catalog_number = '209'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '115R' AND b.subject = 'RCS' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '122' AND b.subject = 'RCS' AND b.catalog_number = '225'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '130' AND b.subject = 'RCS' AND b.catalog_number = '228'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '151' AND b.subject = 'RCS' AND b.catalog_number = '255'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '152' AND b.subject = 'RCS' AND b.catalog_number = '253'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '170' AND b.subject = 'RCS' AND b.catalog_number = '279'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '244' AND b.subject = 'RS' AND b.catalog_number = '319'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '270' AND b.subject = 'RCS' AND b.catalog_number = '270R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '270' AND b.subject = 'RS' AND b.catalog_number = '270R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '270R' AND b.subject = 'VCULT' AND b.catalog_number = '252'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '271' AND b.subject = 'RS' AND b.catalog_number = '271R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '284' AND b.subject = 'WS' AND b.catalog_number = '261'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '307' AND b.subject = 'RS' AND b.catalog_number = '227'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '314' AND b.subject = 'RS' AND b.catalog_number = '213'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '320' AND b.subject = 'RS' AND b.catalog_number = '256'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RCS' AND a.catalog_number = '325' AND b.subject = 'WS' AND b.catalog_number = '320'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'REC' AND a.catalog_number = '256' AND b.subject = 'REC' AND b.catalog_number = '356'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'REC' AND a.catalog_number = '272' AND b.subject = 'REC' AND b.catalog_number = '300'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'REC' AND a.catalog_number = '371' AND b.subject = 'SDS' AND b.catalog_number = '250R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'REC' AND a.catalog_number = '371' AND b.subject = 'SOC' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'REC' AND a.catalog_number = '371' AND b.subject = 'SRF' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'REC' AND a.catalog_number = '434' AND b.subject = 'REC' AND b.catalog_number = '472'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RS' AND a.catalog_number = '270R' AND b.subject = 'VCULT' AND b.catalog_number = '252'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'RS' AND a.catalog_number = '357' AND b.subject = 'TS' AND b.catalog_number = '652';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SDS' AND a.catalog_number = '250R' AND b.subject = 'SOC' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SDS' AND a.catalog_number = '250R' AND b.subject = 'SRF' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SDS' AND a.catalog_number = '250R' AND b.subject = 'STAT' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SDS' AND a.catalog_number = '250R' AND b.subject = 'STAT' AND b.catalog_number = '206'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SDS' AND a.catalog_number = '250R' AND b.subject = 'STAT' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SDS' AND a.catalog_number = '250R' AND b.subject = 'STAT' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SDS' AND a.catalog_number = '250R' AND b.subject = 'STAT' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SDS' AND a.catalog_number = '250R' AND b.subject = 'STAT' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SDS' AND a.catalog_number = '251R' AND b.subject = 'SMF' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SDS' AND a.catalog_number = '251R' AND b.subject = 'SOC' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SDS' AND a.catalog_number = '251R' AND b.subject = 'SRF' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SDS' AND a.catalog_number = '310R' AND b.subject = 'SOCWK' AND b.catalog_number = '356R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SDS' AND a.catalog_number = '351R' AND b.subject = 'SOC' AND b.catalog_number = '322'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SE' AND a.catalog_number = '380' AND b.subject = 'SYDE' AND b.catalog_number = '352'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SI' AND a.catalog_number = '231R' AND b.subject = 'SI' AND b.catalog_number = '375R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SI' AND a.catalog_number = '375R' AND b.subject = 'VCULT' AND b.catalog_number = '275'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SMF' AND a.catalog_number = '220' AND b.subject = 'SOC' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SMF' AND a.catalog_number = '230' AND b.subject = 'SOC' AND b.catalog_number = '280'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '101R' AND b.subject = 'SOC' AND b.catalog_number = '120R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '221' AND b.subject = 'SRF' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '221' AND b.subject = 'SWREN' AND b.catalog_number = '251R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '280' AND b.subject = 'SRF' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '206'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '280' AND b.subject = 'STAT' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '280' AND b.subject = 'SWREN' AND b.catalog_number = '250R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '330' AND b.subject = 'SOC' AND b.catalog_number = '385'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '330' AND b.subject = 'SOC' AND b.catalog_number = '389'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '409' AND b.subject = 'SOC' AND b.catalog_number = '430'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '430' AND b.subject = 'SOC' AND b.catalog_number = '462'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOC' AND a.catalog_number = '430' AND b.subject = 'SOC' AND b.catalog_number = '465'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOCWK' AND a.catalog_number = '220R' AND b.subject = 'SRF' AND b.catalog_number = '301'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SOCWK' AND a.catalog_number = '220R' AND b.subject = 'SRF' AND b.catalog_number = '311'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SPAN' AND a.catalog_number = '261W' AND b.subject = 'SPAN' AND b.catalog_number = '301A'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SPAN' AND a.catalog_number = '262W' AND b.subject = 'SPAN' AND b.catalog_number = '301B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SPAN' AND a.catalog_number = '301A' AND b.subject = 'SPAN' AND b.catalog_number = '303W'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SPAN' AND a.catalog_number = '301B' AND b.subject = 'SPAN' AND b.catalog_number = '304W';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SRF' AND a.catalog_number = '220' AND b.subject = 'SWREN' AND b.catalog_number = '251R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SRF' AND a.catalog_number = '230' AND b.subject = 'STAT' AND b.catalog_number = '202'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SRF' AND a.catalog_number = '230' AND b.subject = 'STAT' AND b.catalog_number = '206'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SRF' AND a.catalog_number = '230' AND b.subject = 'STAT' AND b.catalog_number = '211'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SRF' AND a.catalog_number = '230' AND b.subject = 'STAT' AND b.catalog_number = '221'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SRF' AND a.catalog_number = '230' AND b.subject = 'STAT' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SRF' AND a.catalog_number = '230' AND b.subject = 'STAT' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SRF' AND a.catalog_number = '230' AND b.subject = 'SWREN' AND b.catalog_number = '250R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SRF' AND a.catalog_number = '301' AND b.subject = 'SWREN' AND b.catalog_number = '220R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '202' AND b.subject = 'STAT' AND b.catalog_number = '220'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '202' AND b.subject = 'STAT' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '220' AND b.subject = 'STAT' AND b.catalog_number = '230'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '220' AND b.subject = 'STAT' AND b.catalog_number = '240'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '221' AND b.subject = 'STAT' AND b.catalog_number = '231'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '221' AND b.subject = 'STAT' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '230' AND b.subject = 'STAT' AND b.catalog_number = '240'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '231' AND b.subject = 'STAT' AND b.catalog_number = '241'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '316' AND b.subject = 'STAT' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '316' AND b.subject = 'STAT' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '321' AND b.subject = 'STAT' AND b.catalog_number = '331'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '321' AND b.subject = 'STAT' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '321' AND b.subject = 'STAT' AND b.catalog_number = '373'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '321' AND b.subject = 'STAT' AND b.catalog_number = '374'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '321' AND b.subject = 'STAT' AND b.catalog_number = '443'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '322' AND b.subject = 'STAT' AND b.catalog_number = '332'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '322' AND b.subject = 'STAT' AND b.catalog_number = '372'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '330' AND b.subject = 'STAT' AND b.catalog_number = '334'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '331' AND b.subject = 'STAT' AND b.catalog_number = '371'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '331' AND b.subject = 'STAT' AND b.catalog_number = '373'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '331' AND b.subject = 'STAT' AND b.catalog_number = '374'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '331' AND b.subject = 'SYDE' AND b.catalog_number = '334'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '332' AND b.subject = 'STAT' AND b.catalog_number = '372'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '333' AND b.subject = 'STAT' AND b.catalog_number = '334'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '371' AND b.subject = 'STAT' AND b.catalog_number = '373'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '371' AND b.subject = 'STAT' AND b.catalog_number = '374'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '371' AND b.subject = 'SYDE' AND b.catalog_number = '334'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '373' AND b.subject = 'STAT' AND b.catalog_number = '374'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '373' AND b.subject = 'STAT' AND b.catalog_number = '443'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '374' AND b.subject = 'STAT' AND b.catalog_number = '443'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '430' AND b.subject = 'STAT' AND b.catalog_number = '830';

INSERT IGNORE INTO Antireq (course_id, antireq_course_id)
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '431' AND b.subject = 'STAT' AND b.catalog_number = '831'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '435' AND b.subject = 'STAT' AND b.catalog_number = '835'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '436' AND b.subject = 'STAT' AND b.catalog_number = '836'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '440' AND b.subject = 'STAT' AND b.catalog_number = '840'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '441' AND b.subject = 'STAT' AND b.catalog_number = '841'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '442' AND b.subject = 'STAT' AND b.catalog_number = '842'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '444' AND b.subject = 'STAT' AND b.catalog_number = '844'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '450' AND b.subject = 'STAT' AND b.catalog_number = '850'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'STAT' AND a.catalog_number = '454' AND b.subject = 'STAT' AND b.catalog_number = '854'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SWK' AND a.catalog_number = '609R' AND b.subject = 'SWK' AND b.catalog_number = '610R'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '182' AND b.subject = 'SYDE' AND b.catalog_number = '288'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '192' AND b.subject = 'SYDE' AND b.catalog_number = '208'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '300' AND b.subject = 'WKRPT' AND b.catalog_number = '400'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '300' AND b.subject = 'WKRPT' AND b.catalog_number = '401'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '321' AND b.subject = 'SYDE' AND b.catalog_number = '577'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '534' AND b.subject = 'SYDE' AND b.catalog_number = '599'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '535' AND b.subject = 'SYDE' AND b.catalog_number = '599'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '536' AND b.subject = 'SYDE' AND b.catalog_number = '599'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '537' AND b.subject = 'SYDE' AND b.catalog_number = '599'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '554' AND b.subject = 'SYDE' AND b.catalog_number = '599'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '577' AND b.subject = 'SYDE' AND b.catalog_number = '599'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '586' AND b.subject = 'SYDE' AND b.catalog_number = '599'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '660' AND b.subject = 'SYDE' AND b.catalog_number = '660B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '660A' AND b.subject = 'SYDE' AND b.catalog_number = '660B'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '660B' AND b.subject = 'SYDE' AND b.catalog_number = '660C'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '660B' AND b.subject = 'SYDE' AND b.catalog_number = '660D'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'SYDE' AND a.catalog_number = '660B' AND b.subject = 'SYDE' AND b.catalog_number = '660E'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'WKRPT' AND a.catalog_number = '100' AND b.subject = 'WKRPT' AND b.catalog_number = '101'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'WKRPT' AND a.catalog_number = '200' AND b.subject = 'WKRPT' AND b.catalog_number = '201'
UNION
SELECT LEAST(a.course_id, b.course_id), GREATEST(a.course_id, b.course_id) FROM Course a JOIN Course b ON a.course_id <> b.course_id WHERE a.subject = 'WKRPT' AND a.catalog_number = '400' AND b.subject = 'WKRPT' AND b.catalog_number = '401';


CREATE
  TABLE sylhet_restaurant
  (
    id              NUMBER PRIMARY KEY,
    restaurant_name VARCHAR2(100),
    shape sdo_geometry
  );
INSERT
INTO
  sylhet_restaurant VALUES
  (
    1,
    'Pach Bhai Restaurant',
    sdo_geometry( 2003, 8307, NULL, sdo_elem_info_array(1,1003,1),
    sdo_ordinate_array( 91.866504,24.894939, 91.866431,24.894931, 91.866398,
    24.894958, 91.866395,24.895003, 91.866435,24.895006, 91.866469,24.895006,
    91.866504,24.894939 ) )
  );
INSERT
INTO
  sylhet_restaurant VALUES
  (
    2,
    'Panshi Restaurant',
    sdo_geometry( 2003, 8307, NULL, sdo_elem_info_array(1,1003,1),
    sdo_ordinate_array( 91.867439,24.894921, 91.867418,24.895084, 91.867504,
    24.895105, 91.867587,24.895084, 91.867648,24.895033, 91.867614,24.894942,
    91.867439,24.894921 ) )
  );
INSERT
INTO
  sylhet_restaurant VALUES
  (
    3,
    'Bhujon Bari Restaurant',
    sdo_geometry( 2003, 8307, NULL, sdo_elem_info_array(1,1003,1),
    sdo_ordinate_array( 91.867454,24.894682, 91.867445,24.894849, 91.867556,
    24.894874, 91.867651,24.894864, 91.867454,24.894682 ) )
  );
INSERT
INTO
  sylhet_restaurant VALUES
  (
    4,
    'Hot Spot',
    sdo_geometry( 2003, 8307, NULL, sdo_elem_info_array(1,1003,1),
    sdo_ordinate_array( 91.867910,24.894546, 91.867913,24.894398, 91.868031,
    24.894386, 91.868031,24.894527, 91.867910,24.894546 ) )
  );
INSERT
INTO
  sylhet_restaurant VALUES
  (
    5,
    'Ishti Kutum',
    sdo_geometry( 2003, 8307, NULL, sdo_elem_info_array(1,1003,1),
    sdo_ordinate_array( 91.869653,24.904317, 91.869463,24.904341, 91.869471,
    24.904392, 91.869660,24.904369, 91.869653,24.904317 ) )
  );
INSERT
INTO
  sylhet_restaurant VALUES
  (
    6,
    'Dingi Restaurant',
    sdo_geometry( 2003, 8307, NULL, sdo_elem_info_array(1,1003,1),
    sdo_ordinate_array( 91.870559,24.905013, 91.870551,24.904802, 91.870730,
    24.904802, 91.870757,24.904979, 91.870559,24.905013 ) )
  );
INSERT
INTO
  sylhet_restaurant VALUES
  (
    7,
    'The Mad Grill',
    sdo_geometry( 2003, 8307, NULL, sdo_elem_info_array(1,1003,1),
    sdo_ordinate_array( 91.875087,24.899634, 91.875076,24.899703, 91.875166,
    24.899709, 91.875168,24.899635, 91.875087,24.899634 ) )
  );
INSERT
INTO
  sylhet_restaurant VALUES
  (
    8,
    'Sip Coffee',
    sdo_geometry( 2003, 8307, NULL, sdo_elem_info_array(1,1003,1),
    sdo_ordinate_array( 91.874824,24.898708, 91.874842,24.898759, 91.874894,
    24.898756, 91.874899,24.898706, 91.874824,24.898708 ) )
  );
INSERT
INTO
  sylhet_restaurant VALUES
  (
    9,
    'Woondal',
    sdo_geometry( 2003, 8307, NULL, sdo_elem_info_array(1,1003,1),
    sdo_ordinate_array( 91.870806,24.895214, 91.870762,24.895314, 91.870829,
    24.895326, 91.870878,24.895232, 91.870806,24.895214 ) )
  );
INSERT
INTO
  sylhet_restaurant VALUES
  (
    10,
    'Cafe La Vista',
    sdo_geometry( 2003, 8307, NULL, sdo_elem_info_array(1,1003,1),
    sdo_ordinate_array( 91.871226,24.895461, 91.871173,24.895466, 91.871158,
    24.895496, 91.871228,24.895487, 91.871226,24.895461 ) )
  );
SELECT
  *
FROM
  sylhet_restaurant;
INSERT
INTO
  user_sdo_geom_metadata VALUES
  (
    'sylhet_restaurant',
    'shape',
    sdo_dim_array( sdo_dim_element('Longitude',-180,180,10), sdo_dim_element(
    'Latitude',                                -90,90,10) ),
    8307
  );
CREATE
  INDEX sylhet_restaurant_index ON sylhet_restaurant
  (
    shape
  )
  indextype IS MDSYS.Spatial_index;
CREATE
  TABLE people
  (
    id   NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    loc sdo_geometry
  );
INSERT
INTO
  people VALUES
  (
    1,
    'Olee',
    sdo_geometry( 2001, 8307, sdo_point_type(91.869856,24.905063,NULL), NULL,
    NULL )
  );
SELECT
  *
FROM
  people;
INSERT
INTO
  people VALUES
  (
    2,
    'mmrs',
    sdo_geometry( 2001, 8307, sdo_point_type(91.868724,24.899273,NULL), NULL,
    NULL )
  );
INSERT
INTO
  people VALUES
  (
    3,
    'kazi',
    sdo_geometry( 2001, 8307, sdo_point_type(91.859764,24.910953,NULL), NULL,
    NULL )
  );
INSERT
INTO
  people VALUES
  (
    4,
    'shopon',
    sdo_geometry( 2001, 8307, sdo_point_type(91.848351,24.910257,NULL), NULL,
    NULL )
  );
INSERT
INTO
  people VALUES
  (
    5,
    'shajid',
    sdo_geometry( 2001, 8307, sdo_point_type(91.838205,24.909148,NULL), NULL,
    NULL )
  );
INSERT
INTO
  user_sdo_geom_metadata VALUES
  (
    'people',
    'loc',
    sdo_dim_array( sdo_dim_element('Longitude',-180,180,10), sdo_dim_element(
    'Latitude',                                -90,90,10) ),
    8307
  );
CREATE
  INDEX people_index ON people
  (
    loc
  )
  indextype IS MDSYS.Spatial_index;
SELECT
  *
FROM
  people p
WHERE
  p.loc.sdo_point.x > 91.839;
SELECT
  *
FROM
  sylhet_restaurant;
-- distance between two resturant
SELECT
  sdo_geom.sdo_distance(aa.shape,bb.shape,.005,'unit = m')
FROM
  sylhet_restaurant aa,
  sylhet_restaurant bb,
  user_sdo_geom_metadata m
WHERE
  aa.restaurant_name   = 'Bhujon Bari Restaurant'
AND bb.restaurant_name = 'Panshi Restaurant' ;
-- within_distance
SELECT
  sdo_geom.within_distance(aa.shape, m.diminfo ,96,bb.shape,m.diminfo)
FROM
  sylhet_restaurant aa,
  sylhet_restaurant bb,
  user_sdo_geom_metadata m
WHERE
  m.table_name         = 'SYLHET_RESTAURANT'
AND m.column_name      = 'SHAPE'
AND aa.restaurant_name = 'Bhujon Bari Restaurant'
AND bb.restaurant_name = 'Pach Bhai Restaurant' ;
-- calculate which restaurant are within 1000 meter of Bhujon Bari Restaurant
-- and distance between them
SELECT
  a.restaurant_name,
  b.restaurant_name,
  sdo_geom.sdo_distance(a.shape,b.shape,.005,'unit=m')
FROM
  sylhet_restaurant a,
  sylhet_restaurant b,
  user_sdo_geom_metadata m
WHERE
  m.table_name                                                            = 'SYLHET_RESTAURANT'
AND m.column_name                                                         = 'SHAPE'
AND a.restaurant_name                                                     = 'Bhujon Bari Restaurant'
AND SDO_GEOM.WITHIN_DISTANCE(a.shape, m.diminfo,1000, b.shape, m.diminfo) =
  'TRUE';
-- determine the best relationship of other restaurents with bhojon bari
SELECT
  c.restaurant_name ,
  sdo_geom.relate(c.shape,'determine',b.shape,.005) AS relationship
FROM
  sylhet_restaurant c,
  sylhet_restaurant b
WHERE
  b.restaurant_name = 'Bhujon Bari Restaurant';
--
SELECT
  a.restaurant_name,
  SDO_GEOM.RELATE(a.shape, 'inside+touch', b.shape, 0.005) relationship
FROM
  sylhet_restaurant a,
  sylhet_restaurant b
WHERE
  b.restaurant_name = 'Bhujon Bari Restaurant';
SELECT
  a.restaurant_name,
  SDO_GEOM.RELATE(a.shape, 'anyinteract', b.shape, 0.005) relationship
FROM
  sylhet_restaurant a,
  sylhet_restaurant b
WHERE
  b.restaurant_name = 'Bhujon Bari Restaurant';
SELECT
  a.restaurant_name,
  SDO_GEOM.RELATE(a.shape, 'equal', b.shape, 0.005) relationship
FROM
  sylhet_restaurant a,
  sylhet_restaurant b
WHERE
  b.restaurant_name = 'Bhujon Bari Restaurant';
--- area of each restaurant
SELECT
  a.restaurant_name,
  SDO_GEOM.RELATE(a.shape, 'touch', b.shape, 0.005) relationship
FROM
  sylhet_restaurant a,
  sylhet_restaurant b
WHERE
  b.restaurant_name = 'Bhujon Bari Restaurant';
--- calculating area
SELECT
  a.restaurant_name,
  sdo_geom.sdo_area(a.shape,.005)
FROM
  sylhet_restaurant a;
--- distance between a person and all restaurants
SELECT
  pp.name,
  aa.restaurant_name,
  sdo_geom.sdo_distance(aa.shape,pp.loc,.005,'unit = m') AS distance
FROM
  sylhet_restaurant aa,
  people pp;
--- calculate which restaurant are withing 500 meters of olee and their
-- distance
SELECT
  b.name,
  a.restaurant_name,
  sdo_geom.sdo_distance(a.shape,b.loc,.005,'unit=m') distance
FROM
  sylhet_restaurant a,
  people b,
  user_sdo_geom_metadata m,
  user_sdo_geom_metadata n
WHERE
  m.table_name                                                         = 'SYLHET_RESTAURANT'
AND m.column_name                                                      = 'SHAPE'
AND n.column_name                                                      = 'LOC'
AND n.table_name                                                       = 'PEOPLE'
AND b.name                                                             = 'Olee'
AND SDO_GEOM.WITHIN_DISTANCE(a.shape, m.diminfo,500, b.loc, n.diminfo) = 'TRUE'
  ;
  
  
--- center of each each restaurant
SELECT
  a.restaurant_name,
  sdo_geom.sdo_centroid( a.shape,.005 ).sdo_point.x AS Latitude ,
  sdo_geom.sdo_centroid( a.shape,.005 ).sdo_point.y AS Longitude
FROM
  sylhet_restaurant a; 
  
  -- returns the convex hull of a restaurant
SELECT c.restaurant_name, SDO_GEOM.SDO_CONVEXHULL(c.shape, m.diminfo) 
  FROM sylhet_restaurant c, user_sdo_geom_metadata m 
  WHERE m.table_name = 'SYLHET_RESTAURANT' AND m.column_name = 'SHAPE' 
  AND c.restaurant_name = 'Hot Spot';
  
  
-- Return the perimeters of all restaurant.
SELECT c.restaurant_name, SDO_GEOM.SDO_LENGTH(c.shape, .005) 
  FROM sylhet_restaurant c;
  
  

WITH example AS (
    SELECT 
    string_to_array('A,B,C', ',') AS first_array,
    string_to_array('A,B,D,F', ',') AS second_array
)

SELECT 
first_array,
second_array,
first_array @> second_array AS contains,
first_array <@ second_array AS is_contained_by,
first_array && second_array AS overlap
FROM example;
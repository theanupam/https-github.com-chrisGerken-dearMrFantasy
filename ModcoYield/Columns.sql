SELECT T.[name] AS [table_name], AC.[name] AS [column_name],   
        AC.[max_length],  
        AC.[precision], AC.[scale], AC.[is_nullable], AC.[is_ansi_padded]  
FROM [MEXICALI_OWNER].sys.[tables] AS T , [MEXICALI_OWNER].sys.[all_columns]  as AC
WHERE T.[object_id] = AC.[object_id]  
ORDER BY T.[name], AC.[column_id]
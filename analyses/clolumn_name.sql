select column_name
from raw.information_schema.columns
where table_name = 'customers' and table_schema = 'jaffle_shop'


    
    

select
    id as unique_field,
    count(*) as n_records

from USER_DB_PARROT.PARROT_FEAT.my_first_dbt_model
where id is not null
group by id
having count(*) > 1



select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select price_date
from USER_DB_PARROT.PARROT_FEAT_PARROT_FEAT.mart_crypto_summary
where price_date is null



      
    ) dbt_internal_test
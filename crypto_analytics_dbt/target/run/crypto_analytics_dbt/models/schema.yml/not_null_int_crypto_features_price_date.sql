select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select price_date
from USER_DB_PARROT.PARROT_FEAT_PARROT_FEAT.int_crypto_features
where price_date is null



      
    ) dbt_internal_test
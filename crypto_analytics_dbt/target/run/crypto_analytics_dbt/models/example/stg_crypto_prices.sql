
  create or replace   view USER_DB_PARROT.PARROT_FEAT.stg_crypto_prices
  
  
  
  
  as (
    

select
  upper(symbol)                                      as symbol,
  cast(price_date as date)                           as price_date,
  cast(open as number(38,8))                         as open,
  cast(high as number(38,8))                         as high,
  cast(low as number(38,8))                          as low,
  cast(close as number(38,8))                        as close,
  cast(adj_close as number(38,8))                    as adj_close,
  cast(volume as number(38,8))                       as volume
from USER_DB_PARROT.PARROT_RAW.CRYPTO_PRICES
  );


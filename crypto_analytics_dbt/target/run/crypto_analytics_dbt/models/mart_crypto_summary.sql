
  
    

        create or replace transient table USER_DB_PARROT.PARROT_FEAT_PARROT_FEAT.mart_crypto_summary
         as
        (

select
  symbol,
  price_date,
  close,
  sma_5,
  sma_20,
  sma_50,
  momentum_5d_pct,
  case when sma_5 > sma_20 then 1 else 0 end as bull_signal_cross
from USER_DB_PARROT.PARROT_FEAT_PARROT_FEAT.int_crypto_features
order by price_date, symbol
        );
      
  
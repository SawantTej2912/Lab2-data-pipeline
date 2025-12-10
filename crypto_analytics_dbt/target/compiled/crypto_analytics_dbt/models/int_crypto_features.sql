

with base as (
  select *
  from USER_DB_PARROT.PARROT_FEAT_PARROT_FEAT.stg_crypto_prices
)
select
  symbol,
  price_date,
  close,
  avg(close) over (partition by symbol order by price_date rows between 4 preceding and current row)  as sma_5,
  avg(close) over (partition by symbol order by price_date rows between 19 preceding and current row) as sma_20,
  avg(close) over (partition by symbol order by price_date rows between 49 preceding and current row) as sma_50,
  (close / nullif(lag(close,5) over (partition by symbol order by price_date),0) - 1) * 100 as momentum_5d_pct
from base
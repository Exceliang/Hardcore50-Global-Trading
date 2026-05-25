create table market(
    ticker varchar(12) not null,
    trade_date Date not null,
    open_price DECIMAL(10, 3),      --Buying price
    high_price DECIMAL(10, 3),      --Risk management
    low_price DECIMAL(10, 3),       --Risk management
    close_price DECIMAL(10, 3),            --Volume 
    adj_close DECIMAL(10, 3) NOT NULL,      --Backtesting price     
    volume BIGINT,                         --Liquidity
    currency VARCHAR(4),                   --Cross-market consensus
    primary key (ticker,trade_date)
);

create index idx on market(trade_date);.,
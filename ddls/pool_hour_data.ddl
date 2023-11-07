create index if not exists pool_hour_data_id_block_range_excl on "sgdXXX"."pool_hour_data" using gist (id, block_range);
create index if not exists brin_pool_hour_data on "sgdXXX"."pool_hour_data" using brin(lower(block_range), coalesce(upper(block_range), 2147483647), vid);
create index if not exists pool_hour_data_block_range_closed on "sgdXXX"."pool_hour_data"(coalesce(upper(block_range), 2147483647)) where coalesce(upper(block_range), 2147483647) < 2147483647;
create index if not exists attr_15_0_pool_hour_data_id on "sgdXXX"."pool_hour_data" using btree("id");
create index if not exists attr_15_1_pool_hour_data_period_start_unix on "sgdXXX"."pool_hour_data" using btree("period_start_unix");
create index if not exists attr_15_2_pool_hour_data_pool on "sgdXXX"."pool_hour_data" using gist("pool", block_range);
create index if not exists attr_15_3_pool_hour_data_liquidity on "sgdXXX"."pool_hour_data" using btree("liquidity");
create index if not exists attr_15_4_pool_hour_data_sqrt_price on "sgdXXX"."pool_hour_data" using btree("sqrt_price");
create index if not exists attr_15_5_pool_hour_data_token_0_price on "sgdXXX"."pool_hour_data" using btree("token_0_price");
create index if not exists attr_15_6_pool_hour_data_token_1_price on "sgdXXX"."pool_hour_data" using btree("token_1_price");
create index if not exists attr_15_7_pool_hour_data_tick on "sgdXXX"."pool_hour_data" using btree("tick");
create index if not exists attr_15_8_pool_hour_data_fee_growth_global_0x128 on "sgdXXX"."pool_hour_data" using btree("fee_growth_global_0x128");
create index if not exists attr_15_9_pool_hour_data_fee_growth_global_1x128 on "sgdXXX"."pool_hour_data" using btree("fee_growth_global_1x128");
create index if not exists attr_15_10_pool_hour_data_total_value_locked_usd on "sgdXXX"."pool_hour_data" using btree("total_value_locked_usd");
create index if not exists attr_15_11_pool_hour_data_volume_token_0 on "sgdXXX"."pool_hour_data" using btree("volume_token_0");
create index if not exists attr_15_12_pool_hour_data_volume_token_1 on "sgdXXX"."pool_hour_data" using btree("volume_token_1");
create index if not exists attr_15_13_pool_hour_data_volume_usd on "sgdXXX"."pool_hour_data" using btree("volume_usd");
create index if not exists attr_15_14_pool_hour_data_fees_usd on "sgdXXX"."pool_hour_data" using btree("fees_usd");
create index if not exists attr_15_15_pool_hour_data_tx_count on "sgdXXX"."pool_hour_data" using btree("tx_count");
create index if not exists attr_15_16_pool_hour_data_open on "sgdXXX"."pool_hour_data" using btree("open");
create index if not exists attr_15_17_pool_hour_data_high on "sgdXXX"."pool_hour_data" using btree("high");
create index if not exists attr_15_18_pool_hour_data_low on "sgdXXX"."pool_hour_data" using btree("low");
create index if not exists attr_15_19_pool_hour_data_close on "sgdXXX"."pool_hour_data" using btree("close");

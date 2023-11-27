begin;alter table "output_bazil_luccme_biomes" add column if not exists "base_cr_carbon00" numeric;commit;
begin;alter table "output_bazil_luccme_biomes" add column if not exists "base_cr_carbon10" numeric;commit;
begin;alter table "output_bazil_luccme_biomes" add column if not exists "base_cr_carbon20" numeric;commit;
begin;alter table "output_bazil_luccme_biomes" add column if not exists "base_cr_carbon30" numeric;commit;
begin;alter table "output_bazil_luccme_biomes" add column if not exists "base_cr_carbon40" numeric;commit;
begin;alter table "output_bazil_luccme_biomes" add column if not exists "base_cr_carbon50" numeric;commit;

begin;update "output_bazil_luccme_biomes" set "base_cr_carbon00" = 0.0;commit;
begin;update "output_bazil_luccme_biomes" set "base_cr_carbon10" = 0.0;commit;
begin;update "output_bazil_luccme_biomes" set "base_cr_carbon20" = 0.0;commit;
begin;update "output_bazil_luccme_biomes" set "base_cr_carbon30" = 0.0;commit;
begin;update "output_bazil_luccme_biomes" set "base_cr_carbon40" = 0.0;commit;
begin;update "output_bazil_luccme_biomes" set "base_cr_carbon50" = 0.0;commit;

begin;update "output_bazil_luccme_biomes" set "base_cr_carbon00" = trunc(s_sum.s_total, 3) from (select s.biome_id s_id, sum(s."cr_carbon00") s_total from "bazil_luccme_cr_base" s group by s.biome_id order by s.biome_id) s_sum where "output_bazil_luccme_biomes".id = s_sum.s_id;commit;
begin;update "output_bazil_luccme_biomes" set "base_cr_carbon10" = trunc(s_sum.s_total, 3) from (select s.biome_id s_id, sum(s."cr_carbon10") s_total from "bazil_luccme_cr_base" s group by s.biome_id order by s.biome_id) s_sum where "output_bazil_luccme_biomes".id = s_sum.s_id;commit;
begin;update "output_bazil_luccme_biomes" set "base_cr_carbon20" = trunc(s_sum.s_total, 3) from (select s.biome_id s_id, sum(s."cr_carbon20") s_total from "bazil_luccme_cr_base" s group by s.biome_id order by s.biome_id) s_sum where "output_bazil_luccme_biomes".id = s_sum.s_id;commit;
begin;update "output_bazil_luccme_biomes" set "base_cr_carbon30" = trunc(s_sum.s_total, 3) from (select s.biome_id s_id, sum(s."cr_carbon30") s_total from "bazil_luccme_cr_base" s group by s.biome_id order by s.biome_id) s_sum where "output_bazil_luccme_biomes".id = s_sum.s_id;commit;
begin;update "output_bazil_luccme_biomes" set "base_cr_carbon40" = trunc(s_sum.s_total, 3) from (select s.biome_id s_id, sum(s."cr_carbon40") s_total from "bazil_luccme_cr_base" s group by s.biome_id order by s.biome_id) s_sum where "output_bazil_luccme_biomes".id = s_sum.s_id;commit;
begin;update "output_bazil_luccme_biomes" set "base_cr_carbon50" = trunc(s_sum.s_total, 3) from (select s.biome_id s_id, sum(s."cr_carbon50") s_total from "bazil_luccme_cr_base" s group by s.biome_id order by s.biome_id) s_sum where "output_bazil_luccme_biomes".id = s_sum.s_id;commit;

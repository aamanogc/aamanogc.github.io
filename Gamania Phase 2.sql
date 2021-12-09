CREATE TABLE "access_info" (
  "id" text,
  "device_name" text
);

CREATE TABLE "aircon_info" (
  "id" text,
  "floor" text,
  "area" text
);

CREATE TABLE "emr_info" (
  "id" text,
  "device_name" text
);

CREATE TABLE "event_alarm_active" (
  "event_id" numeric,
  "stime" char(14) NOT NULL,
  "tag_name" varchar(36) NOT NULL,
  "tag_desc" varchar(36),
  "floor" varchar(36) NOT NULL,
  "message" varchar(1024),
  "priority" numeric,
  "ack_status" numeric,
  "alarm_group" numeric,
  "alarm_value" numeric,
  "alarm_limit" numeric,
  "teamgoal_send_type" numeric,
  "locked" numeric,
  "area" varchar(36),
  "asset_id" varchar(36)
);

CREATE TABLE "event_alarm_raw" (
  "event_id" numeric,
  "stime" char(14) NOT NULL,
  "tag_name" varchar(36) NOT NULL,
  "tag_desc" varchar(36),
  "floor" varchar(36),
  "message" varchar(1024),
  "priority" numeric,
  "area" varchar(36),
  "asset_id" varchar(36)
);

CREATE TABLE "event_alarm_raw_tmp" (
  "event_id" numeric,
  "stime" char(14),
  "tag_name" varchar(36)
);

CREATE TABLE "pdu_info" (
  "pdu_box_name" text,
  "circuit_id" text,
  "circuit_name" text,
  "device_id" text
);

CREATE TABLE "perf_ventilator_raw" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "vent_status" numeric
);

CREATE TABLE "perf_ventilator_tmp" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "vent_status" numeric
);

CREATE TABLE "selfcheck_connection" (
  "stime" char(14),
  "status" char(6),
  "idle_time" text
);

CREATE TABLE "selfcheck_disksize" (
  "stime" char(14),
  "database_size" real,
  "table_name" text,
  "row_estimate" real,
  "total_bytes" real,
  "index_bytes" real,
  "toast_bytes" real,
  "table_bytes" real,
  "total" text,
  "index" text,
  "toast" text,
  "table" text
);

CREATE TABLE "stat_event_status_building_day" (
  "stime" char(14),
  "priority" numeric,
  "count" numeric,
  "percentage" numeric
);

CREATE TABLE "stat_event_status_building_hour" (
  "stime" char(14),
  "priority" numeric,
  "count" numeric,
  "percentage" numeric
);

CREATE TABLE "stat_event_status_building_week" (
  "stime" char(14),
  "hour" char(2),
  "priority" numeric,
  "count" numeric,
  "avg" numeric
);

CREATE TABLE "stat_event_status_floor_day" (
  "stime" char(14),
  "floor" text,
  "priority" numeric,
  "count" numeric,
  "percentage" numeric
);

CREATE TABLE "stat_event_status_floor_hour" (
  "stime" char(14),
  "floor" text,
  "priority" numeric,
  "count" numeric,
  "percentage" numeric
);

CREATE TABLE "stat_event_status_floor_week" (
  "stime" char(14),
  "floor" text,
  "hour" char(2),
  "priority" numeric,
  "count" numeric,
  "avg" numeric
);

CREATE TABLE "tag_air_quality_tmp" (
  "stime" char(14) NOT NULL,
  "tag_name" varchar(36) NOT NULL,
  "tag_value" numeric,
  "quality" numeric
);

CREATE TABLE "tag_aircon_tmp" (
  "stime" char(14) NOT NULL,
  "tag_name" varchar(36) NOT NULL,
  "tag_value" numeric,
  "quality" numeric
);

CREATE TABLE "tag_co_concn_tmp" (
  "stime" char(14) NOT NULL,
  "tag_name" varchar(36) NOT NULL,
  "tag_value" numeric,
  "quality" numeric
);

CREATE TABLE "tag_generator_tmp" (
  "stime" char(14) NOT NULL,
  "tag_name" varchar(36) NOT NULL,
  "tag_value" numeric,
  "quality" numeric
);

CREATE TABLE "tag_info" (
  "tag_name" varchar(36) NOT NULL,
  "device_type" varchar(36),
  "device_id" varchar(36) NOT NULL,
  "perf_item" varchar(36) NOT NULL,
  "unit" varchar(36),
  "tag_desc" varchar(1024),
  "use_yn" char(1),
  "floor" varchar(10),
  "area" char(10),
  "asset_id" varchar(36),
  "asset_type" varchar(36)
);

CREATE TABLE "tag_light_tmp" (
  "stime" char(14) NOT NULL,
  "tag_name" varchar(36) NOT NULL,
  "tag_value" numeric,
  "quality" numeric
);

CREATE TABLE "tag_outside_air_tmp" (
  "stime" char(14) NOT NULL,
  "tag_name" varchar(36) NOT NULL,
  "tag_value" numeric,
  "quality" numeric
);

CREATE TABLE "tag_pdu_tmp" (
  "stime" char(14) NOT NULL,
  "tag_name" varchar(36) NOT NULL,
  "tag_value" numeric,
  "quality" numeric
);

CREATE TABLE "tag_pool_tmp" (
  "stime" char(14) NOT NULL,
  "tag_name" varchar(36) NOT NULL,
  "tag_value" numeric,
  "quality" numeric
);

CREATE TABLE "tag_pump_tmp" (
  "stime" char(14) NOT NULL,
  "tag_name" varchar(36) NOT NULL,
  "tag_value" numeric,
  "quality" numeric
);

CREATE TABLE "tag_server_room_tmp" (
  "stime" char(14) NOT NULL,
  "tag_name" varchar(36) NOT NULL,
  "tag_value" numeric,
  "quality" numeric
);

CREATE TABLE "tag_temp_humi_tmp" (
  "stime" char(14) NOT NULL,
  "tag_name" varchar(36) NOT NULL,
  "tag_value" numeric,
  "quality" numeric
);

CREATE TABLE "tag_ups_tmp" (
  "stime" char(14) NOT NULL,
  "tag_name" varchar(36) NOT NULL,
  "tag_value" numeric,
  "quality" numeric
);

CREATE TABLE "tag_ventilator_tmp" (
  "stime" char(14) NOT NULL,
  "tag_name" varchar(36) NOT NULL,
  "tag_value" numeric,
  "quality" numeric
);

CREATE TABLE "tb_asset_common" (
  "id" varchar(50) NOT NULL,
  "name" varchar(50),
  "asset_type" varchar(50),
  "parent_id" varchar(255),
  "mng_id" varchar(255),
  "ip" varchar(255),
  "serial_no" varchar(255),
  "props" varchar(255),
  "row_index" varchar(255),
  "column_index" varchar(255),
  "row_weight" varchar(255),
  "column_weight" varchar(255),
  "padding" varchar(255),
  "rotate" varchar(255),
  "area" varchar(255),
  "floor" varchar(255)
);

CREATE TABLE "perf_air_quality_building_day" (
  "stime" char(10) NOT NULL,
  "min_humi" numeric,
  "avg_humi" numeric,
  "max_humi" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric,
  "min_co2" numeric,
  "avg_co2" numeric,
  "max_co2" numeric,
  "min_ch2o" numeric,
  "avg_ch2o" numeric,
  "max_ch2o" numeric
);

CREATE TABLE "perf_air_quality_building_hour" (
  "stime" char(10) NOT NULL,
  "min_humi" numeric,
  "avg_humi" numeric,
  "max_humi" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric,
  "min_co2" numeric,
  "avg_co2" numeric,
  "max_co2" numeric,
  "min_ch2o" numeric,
  "avg_ch2o" numeric,
  "max_ch2o" numeric
);

CREATE TABLE "perf_air_quality_day" (
  "stime" char(8) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "min_humi" numeric,
  "avg_humi" numeric,
  "max_humi" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric,
  "min_co2" numeric,
  "avg_co2" numeric,
  "max_co2" numeric,
  "min_ch2o" numeric,
  "avg_ch2o" numeric,
  "max_ch2o" numeric
);

CREATE TABLE "perf_air_quality_floor_day" (
  "stime" char(10) NOT NULL,
  "floor" varchar(36) NOT NULL,
  "min_humi" numeric,
  "avg_humi" numeric,
  "max_humi" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric,
  "min_co2" numeric,
  "avg_co2" numeric,
  "max_co2" numeric,
  "min_ch2o" numeric,
  "avg_ch2o" numeric,
  "max_ch2o" numeric
);

CREATE TABLE "perf_air_quality_floor_hour" (
  "stime" char(10) NOT NULL,
  "floor" varchar(36) NOT NULL,
  "min_humi" numeric,
  "avg_humi" numeric,
  "max_humi" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric,
  "min_co2" numeric,
  "avg_co2" numeric,
  "max_co2" numeric,
  "min_ch2o" numeric,
  "avg_ch2o" numeric,
  "max_ch2o" numeric
);

CREATE TABLE "perf_air_quality_hour" (
  "stime" char(10) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "min_humi" numeric,
  "avg_humi" numeric,
  "max_humi" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric,
  "min_co2" numeric,
  "avg_co2" numeric,
  "max_co2" numeric,
  "min_ch2o" numeric,
  "avg_ch2o" numeric,
  "max_ch2o" numeric
);

CREATE TABLE "perf_air_quality_min" (
  "stime" char(14),
  "device_id" varchar(36),
  "humi" numeric,
  "temp" numeric,
  "co2" numeric,
  "ch2o" numeric
);

CREATE TABLE "perf_air_quality_raw" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "humi" numeric,
  "temp" numeric,
  "co2" numeric,
  "ch2o" numeric
);

CREATE TABLE "perf_air_quality_tmp" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "humi" numeric,
  "temp" numeric,
  "co2" numeric,
  "ch2o" numeric
);

CREATE TABLE "perf_aircon_raw" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "aircon_error" numeric,
  "aircon_run" numeric
);

CREATE TABLE "perf_aircon_tmp" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "aircon_error" numeric,
  "aircon_run" numeric,
  "aircon_ts" numeric,
  "aircon_tr" numeric
);

CREATE TABLE "perf_air_quality_chart" (
  "stime" varchar(12),
  "avg_humi" numeric,
  "avg_temp" numeric,
  "avg_co2" numeric,
  "avg_ch2o" numeric,
  "humi" numeric,
  "temp" numeric,
  "co2" numeric,
  "ch2o" numeric
);

CREATE TABLE "perf_car_parking_hour" (
  "event_time" char(10) NOT NULL,
  "car_type" varchar(5) NOT NULL,
  "identity_id" varchar(2),
  "sum_enter_count" numeric
);

CREATE TABLE "perf_car_parking_raw" (
  "stime" char(14) NOT NULL,
  "event_id" char(14) NOT NULL,
  "event_time" varchar(36),
  "meta_data" varchar(36),
  "camera_alias" varchar(36),
  "car_id" varchar(36),
  "car_no" varchar(36),
  "company_name" varchar(36),
  "dep_name" varchar(36),
  "identity_id" varchar(36),
  "emp_id" varchar(36),
  "owner_id" varchar(36),
  "owner_name" varchar(36),
  "image_path" varchar(150)
);

CREATE TABLE "perf_car_parking_tmp" (
  "stime" char(14) NOT NULL,
  "event_id" char(14) NOT NULL,
  "event_time" varchar(36),
  "meta_data" varchar(36),
  "camera_alias" varchar(36),
  "car_id" varchar(36),
  "car_no" varchar(36),
  "company_name" varchar(36),
  "dep_name" varchar(36),
  "identity_id" varchar(36),
  "emp_id" varchar(36),
  "owner_id" varchar(36),
  "owner_name" varchar(36),
  "image_path" varchar(150)
);

CREATE TABLE "perf_co_concn_building_day" (
  "stime" char(10) NOT NULL,
  "min_co" numeric,
  "avg_co" numeric,
  "max_co" numeric
);

CREATE TABLE "perf_co_concn_building_hour" (
  "stime" char(10) NOT NULL,
  "min_co" numeric,
  "avg_co" numeric,
  "max_co" numeric
);

CREATE TABLE "perf_co_concn_day" (
  "stime" char(8) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "min_co" numeric,
  "avg_co" numeric,
  "max_co" numeric
);

CREATE TABLE "perf_co_concn_floor_day" (
  "stime" char(10) NOT NULL,
  "floor" varchar(36) NOT NULL,
  "min_co" numeric,
  "avg_co" numeric,
  "max_co" numeric
);

CREATE TABLE "perf_co_concn_floor_hour" (
  "stime" char(10) NOT NULL,
  "floor" varchar(36) NOT NULL,
  "min_co" numeric,
  "avg_co" numeric,
  "max_co" numeric
);

CREATE TABLE "perf_co_concn_hour" (
  "stime" char(10) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "min_co" numeric,
  "avg_co" numeric,
  "max_co" numeric
);

CREATE TABLE "perf_co_concn_raw" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "co" numeric
);

CREATE TABLE "perf_co_concn_tmp" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "co" numeric
);

CREATE TABLE "perf_door_raw" (
  "stime" char(14) NOT NULL,
  "device_name" varchar(128) NOT NULL,
  "device_status" numeric,
  "device_id" varchar(36)
);

CREATE TABLE "perf_door_tmp" (
  "stime" char(14) NOT NULL,
  "device_name" varchar(128) NOT NULL,
  "device_status" numeric,
  "device_id" varchar(36)
);

CREATE TABLE "perf_emergency_button_raw" (
  "stime" char(14) NOT NULL,
  "device_type" varchar(36) NOT NULL,
  "device_uri" varchar(36),
  "device_status" varchar(36),
  "device_value" varchar(36),
  "modify_time" varchar(36),
  "command_name" varchar(36),
  "device_name_ui" varchar(36),
  "building_id" varchar(10),
  "building_name" varchar(36),
  "floor" varchar(36),
  "is_alarm" numeric,
  "device_id" varchar(36)
);

CREATE TABLE "perf_emergency_button_tmp" (
  "stime" char(14) NOT NULL,
  "device_type" varchar(36) NOT NULL,
  "device_uri" varchar(36),
  "device_status" varchar(36),
  "device_value" varchar(36),
  "modify_time" varchar(36),
  "command_name" varchar(36),
  "device_name_ui" varchar(36),
  "building_id" varchar(10),
  "building_name" varchar(36),
  "floor" varchar(36),
  "is_alarm" numeric,
  "device_id" varchar(36)
);

CREATE TABLE "perf_generator_raw" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "gnr_error" numeric,
  "gnr_run" numeric,
  "ot_hh" numeric,
  "ot_ll" numeric
);

CREATE TABLE "perf_generator_tmp" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "gnr_error" numeric,
  "gnr_run" numeric,
  "ot_hh" numeric,
  "ot_ll" numeric
);

CREATE TABLE "perf_kpi_floor_min" (
  "stime" char(12) NOT NULL,
  "floor" varchar(36) NOT NULL,
  "avg_humi" numeric,
  "avg_temp" numeric,
  "avg_co2" numeric,
  "avg_ch2o" numeric,
  "avg_co" numeric,
  "sum_kw" numeric
);

CREATE TABLE "perf_light_raw" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "light_status" numeric,
  "auto_mode" numeric,
  "manual_mode" numeric
);

CREATE TABLE "perf_light_tmp" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "light_status" numeric,
  "auto_mode" numeric,
  "manual_mode" numeric
);

CREATE TABLE "perf_outside_air_day" (
  "stime" char(8) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "min_humi" numeric,
  "avg_humi" numeric,
  "max_humi" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric
);

CREATE TABLE "perf_outside_air_hour" (
  "stime" char(10) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "min_humi" numeric,
  "avg_humi" numeric,
  "max_humi" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric
);

CREATE TABLE "perf_outside_air_raw" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "humi" numeric,
  "temp" numeric
);

CREATE TABLE "perf_outside_air_tmp" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "humi" numeric,
  "temp" numeric
);

CREATE TABLE "perf_pdu_building_co2_year" (
  "stime" char(14) NOT NULL,
  "cost_kwh_year" numeric,
  "cost_co2_year" numeric
);

CREATE TABLE "perf_pdu_building_day" (
  "stime" char(12) NOT NULL,
  "min_i" numeric,
  "avg_i" numeric,
  "max_i" numeric,
  "sum_i" numeric,
  "min_i_r" numeric,
  "avg_i_r" numeric,
  "max_i_r" numeric,
  "sum_i_r" numeric,
  "min_i_s" numeric,
  "avg_i_s" numeric,
  "max_i_s" numeric,
  "sum_i_s" numeric,
  "min_i_t" numeric,
  "avg_i_t" numeric,
  "max_i_t" numeric,
  "sum_i_t" numeric,
  "min_kw" numeric,
  "avg_kw" numeric,
  "max_kw" numeric,
  "sum_kw" numeric,
  "min_kwh" numeric,
  "avg_kwh" numeric,
  "max_kwh" numeric,
  "sum_kwh" numeric,
  "min_pf" numeric,
  "avg_pf" numeric,
  "max_pf" numeric,
  "sum_pf" numeric,
  "min_pf_r" numeric,
  "avg_pf_r" numeric,
  "max_pf_r" numeric,
  "sum_pf_r" numeric,
  "min_pf_s" numeric,
  "avg_pf_s" numeric,
  "max_pf_s" numeric,
  "sum_pf_s" numeric,
  "min_pf_t" numeric,
  "avg_pf_t" numeric,
  "max_pf_t" numeric,
  "sum_pf_t" numeric,
  "min_v" numeric,
  "avg_v" numeric,
  "max_v" numeric,
  "sum_v" numeric
);

CREATE TABLE "perf_pdu_building_hour" (
  "stime" char(12) NOT NULL,
  "min_i" numeric,
  "avg_i" numeric,
  "max_i" numeric,
  "sum_i" numeric,
  "min_i_r" numeric,
  "avg_i_r" numeric,
  "max_i_r" numeric,
  "sum_i_r" numeric,
  "min_i_s" numeric,
  "avg_i_s" numeric,
  "max_i_s" numeric,
  "sum_i_s" numeric,
  "min_i_t" numeric,
  "avg_i_t" numeric,
  "max_i_t" numeric,
  "sum_i_t" numeric,
  "min_kw" numeric,
  "avg_kw" numeric,
  "max_kw" numeric,
  "sum_kw" numeric,
  "min_kwh" numeric,
  "avg_kwh" numeric,
  "max_kwh" numeric,
  "sum_kwh" numeric,
  "min_pf" numeric,
  "avg_pf" numeric,
  "max_pf" numeric,
  "sum_pf" numeric,
  "min_pf_r" numeric,
  "avg_pf_r" numeric,
  "max_pf_r" numeric,
  "sum_pf_r" numeric,
  "min_pf_s" numeric,
  "avg_pf_s" numeric,
  "max_pf_s" numeric,
  "sum_pf_s" numeric,
  "min_pf_t" numeric,
  "avg_pf_t" numeric,
  "max_pf_t" numeric,
  "sum_pf_t" numeric,
  "min_v" numeric,
  "avg_v" numeric,
  "max_v" numeric,
  "sum_v" numeric
);

CREATE TABLE "perf_pdu_building_min" (
  "stime" char(12) NOT NULL,
  "min_i" numeric,
  "avg_i" numeric,
  "max_i" numeric,
  "sum_i" numeric,
  "min_i_r" numeric,
  "avg_i_r" numeric,
  "max_i_r" numeric,
  "sum_i_r" numeric,
  "min_i_s" numeric,
  "avg_i_s" numeric,
  "max_i_s" numeric,
  "sum_i_s" numeric,
  "min_i_t" numeric,
  "avg_i_t" numeric,
  "max_i_t" numeric,
  "sum_i_t" numeric,
  "min_kw" numeric,
  "avg_kw" numeric,
  "max_kw" numeric,
  "sum_kw" numeric,
  "min_kwh" numeric,
  "avg_kwh" numeric,
  "max_kwh" numeric,
  "sum_kwh" numeric,
  "min_pf" numeric,
  "avg_pf" numeric,
  "max_pf" numeric,
  "sum_pf" numeric,
  "min_pf_r" numeric,
  "avg_pf_r" numeric,
  "max_pf_r" numeric,
  "sum_pf_r" numeric,
  "min_pf_s" numeric,
  "avg_pf_s" numeric,
  "max_pf_s" numeric,
  "sum_pf_s" numeric,
  "min_pf_t" numeric,
  "avg_pf_t" numeric,
  "max_pf_t" numeric,
  "sum_pf_t" numeric,
  "min_v" numeric,
  "avg_v" numeric,
  "max_v" numeric,
  "sum_v" numeric
);

CREATE TABLE "perf_pdu_day" (
  "stime" char(12) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "floor" varchar(10),
  "device_type" varchar(36),
  "min_i" numeric,
  "avg_i" numeric,
  "max_i" numeric,
  "sum_i" numeric,
  "min_i_r" numeric,
  "avg_i_r" numeric,
  "max_i_r" numeric,
  "sum_i_r" numeric,
  "min_i_s" numeric,
  "avg_i_s" numeric,
  "max_i_s" numeric,
  "sum_i_s" numeric,
  "min_i_t" numeric,
  "avg_i_t" numeric,
  "max_i_t" numeric,
  "sum_i_t" numeric,
  "min_kw" numeric,
  "avg_kw" numeric,
  "max_kw" numeric,
  "sum_kw" numeric,
  "min_kwh" numeric,
  "avg_kwh" numeric,
  "max_kwh" numeric,
  "sum_kwh" numeric,
  "min_pf" numeric,
  "avg_pf" numeric,
  "max_pf" numeric,
  "sum_pf" numeric,
  "min_pf_r" numeric,
  "avg_pf_r" numeric,
  "max_pf_r" numeric,
  "sum_pf_r" numeric,
  "min_pf_s" numeric,
  "avg_pf_s" numeric,
  "max_pf_s" numeric,
  "sum_pf_s" numeric,
  "min_pf_t" numeric,
  "avg_pf_t" numeric,
  "max_pf_t" numeric,
  "sum_pf_t" numeric,
  "min_v" numeric,
  "avg_v" numeric,
  "max_v" numeric,
  "sum_v" numeric
);

CREATE TABLE "perf_pdu_floor_day" (
  "stime" char(12) NOT NULL,
  "floor" varchar(5) NOT NULL,
  "min_i" numeric,
  "avg_i" numeric,
  "max_i" numeric,
  "sum_i" numeric,
  "min_i_r" numeric,
  "avg_i_r" numeric,
  "max_i_r" numeric,
  "sum_i_r" numeric,
  "min_i_s" numeric,
  "avg_i_s" numeric,
  "max_i_s" numeric,
  "sum_i_s" numeric,
  "min_i_t" numeric,
  "avg_i_t" numeric,
  "max_i_t" numeric,
  "sum_i_t" numeric,
  "min_kw" numeric,
  "avg_kw" numeric,
  "max_kw" numeric,
  "sum_kw" numeric,
  "min_kwh" numeric,
  "avg_kwh" numeric,
  "max_kwh" numeric,
  "sum_kwh" numeric,
  "min_pf" numeric,
  "avg_pf" numeric,
  "max_pf" numeric,
  "sum_pf" numeric,
  "min_pf_r" numeric,
  "avg_pf_r" numeric,
  "max_pf_r" numeric,
  "sum_pf_r" numeric,
  "min_pf_s" numeric,
  "avg_pf_s" numeric,
  "max_pf_s" numeric,
  "sum_pf_s" numeric,
  "min_pf_t" numeric,
  "avg_pf_t" numeric,
  "max_pf_t" numeric,
  "sum_pf_t" numeric,
  "min_v" numeric,
  "avg_v" numeric,
  "max_v" numeric,
  "sum_v" numeric
);

CREATE TABLE "perf_pdu_floor_hour" (
  "stime" char(12) NOT NULL,
  "floor" varchar(5) NOT NULL,
  "min_i" numeric,
  "avg_i" numeric,
  "max_i" numeric,
  "sum_i" numeric,
  "min_i_r" numeric,
  "avg_i_r" numeric,
  "max_i_r" numeric,
  "sum_i_r" numeric,
  "min_i_s" numeric,
  "avg_i_s" numeric,
  "max_i_s" numeric,
  "sum_i_s" numeric,
  "min_i_t" numeric,
  "avg_i_t" numeric,
  "max_i_t" numeric,
  "sum_i_t" numeric,
  "min_kw" numeric,
  "avg_kw" numeric,
  "max_kw" numeric,
  "sum_kw" numeric,
  "min_kwh" numeric,
  "avg_kwh" numeric,
  "max_kwh" numeric,
  "sum_kwh" numeric,
  "min_pf" numeric,
  "avg_pf" numeric,
  "max_pf" numeric,
  "sum_pf" numeric,
  "min_pf_r" numeric,
  "avg_pf_r" numeric,
  "max_pf_r" numeric,
  "sum_pf_r" numeric,
  "min_pf_s" numeric,
  "avg_pf_s" numeric,
  "max_pf_s" numeric,
  "sum_pf_s" numeric,
  "min_pf_t" numeric,
  "avg_pf_t" numeric,
  "max_pf_t" numeric,
  "sum_pf_t" numeric,
  "min_v" numeric,
  "avg_v" numeric,
  "max_v" numeric,
  "sum_v" numeric
);

CREATE TABLE "perf_pdu_floor_min" (
  "stime" char(12) NOT NULL,
  "floor" varchar(5) NOT NULL,
  "min_i" numeric,
  "avg_i" numeric,
  "max_i" numeric,
  "sum_i" numeric,
  "min_i_r" numeric,
  "avg_i_r" numeric,
  "max_i_r" numeric,
  "sum_i_r" numeric,
  "min_i_s" numeric,
  "avg_i_s" numeric,
  "max_i_s" numeric,
  "sum_i_s" numeric,
  "min_i_t" numeric,
  "avg_i_t" numeric,
  "max_i_t" numeric,
  "sum_i_t" numeric,
  "min_kw" numeric,
  "avg_kw" numeric,
  "max_kw" numeric,
  "sum_kw" numeric,
  "min_kwh" numeric,
  "avg_kwh" numeric,
  "max_kwh" numeric,
  "sum_kwh" numeric,
  "min_pf" numeric,
  "avg_pf" numeric,
  "max_pf" numeric,
  "sum_pf" numeric,
  "min_pf_r" numeric,
  "avg_pf_r" numeric,
  "max_pf_r" numeric,
  "sum_pf_r" numeric,
  "min_pf_s" numeric,
  "avg_pf_s" numeric,
  "max_pf_s" numeric,
  "sum_pf_s" numeric,
  "min_pf_t" numeric,
  "avg_pf_t" numeric,
  "max_pf_t" numeric,
  "sum_pf_t" numeric,
  "min_v" numeric,
  "avg_v" numeric,
  "max_v" numeric,
  "sum_v" numeric
);

CREATE TABLE "perf_pdu_floor_sec" (
  "stime" char(14) NOT NULL,
  "floor" varchar(5) NOT NULL,
  "min_kw" numeric,
  "avg_kw" numeric,
  "max_kw" numeric,
  "sum_kw" numeric,
  "min_kwh" numeric,
  "avg_kwh" numeric,
  "max_kwh" numeric,
  "sum_kwh" numeric
);

CREATE TABLE "perf_pdu_hour" (
  "stime" char(12) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "floor" varchar(10),
  "device_type" varchar(36),
  "min_i" numeric,
  "avg_i" numeric,
  "max_i" numeric,
  "sum_i" numeric,
  "min_i_r" numeric,
  "avg_i_r" numeric,
  "max_i_r" numeric,
  "sum_i_r" numeric,
  "min_i_s" numeric,
  "avg_i_s" numeric,
  "max_i_s" numeric,
  "sum_i_s" numeric,
  "min_i_t" numeric,
  "avg_i_t" numeric,
  "max_i_t" numeric,
  "sum_i_t" numeric,
  "min_kw" numeric,
  "avg_kw" numeric,
  "max_kw" numeric,
  "sum_kw" numeric,
  "min_kwh" numeric,
  "avg_kwh" numeric,
  "max_kwh" numeric,
  "sum_kwh" numeric,
  "min_pf" numeric,
  "avg_pf" numeric,
  "max_pf" numeric,
  "sum_pf" numeric,
  "min_pf_r" numeric,
  "avg_pf_r" numeric,
  "max_pf_r" numeric,
  "sum_pf_r" numeric,
  "min_pf_s" numeric,
  "avg_pf_s" numeric,
  "max_pf_s" numeric,
  "sum_pf_s" numeric,
  "min_pf_t" numeric,
  "avg_pf_t" numeric,
  "max_pf_t" numeric,
  "sum_pf_t" numeric,
  "min_v" numeric,
  "avg_v" numeric,
  "max_v" numeric,
  "sum_v" numeric
);

CREATE TABLE "perf_pdu_kwh_year" (
  "stime" char(14) NOT NULL,
  "device_id" char(12) NOT NULL,
  "min_kwh_year" numeric,
  "max_kwh_year" numeric,
  "cost_kwh_year" numeric
);

CREATE TABLE "perf_pdu_kwh_year_start" (
  "stime" char(14),
  "min_kwh_year" numeric,
  "max_kwh_year" numeric,
  "device_id" varchar(36),
  "cost_kwh_year" numeric
);

CREATE TABLE "perf_pdu_min" (
  "stime" char(12) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "floor" varchar(10),
  "device_type" varchar(36),
  "min_i" numeric,
  "avg_i" numeric,
  "max_i" numeric,
  "sum_i" numeric,
  "min_i_r" numeric,
  "avg_i_r" numeric,
  "max_i_r" numeric,
  "sum_i_r" numeric,
  "min_i_s" numeric,
  "avg_i_s" numeric,
  "max_i_s" numeric,
  "sum_i_s" numeric,
  "min_i_t" numeric,
  "avg_i_t" numeric,
  "max_i_t" numeric,
  "sum_i_t" numeric,
  "min_kw" numeric,
  "avg_kw" numeric,
  "max_kw" numeric,
  "sum_kw" numeric,
  "min_kwh" numeric,
  "avg_kwh" numeric,
  "max_kwh" numeric,
  "sum_kwh" numeric,
  "min_pf" numeric,
  "avg_pf" numeric,
  "max_pf" numeric,
  "sum_pf" numeric,
  "min_pf_r" numeric,
  "avg_pf_r" numeric,
  "max_pf_r" numeric,
  "sum_pf_r" numeric,
  "min_pf_s" numeric,
  "avg_pf_s" numeric,
  "max_pf_s" numeric,
  "sum_pf_s" numeric,
  "min_pf_t" numeric,
  "avg_pf_t" numeric,
  "max_pf_t" numeric,
  "sum_pf_t" numeric,
  "min_v" numeric,
  "avg_v" numeric,
  "max_v" numeric,
  "sum_v" numeric
);

CREATE TABLE "perf_pdu_raw" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "pdu_error" numeric,
  "i" numeric,
  "i_r" numeric,
  "i_s" numeric,
  "i_t" numeric,
  "kw" numeric,
  "kwh" numeric,
  "pf" numeric,
  "pf_r" numeric,
  "pf_s" numeric,
  "pf_t" numeric,
  "v" numeric
);

CREATE TABLE "perf_pdu_tmp" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "pdu_error" numeric,
  "i" numeric,
  "i_r" numeric,
  "i_s" numeric,
  "i_t" numeric,
  "kw" numeric,
  "kwh" numeric,
  "pf" numeric,
  "pf_r" numeric,
  "pf_s" numeric,
  "pf_t" numeric,
  "v" numeric
);

CREATE TABLE "perf_pdu_chart" (
  "stime" varchar(12),
  "month_kw" numeric,
  "today_kw" numeric
);

CREATE TABLE "perf_pool_raw" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "pool_status" numeric,
  "pool_hh" numeric,
  "pool_ll" numeric
);

CREATE TABLE "perf_pool_tmp" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "pool_status" numeric,
  "pool_hh" numeric,
  "pool_ll" numeric
);

CREATE TABLE "perf_pump_raw" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "pump_status" numeric,
  "pump_trip" numeric
);

CREATE TABLE "perf_pump_tmp" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "pump_status" numeric,
  "pump_trip" numeric
);

CREATE TABLE "perf_server_room_day" (
  "stime" char(8) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric,
  "min_humi" numeric,
  "avg_humi" numeric,
  "max_humi" numeric
);

CREATE TABLE "perf_server_room_hour" (
  "stime" char(10) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric,
  "min_humi" numeric,
  "avg_humi" numeric,
  "max_humi" numeric
);

CREATE TABLE "perf_server_room_min" (
  "stime" char(12) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric,
  "min_humi" numeric,
  "avg_humi" numeric,
  "max_humi" numeric
);

CREATE TABLE "perf_server_room_raw" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "ac_run" numeric,
  "ac1_leak" numeric,
  "ac1_trip" numeric,
  "ac2_leak" numeric,
  "ac2_trip" numeric,
  "hi_temp" numeric,
  "temp" numeric,
  "humi" numeric
);

CREATE TABLE "perf_server_room_tmp" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "ac_run" numeric,
  "ac1_leak" numeric,
  "ac1_trip" numeric,
  "ac2_leak" numeric,
  "ac2_trip" numeric,
  "hi_temp" numeric,
  "temp" numeric,
  "humi" numeric
);

CREATE TABLE "perf_temp_humi_floor_area_min" (
  "stime" char(14) NOT NULL,
  "floor" varchar(36) NOT NULL,
  "area" varchar(36) NOT NULL,
  "min_humi" numeric,
  "avg_humi" numeric,
  "max_humi" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric
);

CREATE TABLE "perf_temp_humi_raw" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "floor" varchar(36) NOT NULL,
  "area" varchar(36) NOT NULL,
  "humi" numeric,
  "temp" numeric
);

CREATE TABLE "perf_temp_humi_tmp" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "floor" varchar(36) NOT NULL,
  "area" varchar(36) NOT NULL,
  "humi" numeric,
  "temp" numeric
);

CREATE TABLE "perf_ups_building_day" (
  "stime" char(12) NOT NULL,
  "min_bip_frq" numeric,
  "avg_bip_frq" numeric,
  "max_bip_frq" numeric,
  "min_bip_v_r" numeric,
  "avg_bip_v_r" numeric,
  "max_bip_v_r" numeric,
  "min_bip_v_s" numeric,
  "avg_bip_v_s" numeric,
  "max_bip_v_s" numeric,
  "min_bip_v_t" numeric,
  "avg_bip_v_t" numeric,
  "max_bip_v_t" numeric,
  "min_bt_v" numeric,
  "avg_bt_v" numeric,
  "max_bt_v" numeric,
  "min_cell_v" numeric,
  "avg_cell_v" numeric,
  "max_cell_v" numeric,
  "min_ip_frq" numeric,
  "avg_ip_frq" numeric,
  "max_ip_frq" numeric,
  "min_ip_v_ft" numeric,
  "avg_ip_v_ft" numeric,
  "max_ip_v_ft" numeric,
  "min_ip_v_r" numeric,
  "avg_ip_v_r" numeric,
  "max_ip_v_r" numeric,
  "min_ip_v_s" numeric,
  "avg_ip_v_s" numeric,
  "max_ip_v_s" numeric,
  "min_ip_v_t" numeric,
  "avg_ip_v_t" numeric,
  "max_ip_v_t" numeric,
  "min_ld_pct" numeric,
  "avg_ld_pct" numeric,
  "max_ld_pct" numeric,
  "min_op_cp_r" numeric,
  "avg_op_cp_r" numeric,
  "max_op_cp_r" numeric,
  "min_op_cp_s" numeric,
  "avg_op_cp_s" numeric,
  "max_op_cp_s" numeric,
  "min_op_cp_t" numeric,
  "avg_op_cp_t" numeric,
  "max_op_cp_t" numeric,
  "min_op_cp_to" numeric,
  "avg_op_cp_to" numeric,
  "max_op_cp_to" numeric,
  "min_op_i_r" numeric,
  "avg_op_i_r" numeric,
  "max_op_i_r" numeric,
  "min_op_i_s" numeric,
  "avg_op_i_s" numeric,
  "max_op_i_s" numeric,
  "min_op_i_t" numeric,
  "avg_op_i_t" numeric,
  "max_op_i_t" numeric,
  "min_op_ld_r" numeric,
  "avg_op_ld_r" numeric,
  "max_op_ld_r" numeric,
  "min_op_ld_s" numeric,
  "avg_op_ld_s" numeric,
  "max_op_ld_s" numeric,
  "min_op_ld_t" numeric,
  "avg_op_ld_t" numeric,
  "max_op_ld_t" numeric,
  "min_op_p_r" numeric,
  "avg_op_p_r" numeric,
  "max_op_p_r" numeric,
  "min_op_p_s" numeric,
  "avg_op_p_s" numeric,
  "max_op_p_s" numeric,
  "min_op_p_t" numeric,
  "avg_op_p_t" numeric,
  "max_op_p_t" numeric,
  "min_op_p_tot" numeric,
  "avg_op_p_tot" numeric,
  "max_op_p_tot" numeric,
  "min_op_v_r" numeric,
  "avg_op_v_r" numeric,
  "max_op_v_r" numeric,
  "min_op_v_s" numeric,
  "avg_op_v_s" numeric,
  "max_op_v_s" numeric,
  "min_op_v_t" numeric,
  "avg_op_v_t" numeric,
  "max_op_v_t" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric
);

CREATE TABLE "perf_ups_building_hour" (
  "stime" char(12) NOT NULL,
  "min_bip_frq" numeric,
  "avg_bip_frq" numeric,
  "max_bip_frq" numeric,
  "min_bip_v_r" numeric,
  "avg_bip_v_r" numeric,
  "max_bip_v_r" numeric,
  "min_bip_v_s" numeric,
  "avg_bip_v_s" numeric,
  "max_bip_v_s" numeric,
  "min_bip_v_t" numeric,
  "avg_bip_v_t" numeric,
  "max_bip_v_t" numeric,
  "min_bt_v" numeric,
  "avg_bt_v" numeric,
  "max_bt_v" numeric,
  "min_cell_v" numeric,
  "avg_cell_v" numeric,
  "max_cell_v" numeric,
  "min_ip_frq" numeric,
  "avg_ip_frq" numeric,
  "max_ip_frq" numeric,
  "min_ip_v_ft" numeric,
  "avg_ip_v_ft" numeric,
  "max_ip_v_ft" numeric,
  "min_ip_v_r" numeric,
  "avg_ip_v_r" numeric,
  "max_ip_v_r" numeric,
  "min_ip_v_s" numeric,
  "avg_ip_v_s" numeric,
  "max_ip_v_s" numeric,
  "min_ip_v_t" numeric,
  "avg_ip_v_t" numeric,
  "max_ip_v_t" numeric,
  "min_ld_pct" numeric,
  "avg_ld_pct" numeric,
  "max_ld_pct" numeric,
  "min_op_cp_r" numeric,
  "avg_op_cp_r" numeric,
  "max_op_cp_r" numeric,
  "min_op_cp_s" numeric,
  "avg_op_cp_s" numeric,
  "max_op_cp_s" numeric,
  "min_op_cp_t" numeric,
  "avg_op_cp_t" numeric,
  "max_op_cp_t" numeric,
  "min_op_cp_to" numeric,
  "avg_op_cp_to" numeric,
  "max_op_cp_to" numeric,
  "min_op_i_r" numeric,
  "avg_op_i_r" numeric,
  "max_op_i_r" numeric,
  "min_op_i_s" numeric,
  "avg_op_i_s" numeric,
  "max_op_i_s" numeric,
  "min_op_i_t" numeric,
  "avg_op_i_t" numeric,
  "max_op_i_t" numeric,
  "min_op_ld_r" numeric,
  "avg_op_ld_r" numeric,
  "max_op_ld_r" numeric,
  "min_op_ld_s" numeric,
  "avg_op_ld_s" numeric,
  "max_op_ld_s" numeric,
  "min_op_ld_t" numeric,
  "avg_op_ld_t" numeric,
  "max_op_ld_t" numeric,
  "min_op_p_r" numeric,
  "avg_op_p_r" numeric,
  "max_op_p_r" numeric,
  "min_op_p_s" numeric,
  "avg_op_p_s" numeric,
  "max_op_p_s" numeric,
  "min_op_p_t" numeric,
  "avg_op_p_t" numeric,
  "max_op_p_t" numeric,
  "min_op_p_tot" numeric,
  "avg_op_p_tot" numeric,
  "max_op_p_tot" numeric,
  "min_op_v_r" numeric,
  "avg_op_v_r" numeric,
  "max_op_v_r" numeric,
  "min_op_v_s" numeric,
  "avg_op_v_s" numeric,
  "max_op_v_s" numeric,
  "min_op_v_t" numeric,
  "avg_op_v_t" numeric,
  "max_op_v_t" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric
);

CREATE TABLE "perf_ups_building_min" (
  "stime" char(12) NOT NULL,
  "min_bip_frq" numeric,
  "avg_bip_frq" numeric,
  "max_bip_frq" numeric,
  "min_bip_v_r" numeric,
  "avg_bip_v_r" numeric,
  "max_bip_v_r" numeric,
  "min_bip_v_s" numeric,
  "avg_bip_v_s" numeric,
  "max_bip_v_s" numeric,
  "min_bip_v_t" numeric,
  "avg_bip_v_t" numeric,
  "max_bip_v_t" numeric,
  "min_bt_v" numeric,
  "avg_bt_v" numeric,
  "max_bt_v" numeric,
  "min_cell_v" numeric,
  "avg_cell_v" numeric,
  "max_cell_v" numeric,
  "min_ip_frq" numeric,
  "avg_ip_frq" numeric,
  "max_ip_frq" numeric,
  "min_ip_v_ft" numeric,
  "avg_ip_v_ft" numeric,
  "max_ip_v_ft" numeric,
  "min_ip_v_r" numeric,
  "avg_ip_v_r" numeric,
  "max_ip_v_r" numeric,
  "min_ip_v_s" numeric,
  "avg_ip_v_s" numeric,
  "max_ip_v_s" numeric,
  "min_ip_v_t" numeric,
  "avg_ip_v_t" numeric,
  "max_ip_v_t" numeric,
  "min_ld_pct" numeric,
  "avg_ld_pct" numeric,
  "max_ld_pct" numeric,
  "min_op_cp_r" numeric,
  "avg_op_cp_r" numeric,
  "max_op_cp_r" numeric,
  "min_op_cp_s" numeric,
  "avg_op_cp_s" numeric,
  "max_op_cp_s" numeric,
  "min_op_cp_t" numeric,
  "avg_op_cp_t" numeric,
  "max_op_cp_t" numeric,
  "min_op_cp_to" numeric,
  "avg_op_cp_to" numeric,
  "max_op_cp_to" numeric,
  "min_op_i_r" numeric,
  "avg_op_i_r" numeric,
  "max_op_i_r" numeric,
  "min_op_i_s" numeric,
  "avg_op_i_s" numeric,
  "max_op_i_s" numeric,
  "min_op_i_t" numeric,
  "avg_op_i_t" numeric,
  "max_op_i_t" numeric,
  "min_op_ld_r" numeric,
  "avg_op_ld_r" numeric,
  "max_op_ld_r" numeric,
  "min_op_ld_s" numeric,
  "avg_op_ld_s" numeric,
  "max_op_ld_s" numeric,
  "min_op_ld_t" numeric,
  "avg_op_ld_t" numeric,
  "max_op_ld_t" numeric,
  "min_op_p_r" numeric,
  "avg_op_p_r" numeric,
  "max_op_p_r" numeric,
  "min_op_p_s" numeric,
  "avg_op_p_s" numeric,
  "max_op_p_s" numeric,
  "min_op_p_t" numeric,
  "avg_op_p_t" numeric,
  "max_op_p_t" numeric,
  "min_op_p_tot" numeric,
  "avg_op_p_tot" numeric,
  "max_op_p_tot" numeric,
  "min_op_v_r" numeric,
  "avg_op_v_r" numeric,
  "max_op_v_r" numeric,
  "min_op_v_s" numeric,
  "avg_op_v_s" numeric,
  "max_op_v_s" numeric,
  "min_op_v_t" numeric,
  "avg_op_v_t" numeric,
  "max_op_v_t" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric
);

CREATE TABLE "perf_ups_day" (
  "stime" char(8) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "min_bip_frq" numeric,
  "avg_bip_frq" numeric,
  "max_bip_frq" numeric,
  "min_bip_v_r" numeric,
  "avg_bip_v_r" numeric,
  "max_bip_v_r" numeric,
  "min_bip_v_s" numeric,
  "avg_bip_v_s" numeric,
  "max_bip_v_s" numeric,
  "min_bip_v_t" numeric,
  "avg_bip_v_t" numeric,
  "max_bip_v_t" numeric,
  "min_bt_v" numeric,
  "avg_bt_v" numeric,
  "max_bt_v" numeric,
  "min_cell_v" numeric,
  "avg_cell_v" numeric,
  "max_cell_v" numeric,
  "min_ip_frq" numeric,
  "avg_ip_frq" numeric,
  "max_ip_frq" numeric,
  "min_ip_v_ft" numeric,
  "avg_ip_v_ft" numeric,
  "max_ip_v_ft" numeric,
  "min_ip_v_r" numeric,
  "avg_ip_v_r" numeric,
  "max_ip_v_r" numeric,
  "min_ip_v_s" numeric,
  "avg_ip_v_s" numeric,
  "max_ip_v_s" numeric,
  "min_ip_v_t" numeric,
  "avg_ip_v_t" numeric,
  "max_ip_v_t" numeric,
  "min_ld_pct" numeric,
  "avg_ld_pct" numeric,
  "max_ld_pct" numeric,
  "min_op_cp_r" numeric,
  "avg_op_cp_r" numeric,
  "max_op_cp_r" numeric,
  "min_op_cp_s" numeric,
  "avg_op_cp_s" numeric,
  "max_op_cp_s" numeric,
  "min_op_cp_t" numeric,
  "avg_op_cp_t" numeric,
  "max_op_cp_t" numeric,
  "min_op_cp_to" numeric,
  "avg_op_cp_to" numeric,
  "max_op_cp_to" numeric,
  "min_op_i_r" numeric,
  "avg_op_i_r" numeric,
  "max_op_i_r" numeric,
  "min_op_i_s" numeric,
  "avg_op_i_s" numeric,
  "max_op_i_s" numeric,
  "min_op_i_t" numeric,
  "avg_op_i_t" numeric,
  "max_op_i_t" numeric,
  "min_op_ld_r" numeric,
  "avg_op_ld_r" numeric,
  "max_op_ld_r" numeric,
  "min_op_ld_s" numeric,
  "avg_op_ld_s" numeric,
  "max_op_ld_s" numeric,
  "min_op_ld_t" numeric,
  "avg_op_ld_t" numeric,
  "max_op_ld_t" numeric,
  "min_op_p_r" numeric,
  "avg_op_p_r" numeric,
  "max_op_p_r" numeric,
  "min_op_p_s" numeric,
  "avg_op_p_s" numeric,
  "max_op_p_s" numeric,
  "min_op_p_t" numeric,
  "avg_op_p_t" numeric,
  "max_op_p_t" numeric,
  "min_op_p_tot" numeric,
  "avg_op_p_tot" numeric,
  "max_op_p_tot" numeric,
  "min_op_v_r" numeric,
  "avg_op_v_r" numeric,
  "max_op_v_r" numeric,
  "min_op_v_s" numeric,
  "avg_op_v_s" numeric,
  "max_op_v_s" numeric,
  "min_op_v_t" numeric,
  "avg_op_v_t" numeric,
  "max_op_v_t" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric
);

CREATE TABLE "perf_ups_floor_day" (
  "stime" char(12) NOT NULL,
  "floor" varchar(36) NOT NULL,
  "min_bip_frq" numeric,
  "avg_bip_frq" numeric,
  "max_bip_frq" numeric,
  "min_bip_v_r" numeric,
  "avg_bip_v_r" numeric,
  "max_bip_v_r" numeric,
  "min_bip_v_s" numeric,
  "avg_bip_v_s" numeric,
  "max_bip_v_s" numeric,
  "min_bip_v_t" numeric,
  "avg_bip_v_t" numeric,
  "max_bip_v_t" numeric,
  "min_bt_v" numeric,
  "avg_bt_v" numeric,
  "max_bt_v" numeric,
  "min_cell_v" numeric,
  "avg_cell_v" numeric,
  "max_cell_v" numeric,
  "min_ip_frq" numeric,
  "avg_ip_frq" numeric,
  "max_ip_frq" numeric,
  "min_ip_v_ft" numeric,
  "avg_ip_v_ft" numeric,
  "max_ip_v_ft" numeric,
  "min_ip_v_r" numeric,
  "avg_ip_v_r" numeric,
  "max_ip_v_r" numeric,
  "min_ip_v_s" numeric,
  "avg_ip_v_s" numeric,
  "max_ip_v_s" numeric,
  "min_ip_v_t" numeric,
  "avg_ip_v_t" numeric,
  "max_ip_v_t" numeric,
  "min_ld_pct" numeric,
  "avg_ld_pct" numeric,
  "max_ld_pct" numeric,
  "min_op_cp_r" numeric,
  "avg_op_cp_r" numeric,
  "max_op_cp_r" numeric,
  "min_op_cp_s" numeric,
  "avg_op_cp_s" numeric,
  "max_op_cp_s" numeric,
  "min_op_cp_t" numeric,
  "avg_op_cp_t" numeric,
  "max_op_cp_t" numeric,
  "min_op_cp_to" numeric,
  "avg_op_cp_to" numeric,
  "max_op_cp_to" numeric,
  "min_op_i_r" numeric,
  "avg_op_i_r" numeric,
  "max_op_i_r" numeric,
  "min_op_i_s" numeric,
  "avg_op_i_s" numeric,
  "max_op_i_s" numeric,
  "min_op_i_t" numeric,
  "avg_op_i_t" numeric,
  "max_op_i_t" numeric,
  "min_op_ld_r" numeric,
  "avg_op_ld_r" numeric,
  "max_op_ld_r" numeric,
  "min_op_ld_s" numeric,
  "avg_op_ld_s" numeric,
  "max_op_ld_s" numeric,
  "min_op_ld_t" numeric,
  "avg_op_ld_t" numeric,
  "max_op_ld_t" numeric,
  "min_op_p_r" numeric,
  "avg_op_p_r" numeric,
  "max_op_p_r" numeric,
  "min_op_p_s" numeric,
  "avg_op_p_s" numeric,
  "max_op_p_s" numeric,
  "min_op_p_t" numeric,
  "avg_op_p_t" numeric,
  "max_op_p_t" numeric,
  "min_op_p_tot" numeric,
  "avg_op_p_tot" numeric,
  "max_op_p_tot" numeric,
  "min_op_v_r" numeric,
  "avg_op_v_r" numeric,
  "max_op_v_r" numeric,
  "min_op_v_s" numeric,
  "avg_op_v_s" numeric,
  "max_op_v_s" numeric,
  "min_op_v_t" numeric,
  "avg_op_v_t" numeric,
  "max_op_v_t" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric
);

CREATE TABLE "perf_ups_floor_hour" (
  "stime" char(12) NOT NULL,
  "floor" varchar(36) NOT NULL,
  "min_bip_frq" numeric,
  "avg_bip_frq" numeric,
  "max_bip_frq" numeric,
  "min_bip_v_r" numeric,
  "avg_bip_v_r" numeric,
  "max_bip_v_r" numeric,
  "min_bip_v_s" numeric,
  "avg_bip_v_s" numeric,
  "max_bip_v_s" numeric,
  "min_bip_v_t" numeric,
  "avg_bip_v_t" numeric,
  "max_bip_v_t" numeric,
  "min_bt_v" numeric,
  "avg_bt_v" numeric,
  "max_bt_v" numeric,
  "min_cell_v" numeric,
  "avg_cell_v" numeric,
  "max_cell_v" numeric,
  "min_ip_frq" numeric,
  "avg_ip_frq" numeric,
  "max_ip_frq" numeric,
  "min_ip_v_ft" numeric,
  "avg_ip_v_ft" numeric,
  "max_ip_v_ft" numeric,
  "min_ip_v_r" numeric,
  "avg_ip_v_r" numeric,
  "max_ip_v_r" numeric,
  "min_ip_v_s" numeric,
  "avg_ip_v_s" numeric,
  "max_ip_v_s" numeric,
  "min_ip_v_t" numeric,
  "avg_ip_v_t" numeric,
  "max_ip_v_t" numeric,
  "min_ld_pct" numeric,
  "avg_ld_pct" numeric,
  "max_ld_pct" numeric,
  "min_op_cp_r" numeric,
  "avg_op_cp_r" numeric,
  "max_op_cp_r" numeric,
  "min_op_cp_s" numeric,
  "avg_op_cp_s" numeric,
  "max_op_cp_s" numeric,
  "min_op_cp_t" numeric,
  "avg_op_cp_t" numeric,
  "max_op_cp_t" numeric,
  "min_op_cp_to" numeric,
  "avg_op_cp_to" numeric,
  "max_op_cp_to" numeric,
  "min_op_i_r" numeric,
  "avg_op_i_r" numeric,
  "max_op_i_r" numeric,
  "min_op_i_s" numeric,
  "avg_op_i_s" numeric,
  "max_op_i_s" numeric,
  "min_op_i_t" numeric,
  "avg_op_i_t" numeric,
  "max_op_i_t" numeric,
  "min_op_ld_r" numeric,
  "avg_op_ld_r" numeric,
  "max_op_ld_r" numeric,
  "min_op_ld_s" numeric,
  "avg_op_ld_s" numeric,
  "max_op_ld_s" numeric,
  "min_op_ld_t" numeric,
  "avg_op_ld_t" numeric,
  "max_op_ld_t" numeric,
  "min_op_p_r" numeric,
  "avg_op_p_r" numeric,
  "max_op_p_r" numeric,
  "min_op_p_s" numeric,
  "avg_op_p_s" numeric,
  "max_op_p_s" numeric,
  "min_op_p_t" numeric,
  "avg_op_p_t" numeric,
  "max_op_p_t" numeric,
  "min_op_p_tot" numeric,
  "avg_op_p_tot" numeric,
  "max_op_p_tot" numeric,
  "min_op_v_r" numeric,
  "avg_op_v_r" numeric,
  "max_op_v_r" numeric,
  "min_op_v_s" numeric,
  "avg_op_v_s" numeric,
  "max_op_v_s" numeric,
  "min_op_v_t" numeric,
  "avg_op_v_t" numeric,
  "max_op_v_t" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric
);

CREATE TABLE "perf_ups_floor_min" (
  "stime" char(12) NOT NULL,
  "floor" varchar(36) NOT NULL,
  "min_bip_frq" numeric,
  "avg_bip_frq" numeric,
  "max_bip_frq" numeric,
  "min_bip_v_r" numeric,
  "avg_bip_v_r" numeric,
  "max_bip_v_r" numeric,
  "min_bip_v_s" numeric,
  "avg_bip_v_s" numeric,
  "max_bip_v_s" numeric,
  "min_bip_v_t" numeric,
  "avg_bip_v_t" numeric,
  "max_bip_v_t" numeric,
  "min_bt_v" numeric,
  "avg_bt_v" numeric,
  "max_bt_v" numeric,
  "min_cell_v" numeric,
  "avg_cell_v" numeric,
  "max_cell_v" numeric,
  "min_ip_frq" numeric,
  "avg_ip_frq" numeric,
  "max_ip_frq" numeric,
  "min_ip_v_ft" numeric,
  "avg_ip_v_ft" numeric,
  "max_ip_v_ft" numeric,
  "min_ip_v_r" numeric,
  "avg_ip_v_r" numeric,
  "max_ip_v_r" numeric,
  "min_ip_v_s" numeric,
  "avg_ip_v_s" numeric,
  "max_ip_v_s" numeric,
  "min_ip_v_t" numeric,
  "avg_ip_v_t" numeric,
  "max_ip_v_t" numeric,
  "min_ld_pct" numeric,
  "avg_ld_pct" numeric,
  "max_ld_pct" numeric,
  "min_op_cp_r" numeric,
  "avg_op_cp_r" numeric,
  "max_op_cp_r" numeric,
  "min_op_cp_s" numeric,
  "avg_op_cp_s" numeric,
  "max_op_cp_s" numeric,
  "min_op_cp_t" numeric,
  "avg_op_cp_t" numeric,
  "max_op_cp_t" numeric,
  "min_op_cp_to" numeric,
  "avg_op_cp_to" numeric,
  "max_op_cp_to" numeric,
  "min_op_i_r" numeric,
  "avg_op_i_r" numeric,
  "max_op_i_r" numeric,
  "min_op_i_s" numeric,
  "avg_op_i_s" numeric,
  "max_op_i_s" numeric,
  "min_op_i_t" numeric,
  "avg_op_i_t" numeric,
  "max_op_i_t" numeric,
  "min_op_ld_r" numeric,
  "avg_op_ld_r" numeric,
  "max_op_ld_r" numeric,
  "min_op_ld_s" numeric,
  "avg_op_ld_s" numeric,
  "max_op_ld_s" numeric,
  "min_op_ld_t" numeric,
  "avg_op_ld_t" numeric,
  "max_op_ld_t" numeric,
  "min_op_p_r" numeric,
  "avg_op_p_r" numeric,
  "max_op_p_r" numeric,
  "min_op_p_s" numeric,
  "avg_op_p_s" numeric,
  "max_op_p_s" numeric,
  "min_op_p_t" numeric,
  "avg_op_p_t" numeric,
  "max_op_p_t" numeric,
  "min_op_p_tot" numeric,
  "avg_op_p_tot" numeric,
  "max_op_p_tot" numeric,
  "min_op_v_r" numeric,
  "avg_op_v_r" numeric,
  "max_op_v_r" numeric,
  "min_op_v_s" numeric,
  "avg_op_v_s" numeric,
  "max_op_v_s" numeric,
  "min_op_v_t" numeric,
  "avg_op_v_t" numeric,
  "max_op_v_t" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric
);

CREATE TABLE "perf_ups_hour" (
  "stime" char(10) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "min_bip_frq" numeric,
  "avg_bip_frq" numeric,
  "max_bip_frq" numeric,
  "min_bip_v_r" numeric,
  "avg_bip_v_r" numeric,
  "max_bip_v_r" numeric,
  "min_bip_v_s" numeric,
  "avg_bip_v_s" numeric,
  "max_bip_v_s" numeric,
  "min_bip_v_t" numeric,
  "avg_bip_v_t" numeric,
  "max_bip_v_t" numeric,
  "min_bt_v" numeric,
  "avg_bt_v" numeric,
  "max_bt_v" numeric,
  "min_cell_v" numeric,
  "avg_cell_v" numeric,
  "max_cell_v" numeric,
  "min_ip_frq" numeric,
  "avg_ip_frq" numeric,
  "max_ip_frq" numeric,
  "min_ip_v_ft" numeric,
  "avg_ip_v_ft" numeric,
  "max_ip_v_ft" numeric,
  "min_ip_v_r" numeric,
  "avg_ip_v_r" numeric,
  "max_ip_v_r" numeric,
  "min_ip_v_s" numeric,
  "avg_ip_v_s" numeric,
  "max_ip_v_s" numeric,
  "min_ip_v_t" numeric,
  "avg_ip_v_t" numeric,
  "max_ip_v_t" numeric,
  "min_ld_pct" numeric,
  "avg_ld_pct" numeric,
  "max_ld_pct" numeric,
  "min_op_cp_r" numeric,
  "avg_op_cp_r" numeric,
  "max_op_cp_r" numeric,
  "min_op_cp_s" numeric,
  "avg_op_cp_s" numeric,
  "max_op_cp_s" numeric,
  "min_op_cp_t" numeric,
  "avg_op_cp_t" numeric,
  "max_op_cp_t" numeric,
  "min_op_cp_to" numeric,
  "avg_op_cp_to" numeric,
  "max_op_cp_to" numeric,
  "min_op_i_r" numeric,
  "avg_op_i_r" numeric,
  "max_op_i_r" numeric,
  "min_op_i_s" numeric,
  "avg_op_i_s" numeric,
  "max_op_i_s" numeric,
  "min_op_i_t" numeric,
  "avg_op_i_t" numeric,
  "max_op_i_t" numeric,
  "min_op_ld_r" numeric,
  "avg_op_ld_r" numeric,
  "max_op_ld_r" numeric,
  "min_op_ld_s" numeric,
  "avg_op_ld_s" numeric,
  "max_op_ld_s" numeric,
  "min_op_ld_t" numeric,
  "avg_op_ld_t" numeric,
  "max_op_ld_t" numeric,
  "min_op_p_r" numeric,
  "avg_op_p_r" numeric,
  "max_op_p_r" numeric,
  "min_op_p_s" numeric,
  "avg_op_p_s" numeric,
  "max_op_p_s" numeric,
  "min_op_p_t" numeric,
  "avg_op_p_t" numeric,
  "max_op_p_t" numeric,
  "min_op_p_tot" numeric,
  "avg_op_p_tot" numeric,
  "max_op_p_tot" numeric,
  "min_op_v_r" numeric,
  "avg_op_v_r" numeric,
  "max_op_v_r" numeric,
  "min_op_v_s" numeric,
  "avg_op_v_s" numeric,
  "max_op_v_s" numeric,
  "min_op_v_t" numeric,
  "avg_op_v_t" numeric,
  "max_op_v_t" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric
);

CREATE TABLE "perf_ups_min" (
  "stime" char(12) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "min_bip_frq" numeric,
  "avg_bip_frq" numeric,
  "max_bip_frq" numeric,
  "min_bip_v_r" numeric,
  "avg_bip_v_r" numeric,
  "max_bip_v_r" numeric,
  "min_bip_v_s" numeric,
  "avg_bip_v_s" numeric,
  "max_bip_v_s" numeric,
  "min_bip_v_t" numeric,
  "avg_bip_v_t" numeric,
  "max_bip_v_t" numeric,
  "min_bt_v" numeric,
  "avg_bt_v" numeric,
  "max_bt_v" numeric,
  "min_cell_v" numeric,
  "avg_cell_v" numeric,
  "max_cell_v" numeric,
  "min_ip_frq" numeric,
  "avg_ip_frq" numeric,
  "max_ip_frq" numeric,
  "min_ip_v_ft" numeric,
  "avg_ip_v_ft" numeric,
  "max_ip_v_ft" numeric,
  "min_ip_v_r" numeric,
  "avg_ip_v_r" numeric,
  "max_ip_v_r" numeric,
  "min_ip_v_s" numeric,
  "avg_ip_v_s" numeric,
  "max_ip_v_s" numeric,
  "min_ip_v_t" numeric,
  "avg_ip_v_t" numeric,
  "max_ip_v_t" numeric,
  "min_ld_pct" numeric,
  "avg_ld_pct" numeric,
  "max_ld_pct" numeric,
  "min_op_cp_r" numeric,
  "avg_op_cp_r" numeric,
  "max_op_cp_r" numeric,
  "min_op_cp_s" numeric,
  "avg_op_cp_s" numeric,
  "max_op_cp_s" numeric,
  "min_op_cp_t" numeric,
  "avg_op_cp_t" numeric,
  "max_op_cp_t" numeric,
  "min_op_cp_to" numeric,
  "avg_op_cp_to" numeric,
  "max_op_cp_to" numeric,
  "min_op_i_r" numeric,
  "avg_op_i_r" numeric,
  "max_op_i_r" numeric,
  "min_op_i_s" numeric,
  "avg_op_i_s" numeric,
  "max_op_i_s" numeric,
  "min_op_i_t" numeric,
  "avg_op_i_t" numeric,
  "max_op_i_t" numeric,
  "min_op_ld_r" numeric,
  "avg_op_ld_r" numeric,
  "max_op_ld_r" numeric,
  "min_op_ld_s" numeric,
  "avg_op_ld_s" numeric,
  "max_op_ld_s" numeric,
  "min_op_ld_t" numeric,
  "avg_op_ld_t" numeric,
  "max_op_ld_t" numeric,
  "min_op_p_r" numeric,
  "avg_op_p_r" numeric,
  "max_op_p_r" numeric,
  "min_op_p_s" numeric,
  "avg_op_p_s" numeric,
  "max_op_p_s" numeric,
  "min_op_p_t" numeric,
  "avg_op_p_t" numeric,
  "max_op_p_t" numeric,
  "min_op_p_tot" numeric,
  "avg_op_p_tot" numeric,
  "max_op_p_tot" numeric,
  "min_op_v_r" numeric,
  "avg_op_v_r" numeric,
  "max_op_v_r" numeric,
  "min_op_v_s" numeric,
  "avg_op_v_s" numeric,
  "max_op_v_s" numeric,
  "min_op_v_t" numeric,
  "avg_op_v_t" numeric,
  "max_op_v_t" numeric,
  "min_temp" numeric,
  "avg_temp" numeric,
  "max_temp" numeric
);

CREATE TABLE "perf_ups_raw" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "a00" numeric,
  "a01" numeric,
  "a02" numeric,
  "a03" numeric,
  "a04" numeric,
  "a05" numeric,
  "a06" numeric,
  "a08" numeric,
  "a09" numeric,
  "a10" numeric,
  "a11" numeric,
  "a12" numeric,
  "a13" numeric,
  "a14" numeric,
  "a15" numeric,
  "a22" numeric,
  "a23" numeric,
  "a30" numeric,
  "a31" numeric,
  "f00" numeric,
  "f01" numeric,
  "f02" numeric,
  "f03" numeric,
  "f04" numeric,
  "f05" numeric,
  "f06" numeric,
  "f08" numeric,
  "f09" numeric,
  "f10" numeric,
  "f11" numeric,
  "f12" numeric,
  "f13" numeric,
  "f14" numeric,
  "f17" numeric,
  "f18" numeric,
  "f19" numeric,
  "f22" numeric,
  "f23" numeric,
  "f24" numeric,
  "f25" numeric,
  "f26" numeric,
  "f27" numeric,
  "f28" numeric,
  "f45" numeric,
  "f57" numeric,
  "f58" numeric,
  "f62" numeric,
  "f63" numeric,
  "f68" numeric,
  "s04" numeric,
  "s06" numeric,
  "s07" numeric,
  "bip_frq" numeric,
  "bip_v_r" numeric,
  "bip_v_s" numeric,
  "bip_v_t" numeric,
  "bt_v" numeric,
  "cell_v" numeric,
  "ip_frq" numeric,
  "ip_v_ft" numeric,
  "ip_v_r" numeric,
  "ip_v_s" numeric,
  "ip_v_t" numeric,
  "ld_pct" numeric,
  "op_cp_r" numeric,
  "op_cp_s" numeric,
  "op_cp_t" numeric,
  "op_cp_to" numeric,
  "op_i_r" numeric,
  "op_i_s" numeric,
  "op_i_t" numeric,
  "op_ld_r" numeric,
  "op_ld_s" numeric,
  "op_ld_t" numeric,
  "op_p_r" numeric,
  "op_p_s" numeric,
  "op_p_t" numeric,
  "op_p_tot" numeric,
  "op_v_r" numeric,
  "op_v_s" numeric,
  "op_v_t" numeric,
  "temp" numeric
);

CREATE TABLE "perf_ups_tmp" (
  "stime" char(14) NOT NULL,
  "device_id" varchar(36) NOT NULL,
  "a00" numeric,
  "a01" numeric,
  "a02" numeric,
  "a03" numeric,
  "a04" numeric,
  "a05" numeric,
  "a06" numeric,
  "a08" numeric,
  "a09" numeric,
  "a10" numeric,
  "a11" numeric,
  "a12" numeric,
  "a13" numeric,
  "a14" numeric,
  "a15" numeric,
  "a22" numeric,
  "a23" numeric,
  "a30" numeric,
  "a31" numeric,
  "f00" numeric,
  "f01" numeric,
  "f02" numeric,
  "f03" numeric,
  "f04" numeric,
  "f05" numeric,
  "f06" numeric,
  "f08" numeric,
  "f09" numeric,
  "f10" numeric,
  "f11" numeric,
  "f12" numeric,
  "f13" numeric,
  "f14" numeric,
  "f17" numeric,
  "f18" numeric,
  "f19" numeric,
  "f22" numeric,
  "f23" numeric,
  "f24" numeric,
  "f25" numeric,
  "f26" numeric,
  "f27" numeric,
  "f28" numeric,
  "f45" numeric,
  "f57" numeric,
  "f58" numeric,
  "f62" numeric,
  "f63" numeric,
  "f68" numeric,
  "s04" numeric,
  "s06" numeric,
  "s07" numeric,
  "bip_frq" numeric,
  "bip_v_r" numeric,
  "bip_v_s" numeric,
  "bip_v_t" numeric,
  "bt_v" numeric,
  "cell_v" numeric,
  "ip_frq" numeric,
  "ip_v_ft" numeric,
  "ip_v_r" numeric,
  "ip_v_s" numeric,
  "ip_v_t" numeric,
  "ld_pct" numeric,
  "op_cp_r" numeric,
  "op_cp_s" numeric,
  "op_cp_t" numeric,
  "op_cp_to" numeric,
  "op_i_r" numeric,
  "op_i_s" numeric,
  "op_i_t" numeric,
  "op_ld_r" numeric,
  "op_ld_s" numeric,
  "op_ld_t" numeric,
  "op_p_r" numeric,
  "op_p_s" numeric,
  "op_p_t" numeric,
  "op_p_tot" numeric,
  "op_v_r" numeric,
  "op_v_s" numeric,
  "op_v_t" numeric,
  "temp" numeric
);

CREATE TABLE "src_frs_report_tmp" (
  "stime" char(14) NOT NULL,
  "type" varchar(8),
  "status" varchar(32),
  "score" numeric,
  "image_src" varchar(128),
  "location_building_name" varchar(16),
  "location_floor_name" varchar(8),
  "location_access_area_name" varchar(64),
  "location_is_high_safety" varchar(5),
  "location_source_frs_name" varchar(8),
  "location_source_frs_camera_name" varchar(32),
  "person_id" varchar(10),
  "person_company_name" varchar(32),
  "person_image_src" varchar(128),
  "person_tag_names" varchar(32),
  "person_name" varchar(16),
  "person_card" varchar(10)
);

CREATE TABLE "perf_frs_system_status_tmp" (
  "stime" char(14),
  "type" varchar(4) NOT NULL,
  "ip" varchar(15),
  "name" varchar(64),
  "is_connected" varchar(5) NOT NULL,
  PRIMARY KEY ("stime", "ip")
);

CREATE TABLE "perf_frs_system_status_raw" (
  "stime" char(14),
  "type" varchar(4) NOT NULL,
  "ip" varchar(15),
  "name" varchar(64),
  "is_connected" varchar(5),
  PRIMARY KEY ("stime", "ip")
);

CREATE TABLE "perf_frs_report_tmp" (
  "report_id" serial PRIMARY KEY,
  "stime" char(14) NOT NULL,
  "type" varchar(8),
  "status" varchar(32),
  "score" numeric,
  "image_src" varchar(128),
  "location_building_name" varchar(16),
  "location_floor_name" varchar(8),
  "location_access_area_name" varchar(64),
  "location_is_high_safety" varchar(5),
  "location_source_frs_name" varchar(8),
  "location_source_frs_camera_name" varchar(32),
  "person_id" varchar(10),
  "person_company_name" varchar(32),
  "person_image_src" varchar(128),
  "person_tag_names" varchar(32),
  "person_name" varchar(16),
  "person_card" varchar(10),
  "person_position" varchar(128)
);

CREATE TABLE "perf_frs_report_raw" (
  "report_id" numeric PRIMARY KEY,
  "stime" char(14) NOT NULL,
  "type" varchar(8),
  "status" varchar(32),
  "score" numeric,
  "image_src" varchar(128),
  "location_building_name" varchar(16),
  "location_floor_name" varchar(8),
  "location_access_area_name" varchar(64),
  "location_is_high_safety" varchar(5),
  "location_source_frs_name" varchar(8),
  "location_source_frs_camera_name" varchar(32),
  "person_id" varchar(10),
  "person_company_name" varchar(32),
  "person_image_src" varchar(128),
  "person_tag_names" varchar(32),
  "person_name" varchar(16),
  "person_card" varchar(10),
  "person_position" varchar(128)
);

CREATE TABLE "perf_frs_report_person_area_hour" (
  "stime" char(10),
  "area" varchar(64),
  "floor" varchar(8),
  "person_id" varchar(10),
  "person_position" varchar(128),
  "person_name" varchar(16),
  "count" numeric,
  PRIMARY KEY ("stime", "area", "person_id")
);

CREATE TABLE "perf_frs_report_person_area_day" (
  "stime" char(8),
  "area" varchar(64),
  "floor" varchar(8),
  "person_id" varchar(10),
  "person_position" varchar(128),
  "person_name" varchar(16),
  "count" numeric,
  PRIMARY KEY ("stime", "area", "person_id")
);

CREATE TABLE "perf_frs_report_person_floor_hour" (
  "stime" char(10),
  "floor" varchar(8),
  "person_id" varchar(10),
  "person_position" varchar(128),
  "person_name" varchar(16),
  "count" numeric,
  PRIMARY KEY ("stime", "floor", "person_id")
);

CREATE TABLE "perf_frs_report_person_floor_day" (
  "stime" char(8),
  "floor" varchar(8),
  "person_id" varchar(10),
  "person_position" varchar(128),
  "person_name" varchar(16),
  "count" numeric,
  PRIMARY KEY ("stime", "floor", "person_id")
);

CREATE TABLE "perf_frs_report_person_building_hour" (
  "stime" char(10),
  "building_name" varchar(64),
  "floor" varchar(8),
  "person_id" varchar(10),
  "person_position" varchar(128),
  "person_name" varchar(16),
  "count" numeric,
  PRIMARY KEY ("stime", "building_name", "person_id")
);

CREATE TABLE "perf_frs_report_person_building_day" (
  "stime" char(8),
  "building_name" varchar(64),
  "floor" varchar(8),
  "person_id" varchar(10),
  "person_position" varchar(128),
  "person_name" varchar(16),
  "count" numeric,
  PRIMARY KEY ("stime", "building_name", "person_id")
);

CREATE TABLE "perf_frs_report_area_hour" (
  "stime" char(10),
  "area" varchar(64),
  "count" numeric,
  PRIMARY KEY ("stime", "area")
);

CREATE TABLE "perf_frs_report_area_day" (
  "stime" char(8),
  "area" varchar(64),
  "count" numeric,
  PRIMARY KEY ("stime", "area")
);

CREATE TABLE "perf_frs_report_camera_hour" (
  "stime" char(10),
  "camera" varchar(64),
  "count" numeric,
  PRIMARY KEY ("stime", "camera")
);

CREATE TABLE "perf_frs_report_camera_day" (
  "stime" char(8),
  "camera" varchar(64),
  "count" numeric,
  PRIMARY KEY ("stime", "camera")
);

CREATE TABLE "perf_frs_report_floor_hour" (
  "stime" char(10),
  "floor" varchar(64),
  "count" numeric,
  PRIMARY KEY ("stime", "floor")
);

CREATE TABLE "perf_frs_report_floor_day" (
  "stime" char(8),
  "floor" varchar(64),
  "count" numeric,
  PRIMARY KEY ("stime", "floor")
);

CREATE TABLE "perf_frs_report_floor_month" (
  "stime" char(6),
  "floor" varchar(64),
  "count" numeric,
  PRIMARY KEY ("stime", "floor")
);

CREATE TABLE "perf_frs_report_building_hour" (
  "stime" char(10),
  "building_name" varchar(64),
  "count" numeric,
  PRIMARY KEY ("stime", "building_name")
);

CREATE TABLE "perf_frs_report_building_day" (
  "stime" char(8),
  "building_name" varchar(64),
  "count" numeric,
  PRIMARY KEY ("stime", "building_name")
);

CREATE TABLE "perf_frs_report_building_month" (
  "stime" char(6),
  "building_name" varchar(64),
  "count" numeric,
  PRIMARY KEY ("stime", "building_name")
);

CREATE TABLE "frs_person_staff_info" (
  "object_id" varchar(10) PRIMARY KEY,
  "image_src" varchar(128),
  "image_orignal_src" varchar(128),
  "company" varchar(32),
  "locations" varchar(256),
  "name" varchar(64),
  "position" varchar(128),
  "tags" varchar(256),
  "card" varchar(10),
  "end_date" varchar(14),
  "created_date" varchar(14)
);

CREATE TABLE "frs_camera_ip_info" (
  "id" varchar(32),
  "ip" varchar(15),
  "floor" varchar(4),
  "brand" varchar(32),
  "name" varchar(128),
  "stranger_yn" varchar(1),
  "frsm_door_name" varchar(128),
  "frs" varchar(16),
  "frs_ip" varchar(15)
);

CREATE TABLE "secom_camera_ip_info" (
  "id" varchar(32) PRIMARY KEY,
  "ip" varchar(15),
  "floor" varchar(4),
  "brand" varchar(32),
  "name" varchar(128)
);

CREATE TABLE "src_hex_dcc_value_tmp" (
  "stime" varchar(14),
  "id" varchar(4),
  "status" varchar(1),
  PRIMARY KEY ("stime", "id")
);

CREATE TABLE "perf_hex_system_status_tmp" (
  "stime" varchar(14),
  "ip" varchar(15),
  "status" varchar(128)
);

CREATE TABLE "perf_hex_system_status_raw" (
  "stime" varchar(14),
  "ip" varchar(15),
  "status" varchar(128)
);

CREATE TABLE "perf_hex_log_tmp" (
  "hex_id" serial PRIMARY KEY,
  "stime" varchar(17),
  "type" varchar(32),
  "value" varchar(256)
);

CREATE TABLE "perf_hex_log_raw" (
  "hex_id" numeric PRIMARY KEY,
  "stime" varchar(17),
  "type" varchar(32),
  "value" varchar(256)
);

CREATE TABLE "hex_dcc_floor_map_info" (
  "id" varchar(4) PRIMARY KEY,
  "sensor_id" varchar(32),
  "sensor_name" varchar(256),
  "floor" varchar(16),
  "dcc_value_id" varchar(4)
);

CREATE TABLE "perf_sbms_event_active" (
  "event_id" serial PRIMARY KEY,
  "source_id" numeric,
  "source_stime" varchar(17),
  "stime" varchar(14),
  "system" varchar(32),
  "type" varchar(32),
  "level" numeric,
  "device_name" varchar(64),
  "floor" varchar(16),
  "message" varchar(1024),
  "teamgoal_yn" varchar(1)
);

CREATE TABLE "perf_sbms_event_raw" (
  "event_id" numeric PRIMARY KEY,
  "source_id" numeric,
  "source_stime" varchar(17),
  "stime" varchar(14),
  "system" varchar(32),
  "type" varchar(32),
  "level" numeric,
  "device_name" varchar(64),
  "floor" varchar(16),
  "message" varchar(1024),
  "teamgoal_yn" varchar(1)
);

CREATE TABLE "perf_teamgoal_send_message_tmp" (
  "message_id" serial PRIMARY KEY,
  "event_id" numeric,
  "event_type" varchar(32),
  "stime" varchar(14),
  "floor" varchar(8),
  "message" varchar(1024),
  "sent_stime" varchar(14),
  "result_code" varchar(4),
  "result_message" varchar(256)
);

CREATE TABLE "perf_teamgoal_send_message_raw" (
  "message_id" numeric PRIMARY KEY,
  "event_id" numeric,
  "event_type" varchar(32),
  "stime" varchar(14),
  "floor" varchar(8),
  "message" varchar(1024),
  "sent_stime" varchar(14),
  "result_code" varchar(4),
  "result_message" varchar(256)
);

CREATE TABLE "perf_teamgoal_sent_message_hour" (
  "stime" varchar(10),
  "system" varchar(32),
  "event_type" varchar(32),
  "count" numeric,
  PRIMARY KEY ("stime", "event_type")
);

CREATE TABLE "perf_teamgoal_sent_message_day" (
  "stime" varchar(8),
  "system" varchar(32),
  "event_type" varchar(32),
  "count" numeric,
  PRIMARY KEY ("stime", "event_type")
);

CREATE TABLE "perf_sbms_event_type_hour" (
  "stime" char(10),
  "system" varchar(32),
  "type" varchar(32),
  "level" numeric,
  "count" numeric,
  PRIMARY KEY ("stime", "type")
);

CREATE TABLE "perf_sbms_event_type_day" (
  "stime" char(8),
  "system" varchar(32),
  "type" varchar(32),
  "level" numeric,
  "count" numeric,
  PRIMARY KEY ("stime", "type")
);

CREATE TABLE "perf_sbms_event_type_month" (
  "stime" char(6),
  "system" varchar(32),
  "type" varchar(32),
  "level" numeric,
  "count" numeric,
  PRIMARY KEY ("stime", "type")
);

CREATE TABLE "perf_sbms_event_hour" (
  "stime" char(10),
  "level" numeric,
  "floor" varchar(16),
  "count" numeric,
  PRIMARY KEY ("stime", "level", "floor")
);

CREATE TABLE "perf_sbms_event_day" (
  "stime" char(8),
  "level" numeric,
  "floor" varchar(16),
  "count" numeric,
  PRIMARY KEY ("stime", "level", "floor")
);

CREATE TABLE "perf_sbms_event_month" (
  "stime" char(6),
  "level" numeric,
  "floor" varchar(16),
  "count" numeric,
  PRIMARY KEY ("stime", "level", "floor")
);

CREATE TABLE "sbms_event_prevent" (
  "prevent_id" serial PRIMARY KEY,
  "stime_from" varchar(14),
  "stime_to" varchar(14),
  "frs_warning" char(1),
  "frs_system_status" char(1),
  "frs_cctv_status" char(1),
  "hex_system_status" char(1),
  "hex_dcc_alarm" char(1),
  "secom_emerg_button" char(1),
  "secom_cctv_status" char(1),
  "advantech" char(1),
  "added_user" varchar(64),
  "removed_user" varchar(64),
  "added_at" varchar(14),
  "updated_at" varchar(14),
  "removed_at" varchar(14)
);

COMMENT ON COLUMN "src_frs_report_tmp"."stime" IS '辨識時間';

COMMENT ON COLUMN "perf_frs_system_status_tmp"."type" IS 'frs/cctv';

COMMENT ON COLUMN "perf_frs_system_status_raw"."type" IS 'frs/cctv';

COMMENT ON COLUMN "perf_frs_report_tmp"."stime" IS '辨識時間';

COMMENT ON COLUMN "perf_frs_report_raw"."stime" IS '辨識時間';

COMMENT ON COLUMN "perf_hex_log_tmp"."stime" IS 'yyyymmddhh24missSSS';

COMMENT ON COLUMN "perf_hex_log_raw"."stime" IS 'yyyymmddhh24missSSS';

COMMENT ON COLUMN "perf_sbms_event_active"."source_id" IS '來源系統的id';

COMMENT ON COLUMN "perf_sbms_event_active"."source_stime" IS '來源系統的事件發生時間';

COMMENT ON COLUMN "perf_sbms_event_active"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

COMMENT ON COLUMN "perf_sbms_event_active"."teamgoal_yn" IS 'Y: 發送 teamgoal, N: 不發送 teamgoal';

COMMENT ON COLUMN "perf_sbms_event_raw"."source_id" IS '來源系統的id';

COMMENT ON COLUMN "perf_sbms_event_raw"."source_stime" IS '來源系統的事件發生時間';

COMMENT ON COLUMN "perf_sbms_event_raw"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

COMMENT ON COLUMN "perf_sbms_event_raw"."teamgoal_yn" IS 'Y: 發送 teamgoal, N: 不發送 teamgoal';

COMMENT ON COLUMN "perf_teamgoal_send_message_tmp"."event_id" IS 'perf_sbms_event_raw.event_id';

COMMENT ON COLUMN "perf_teamgoal_send_message_raw"."event_id" IS 'perf_sbms_event_raw.event_id';

COMMENT ON COLUMN "perf_sbms_event_type_hour"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

COMMENT ON COLUMN "perf_sbms_event_type_day"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

COMMENT ON COLUMN "perf_sbms_event_type_month"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

COMMENT ON COLUMN "perf_sbms_event_hour"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

COMMENT ON COLUMN "perf_sbms_event_day"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

COMMENT ON COLUMN "perf_sbms_event_month"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

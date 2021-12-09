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

CREATE TABLE "perf_frs_system_status_raw" (
  "stime" char(14),
  "type" varchar(4) NOT NULL,
  "ip" varchar(15),
  "name" varchar(64),
  "is_connected" varchar(5),
  PRIMARY KEY ("stime", "ip")
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
  "frs_ip" varchar(15),
  "area" varchar(22)
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

CREATE TABLE "perf_hex_log_tmp" (
  "hex_id" serial PRIMARY KEY,
  "stime" varchar(17),
  "type" varchar(32),
  "value" varchar(256)
);

CREATE TABLE "perf_hex_system_status_tmp" (
  "stime" varchar(14),
  "ip" varchar(15),
  "status" varchar(128)
);

CREATE TABLE "perf_hex_log_raw" (
  "hex_id" numeric PRIMARY KEY,
  "stime" varchar(17),
  "type" varchar(32),
  "value" varchar(256)
);

CREATE TABLE "perf_hex_system_status_raw" (
  "stime" varchar(14),
  "ip" varchar(15),
  "status" varchar(128)
);

CREATE TABLE "hex_dcc_floor_map_info" (
  "id" varchar(4) PRIMARY KEY,
  "sensor_id" varchar(32),
  "sensor_name" varchar(256),
  "floor" varchar(16),
  "dcc_value_id" varchar(4)
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

CREATE TABLE "perf_pdu_chart" (
  "stime" varchar(12),
  "month_kw" numeric,
  "today_kw" numeric
);


COMMENT ON COLUMN "src_frs_report_tmp"."stime" IS '辨識時間';

COMMENT ON COLUMN "perf_frs_system_status_tmp"."type" IS 'frs/cctv';

COMMENT ON COLUMN "perf_frs_report_tmp"."stime" IS '辨識時間';

COMMENT ON COLUMN "perf_frs_system_status_raw"."type" IS 'frs/cctv';

COMMENT ON COLUMN "perf_frs_report_raw"."stime" IS '辨識時間';

COMMENT ON COLUMN "perf_hex_log_tmp"."stime" IS 'yyyymmddhh24missSSS';

COMMENT ON COLUMN "perf_hex_log_raw"."stime" IS 'yyyymmddhh24missSSS';

COMMENT ON COLUMN "perf_sbms_event_active"."source_id" IS '來源系統的id';

COMMENT ON COLUMN "perf_sbms_event_active"."source_stime" IS '來源系統的事件發生時間';

COMMENT ON COLUMN "perf_sbms_event_active"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

COMMENT ON COLUMN "perf_sbms_event_active"."teamgoal_yn" IS 'Y: 發送 teamgoal, N: 不發送 teamgoal';

COMMENT ON COLUMN "perf_teamgoal_send_message_tmp"."event_id" IS 'perf_sbms_event_raw.event_id';

COMMENT ON COLUMN "perf_teamgoal_send_message_raw"."event_id" IS 'perf_sbms_event_raw.event_id';

COMMENT ON COLUMN "perf_sbms_event_type_hour"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

COMMENT ON COLUMN "perf_sbms_event_type_day"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

COMMENT ON COLUMN "perf_sbms_event_type_month"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

COMMENT ON COLUMN "perf_sbms_event_hour"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

COMMENT ON COLUMN "perf_sbms_event_day"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

COMMENT ON COLUMN "perf_sbms_event_month"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

COMMENT ON COLUMN "perf_sbms_event_raw"."source_id" IS '來源系統的id';

COMMENT ON COLUMN "perf_sbms_event_raw"."source_stime" IS '來源系統的事件發生時間';

COMMENT ON COLUMN "perf_sbms_event_raw"."level" IS '1: Warning, 2: Minor, 3: Major, 4: Critical';

COMMENT ON COLUMN "perf_sbms_event_raw"."teamgoal_yn" IS 'Y: 發送 teamgoal, N: 不發送 teamgoal';















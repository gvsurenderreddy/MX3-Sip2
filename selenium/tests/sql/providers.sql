INSERT INTO `providers` (`id`, `name`, `tech`, `channel`, `login`, `password`, `server_ip`, `port`, `priority`, `quality`, `tariff_id`, `cut_a`, `cut_b`, `add_a`, `add_b`, `device_id`, `ani`, `timeout`, `call_limit`, `interpret_noanswer_as_failed`, `interpret_busy_as_failed`, `register`, `reg_extension`, `terminator_id`, `reg_line`, `hidden`, `use_p_asserted_identity`, `user_id`, `common_use`, `balance`) VALUES
(2, 'Test provider 2', 'SIP', '', 'Test provider 2', 'please_change', '0.0.0.0', '5060', 1, 1, 1, 0, 0, '', '', 8, 0, 60, 0, 0, 0, 0, NULL, 0, NULL, 0, 0, 0, 0, 0.000000000000000),
(3, 'Test provider 3', 'SIP', '', 'Teste provider 3', 'please_change', '0.0.0.0', '5060', 1, 1, 1, 0, 0, '', '', 9, 0, 60, 0, 0, 0, 0, '', 0, '', 0, 0, 0, 0, 0.000000000000000),
(4, 'Common use provider', 'SIP', '', 'Common use provider', 'please_change', '0.0.0.0', '5060', 1, 1, 1, 0, 0, '', '', 10, 0, 60, 0, 0, 0, 0, NULL, 0, NULL, 0, 0, 0, 0, 0.000000000000000),
(5, 'Common use provider 2', 'SIP', '', 'Common use provider 2', 'please_change', '0.0.0.0', '5060', 1, 1, 1, 0, 0, '', '', 11, 0, 60, 0, 0, 0, 0, NULL, 0, NULL, 0, 0, 0, 0, 0.000000000000000),
(6, 'Reseller Test Provider', 'SIP', '', 'Reseller Test Provider', 'please_change', '0.0.0.0', '5060', 1, 1, 6, 0, 0, '', '', 12, 0, 60, 0, 0, 0, 0, NULL, 0, NULL, 0, 0, 3, 0, 0.000000000000000),
(7, 'Reseller Test Provider 2', 'SIP', '', 'Reseller Test Provider 2', 'please_change', '0.0.0.0', '5060', 1, 1, 6, 0, 0, '', '', 13, 0, 60, 0, 0, 0, 0, NULL, 0, NULL, 0, 0, 3, 0, 0.000000000000000);
update users set own_providers=1 where id=3;
update providers set common_use=1 where id in (1,6,7);
INSERT INTO `common_use_providers`(`id`, `provider_id`, `reseller_id`,`tariff_id`) VALUES
(11,4,3,1),
(12,1,3,1),
(13,5,3,1);
INSERT INTO `devices` (`id`, `name`, `host`, `secret`, `context`, `ipaddr`, `port`, `regseconds`, `accountcode`, `callerid`, `extension`, `voicemail_active`, `username`, `device_type`, `user_id`, `primary_did_id`, `works_not_logged`, `forward_to`, `record`, `transfer`, `disallow`, `allow`, `deny`, `permit`, `nat`, `qualify`, `fullcontact`, `canreinvite`, `devicegroup_id`, `dtmfmode`, `callgroup`, `pickupgroup`, `fromuser`, `fromdomain`, `trustrpid`, `sendrpid`, `insecure`, `progressinband`, `videosupport`, `location_id`, `description`, `istrunk`, `cid_from_dids`, `pin`, `tell_balance`, `tell_time`, `tell_rtime_when_left`, `repeat_rtime_every`, `t38pt_udptl`, `regserver`, `ani`, `promiscredir`, `timeout`, `process_sipchaninfo`, `temporary_id`, `allow_duplicate_calls`, `call_limit`, `lastms`, `faststart`, `h245tunneling`, `latency`, `grace_time`, `recording_to_email`, `recording_keep`, `recording_email`, `record_forced`, `fake_ring`, `save_call_log`, `mailbox`, `server_id`, `enable_mwi`, `authuser`, `requirecalltoken`, `language`, `use_ani_for_cli`, `calleridpres`, `change_failed_code_to`, `reg_status`, `max_timeout`, `forward_did_id`, `anti_resale_auto_answer`, `qf_tell_balance`, `qf_tell_time`, `time_limit_per_day`, `control_callerid_by_cids`, `callerid_advanced_control`, `transport`, `subscribemwi`, `encryption`, `block_callerid`) VALUES
(8, 'prov8', '0.0.0.0', 'please_change', 'mor', '0.0.0.0', 5060, 0, 8, NULL, '06mpw8ceub', 0, 'est provider 2', 'SIP', -1, 0, 1, 0, 0, 'no', 'all', 'alaw;g729', '0.0.0.0/0.0.0.0', '0.0.0.0/0.0.0.0', 'no', '2000', '', 'no', NULL, 'rfc2833', NULL, NULL, NULL, NULL, 'yes', 'no', 'port,invite', 'never', 'no', 1, NULL, 1, 0, NULL, 0, 0, 60, 60, 'no', NULL, 0, 'no', 60, 0, NULL, 0, 0, 0, 'yes', 'yes', 0.000000000000000, 0, 0, 0, NULL, 0, 0, 0, '', 1, 0, '', 'no', 'en', 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 'udp', NULL, 'no', 0),
(9, 'prov_3', '0.0.0.0', 'please_change', 'mor', '0.0.0.0', 5060, 0, 9, '', 'xj7m11c244', 0, 'prov_3', 'SIP', -1, 0, 1, 0, 0, 'no', 'all', 'alaw;g729', '0.0.0.0/0.0.0.0', '0.0.0.0/0.0.0.0', 'no', 'yes', NULL, 'no', NULL, 'rfc2833', NULL, NULL, NULL, NULL, 'yes', 'no', 'port,invite', 'never', 'no', 1, NULL, 1, 0, NULL, 0, 0, 60, 60, 'no', NULL, 0, 'no', 60, 0, NULL, 0, 0, 0, 'yes', 'yes', 0.000000000000000, 0, 0, 0, NULL, 0, 0, 0, '', 1, 0, '', 'no', 'en', 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 'udp', NULL, 'no', 0),
(10, 'prov_4', '0.0.0.0', 'please_change', 'mor', '0.0.0.0', 5060, 0, 10, '', 'sg6m0ckncc', 0, 'prov_4', 'SIP', -1, 0, 1, 0, 0, 'no', 'all', 'alaw;g729', '0.0.0.0/0.0.0.0', '0.0.0.0/0.0.0.0', 'no', 'yes', NULL, 'no', NULL, 'rfc2833', NULL, NULL, NULL, NULL, 'yes', 'no', 'port,invite', 'never', 'no', 1, NULL, 1, 0, NULL, 0, 0, 60, 60, 'no', NULL, 0, 'no', 60, 0, NULL, 0, 0, 0, 'yes', 'yes', 0.000000000000000, 0, 0, 0, NULL, 0, 0, 0, '', 1, 0, '', 'no', 'en', 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 'udp', NULL, 'no', 0),
(11, 'prov_5', '0.0.0.0', 'please_change', 'mor', '0.0.0.0', 5060, 0, 11, '', 'nddrkq03dp', 0, 'prov_5', 'SIP', -1, 0, 1, 0, 0, 'no', 'all', 'alaw;g729', '0.0.0.0/0.0.0.0', '0.0.0.0/0.0.0.0', 'no', 'yes', NULL, 'no', NULL, 'rfc2833', NULL, NULL, NULL, NULL, 'yes', 'no', 'port,invite', 'never', 'no', 1, NULL, 1, 0, NULL, 0, 0, 60, 60, 'no', NULL, 0, 'no', 60, 0, NULL, 0, 0, 0, 'yes', 'yes', 0.000000000000000, 0, 0, 0, NULL, 0, 0, 0, '', 1, 0, '', 'no', 'en', 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 'udp', NULL, 'no', 0),
(12, 'prov_6', '0.0.0.0', 'please_change', 'mor', '0.0.0.0', 5060, 0, 12, '', 'aebvx1f0kr', 0, 'prov_6', 'SIP', -1, 0, 1, 0, 0, 'no', 'all', 'alaw;g729', '0.0.0.0/0.0.0.0', '0.0.0.0/0.0.0.0', 'no', 'yes', NULL, 'no', NULL, 'rfc2833', NULL, NULL, NULL, NULL, 'yes', 'no', 'port,invite', 'never', 'no', 2, NULL, 1, 0, NULL, 0, 0, 60, 60, 'no', NULL, 0, 'no', 60, 0, NULL, 0, 0, 0, 'yes', 'yes', 0.000000000000000, 0, 0, 0, NULL, 0, 0, 0, '', 1, 0, '', 'no', 'en', 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 'udp', NULL, 'no', 0),
(13, 'prov_7', '0.0.0.0', 'please_change', 'mor', '0.0.0.0', 5060, 0, 13, '', 'ty0z3zc85e', 0, 'prov_7', 'SIP', -1, 0, 1, 0, 0, 'no', 'all', 'alaw;g729', '0.0.0.0/0.0.0.0', '0.0.0.0/0.0.0.0', 'no', 'yes', NULL, 'no', NULL, 'rfc2833', NULL, NULL, NULL, NULL, 'yes', 'no', 'port,invite', 'never', 'no', 1, NULL, 1, 0, NULL, 0, 0, 60, 60, 'no', NULL, 0, 'no', 60, 0, NULL, 0, 0, 0, 'yes', 'yes', 0.000000000000000, 0, 0, 0, NULL, 0, 0, 0, '', 1, 0, '', 'no', 'en', 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, 'udp', NULL, 'no', 0);
INSERT INTO `tariffs` (`id`, `name`, `purpose`, `owner_id`, `currency`) VALUES
(6, 'Provider Tariff', 'provider', 3, 'USD');
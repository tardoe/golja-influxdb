class influxdb::server (
  $ensure                                       = $influxdb::params::ensure,
  $version                                      = 'latest',
  $config_file                                  = $influxdb::params::config_file,
  $service_provider                             = $influxdb::params::service_provider,
  $service_enabled                              = $influxdb::params::service_enabled,
  $hostname                                     = undef,
  $bind_address                                 = $influxdb::params::bind_address,
  $reporting_disabled                           = $influxdb::params::reporting_disabled,
  $retention_autocreate                         = $influxdb::params::retention_autocreate,
  $election_timeout                             = $influxdb::params::election_timeout,
  $heartbeat_timeout                            = $influxdb::params::heartbeat_timeout,
  $leader_lease_timeout                         = $influxdb::params::leader_lease_timeout,
  $commit_timeout                               = $influxdb::params::commit_timeout,
  $cluster_tracing                              = $influxdb::params::cluster_tracing,
  $raft_promotion_enabled                       = $influxdb::params::raft_promotion_enabled,
  $data_dir                                     = $influxdb::params::data_dir,
  $wal_dir                                      = $influxdb::params::wal_dir,
  $meta_dir                                     = $influxdb::params::meta_dir,
  $wal_enable_logging                           = $influxdb::params::wal_enable_logging,
  $wal_ready_series_size                        = $influxdb::params::wal_ready_series_size,
  $wal_compaction_threshold                     = $influxdb::params::wal_compaction_threshold,
  $wal_max_series_size                          = $influxdb::params::wal_max_series_size,
  $wal_flush_cold_interval                      = $influxdb::params::wal_flush_cold_interval,
  $wal_partition_size_threshold                 = $influxdb::params::wal_partition_size_threshold,
  $max_wal_size                                 = $influxdb::params::max_wal_size,
  $wal_flush_interval                           = $influxdb::params::wal_flush_interval,
  $wal_partition_flush_delay                    = $influxdb::params::wal_partition_flush_delay,
  $query_log_enabled                            = $influxdb::params::query_log_enabled,
  $tsm_cache_max_memory_size                    = $influxdb::params::tsm_cache_max_memory_size,
  $tsm_cache_snapshot_memory_size               = $influxdb::params::tsm_cache_snapshot_memory_size,
  $tsm_cache_snapshot_write_cold_duration       = $influxdb::params::tsm_cache_snapshot_write_cold_duration,
  $tsm_compact_min_file_count                   = $influxdb::params::tsm_compact_min_file_count,
  $tsm_compact_full_write_cold_duration         = $influxdb::params::tsm_compact_full_write_cold_duration,
  $tsm_max_points_per_block                     = $influxdb::params::tsm_max_points_per_block,
  $shard_writer_timeout                         = $influxdb::params::shard_writer_timeout,
  $cluster_write_timeout                        = $influxdb::params::cluster_write_timeout,
  $retention_enabled                            = $influxdb::params::retention_enabled,
  $retention_check_interval                     = $influxdb::params::retention_check_interval,
  $shard_precreation_enabled                    = $influxdb::params::shard_precreation_enabled,
  $shard_precreation_check_interval             = $influxdb::params::shard_precreation_check_interval,
  $shard_precreation_advance_period             = $influxdb::params::shard_precreation_advance_period,
  $admin_enabled                                = $influxdb::params::admin_enabled,
  $admin_bind_address                           = $influxdb::params::admin_bind_address,
  $admin_https_enabled                          = $influxdb::params::admin_https_enabled,
  $admin_https_certificate                      = $influxdb::params::admin_https_certificate,
  $http_enabled                                 = $influxdb::params::http_enabled,
  $http_bind_address                            = $influxdb::params::http_bind_address,
  $http_auth_enabled                            = $influxdb::params::http_auth_enabled,
  $http_log_enabled                             = $influxdb::params::http_log_enabled,
  $http_write_tracing                           = $influxdb::params::http_write_tracing,
  $http_pprof_enabled                           = $influxdb::params::http_pprof_enabled,
  $http_https_enabled                           = $influxdb::params::http_https_enabled,
  $http_https_certificate                       = $influxdb::params::http_https_certificate,
  $graphite_options                             = $influxdb::params::graphite_options,
  $collectd_options                             = $influxdb::params::collectd_options,
  $opentsdb_options                             = $influxdb::params::opentsdb_options,
  $udp_options                                  = $influxdb::params::udp_options,
  $monitoring_enabled                           = $influxdb::params::monitoring_enabled,
  $monitoring_write_interval                    = $influxdb::params::monitoring_write_interval,
  $continuous_queries_enabled                   = $influxdb::params::continuous_queries_enabled,
  $continuous_queries_recompute_previous_n      = $influxdb::params::continuous_queries_recompute_previous_n,
  $continuous_queries_recompute_no_older_than   = $influxdb::params::continuous_queries_recompute_no_older_than,
  $continuous_queries_compute_runs_per_interval = $influxdb::params::continuous_queries_compute_runs_per_interval,
  $continuous_queries_compute_no_more_than      = $influxdb::params::continuous_queries_compute_no_more_than,
  $hinted_handoff_enabled                       = $influxdb::params::hinted_handoff_enabled,
  $hinted_handoff_dir                           = $influxdb::params::hinted_handoff_dir,
  $hinted_handoff_max_size                      = $influxdb::params::hinted_handoff_max_size,
  $hinted_handoff_max_age                       = $influxdb::params::hinted_handoff_max_age,
  $hinted_handoff_retry_rate_limit              = $influxdb::params::hinted_handoff_retry_rate_limit,
  $hinted_handoff_retry_interval                = $influxdb::params::hinted_handoff_retry_interval,
  $hinted_handoff_retry_max_interval            = $influxdb::params::hinted_handoff_retry_max_interval,
  $hinted_handoff_purge_interval                = $influxdb::params::hinted_handoff_purge_interval,
  $conf_template                                = $influxdb::params::conf_template,
  $influxdb_user                                = $influxdb::params::influxdb_user,
  $influxdb_group                               = $influxdb::params::influxdb_group,
  $enable_snapshot                              = $influxdb::params::enable_snapshot,
  $influxdb_stderr_log                          = $influxdb::params::influxdb_stderr_log,
  $influxdb_stdout_log                          = $influxdb::params::influxdb_stdout_log,
  $influxd_opts                                 = $influxdb::params::influxd_opts,
  $manage_install                               = $influxdb::params::manage_install,
) inherits influxdb::params {

  anchor { 'influxdb::server::start': }->
  class { 'influxdb::server::install': }->
  class { 'influxdb::server::config': }->
  class { 'influxdb::server::service': }->
  anchor { 'influxdb::server::end': }

}

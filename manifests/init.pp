class torrentexpander (
  $install_dir,
  $user                                = $torrentexpander::params::user,
  $group                               = $torrentexpander::params::group,
  $manage_rar                          = $torrentexpander::params::manage_rar,
  $tmp_dir                             = $torrentexpander::params::tmp_dir,
  $unzip_bin                           = $torrentexpander::params::unzip_bin,
  $get_curl                            = $torrentexpander::params::get_curl,
  $ccd2iso_bin                         = $torrentexpander::params::ccd2iso_bin,
  $text_editor_bin                     = $torrentexpander::params::text_editor_bin,
  $mkvdts2ac3_bin                      = $torrentexpander::params::mkvdts2ac3_bin,
  $torrent_daemon_bin                  = $torrentexpander::params::torrent_daemon_bin,
  $all_files_script                    = $torrentexpander::params::all_files_script,
  $processed_torrent_script            = $torrentexpander::params::processed_torrent_script,
  $post_run_script                     = $torrentexpander::params::post_run_script,
  $destination_folder                  = $torrentexpander::params::destination_folder,
  $tv_shows_post_path                  = $torrentexpander::params::tv_shows_post_path,
  $movies_post_path                    = $torrentexpander::params::movies_post_path,
  $music_post_path                     = $torrentexpander::params::music_post_path,
  $third_party_log                     = $torrentexpander::params::third_party_log,
  $destructive_mode                    = $torrentexpander::params::destructive_mode,
  $user_defined_other_movies_patterns  = $torrentexpander::params::user_defined_other_movies_patterns,
  $user_defined_scene_patterns         = $torrentexpander::params::user_defined_scene_patterns,
  $tv_shows_fix_numbering              = $torrentexpander::params::tv_shows_fix_numbering,
  $clean_up_filenames                  = $torrentexpander::params::clean_up_filenames,
  $movies_rename_schema                = $torrentexpander::params::movies_rename_schema,
  $subtitles_handling                  = $torrentexpander::params::subtitles_handling,
  $repack_handling                     = $torrentexpander::params::repack_handling,
  $wii_post                            = $torrentexpander::params::wii_post,
  $img_post                            = $torrentexpander::params::img_post,
  $tv_shows_post                       = $torrentexpander::params::tv_shows_post,
  $tv_shows_post_path_mode             = $torrentexpander::params::tv_shows_post_path_mode,
  $movies_post                         = $torrentexpander::params::movies_post,
  $force_single_file_movies_folder     = $torrentexpander::params::force_single_file_movies_folder,
  $music_post                          = $torrentexpander::params::music_post,
  $imdb_poster                         = $torrentexpander::params::imdb_poster,
  $imdb_poster_format                  = $torrentexpander::params::imdb_poster_format,
  $imdb_nfo                            = $torrentexpander::params::imdb_nfo,
  $imdb_fanart                         = $torrentexpander::params::imdb_fanart,
  $imdb_fanart_format                  = $torrentexpander::params::imdb_fanart_format,
  $disable_nmj_scan                    = $torrentexpander::params::disable_nmj_scan,
  $dts_post                            = $torrentexpander::params::dts_post,
  $user_perm_post                      = $torrentexpander::params::user_perm_post,
  $group_perm_post                     = $torrentexpander::params::group_perm_post,
  $files_perm_post                     = $torrentexpander::params::files_perm_post,
  $folder_perm_post                    = $torrentexpander::params::folder_perm_post,
  $edit_perm_as_sudo                   = $torrentexpander::params::edit_perm_as_sudo,
  $reset_timestamp                     = $torrentexpander::params::reset_timestamp,
  $supported_extensions                = $torrentexpander::params::supported_extensions,
  $tv_show_extensions                  = $torrentexpander::params::tv_show_extensions,
  $movies_extensions                   = $torrentexpander::params::movies_extensions,
  $music_extensions                    = $torrentexpander::params::music_extensions,
  $debug_mode                          = $torrentexpander::params::debug_mode,
  $auto_update_script                  = $torrentexpander::params::auto_update_script,
  $remove_torrent_from_client          = $torrentexpander::params::remove_torrent_from_client,
  $torrent_daemon_login                = $torrentexpander::params::torrent_daemon_login,
  $torrent_daemon_password             = $torrentexpander::params::torrent_daemon_password,
  $torrent_daemon_port                 = $torrentexpander::params::torrent_daemon_port,
  $all_files_script_enabled            = $torrentexpander::params::all_files_script_enabled,
  $all_files_script_variable_1         = $torrentexpander::params::all_files_script_variable_1,
  $all_files_script_variable_2         = $torrentexpander::params::all_files_script_variable_2,
  $all_files_script_variable_3         = $torrentexpander::params::all_files_script_variable_3,
  $all_files_script_variable_4         = $torrentexpander::params::all_files_script_variable_4,
  $all_files_script_variable_5         = $torrentexpander::params::all_files_script_variable_5,
  $processed_torrent_script_enabled    = $torrentexpander::params::processed_torrent_script_enabled,
  $processed_torrent_script_variable_1 = $torrentexpander::params::processed_torrent_script_variable_1,
  $processed_torrent_script_variable_2 = $torrentexpander::params::processed_torrent_script_variable_2,
  $processed_torrent_script_variable_3 = $torrentexpander::params::processed_torrent_script_variable_3,
  $processed_torrent_script_variable_4 = $torrentexpander::params::processed_torrent_script_variable_4,
  $processed_torrent_script_variable_5 = $torrentexpander::params::processed_torrent_script_variable_5,
  $post_run_script_enabled             = $torrentexpander::params::post_run_script_enabled,
  $unrar_bin                           = $torrentexpander::params::unrar_bin,
) inherits torrentexpander::params {
  File {
    ensure => file,
    owner  => $user,
    group  => $group,
  }
  file { "${install_dir}/torrentexpander.sh":
    mode    => '0755',
    content => template("${module_name}/torrentexpander.sh.erb"),
  }
  file { "${install_dir}/torrentexpander_settings.ini":
    mode    => '0644',
    content => template("${module_name}/torrentexpander_settings.ini.erb"),
  }
  if $manage_rar {
    package { 'rar':
      ensure => installed,
    }
  }
}

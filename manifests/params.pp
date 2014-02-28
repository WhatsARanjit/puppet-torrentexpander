class torrentexpander::params (
  $unzip_bin                           = '/usr/bin/unzip',
  $get_curl                            = '/usr/bin/wget',
  $ccd2iso_bin                         = undef,
  $text_editor_bin                     = '/usr/bin/vim',
  $mkvdts2ac3_bin                      = undef,
  $torrent_daemon_bin                  = 'incorrect_or_not_set',
  $all_files_script                    = 'incorrect_or_not_set',
  $processed_torrent_script            = 'incorrect_or_not_set',
  $post_run_script                     = 'incorrect_or_not_set',
  $destination_folder                  = 'no',
  $tv_shows_post_path                  = 'no',
  $movies_post_path                    = 'no',
  $music_post_path                     = 'no',
  $third_party_log                     = 'no',
  $destructive_mode                    = 'no',
  $user_defined_other_movies_patterns  = undef,
  $user_defined_scene_patterns         = undef,
  $tv_shows_fix_numbering              = 'yes',
  $clean_up_filenames                  = 'yes',
  $movies_rename_schema                = 'type_1',
  $subtitles_handling                  = 'no',
  $repack_handling                     = 'no',
  $wii_post                            = 'no',
  $img_post                            = 'no',
  $tv_shows_post                       = 'no',
  $tv_shows_post_path_mode             = 'no',
  $movies_post                         = 'no',
  $force_single_file_movies_folder     = 'no',
  $music_post                          = 'no',
  $imdb_poster                         = 'no',
  $imdb_poster_format                  = 'normal',
  $imdb_nfo                            = 'no',
  $imdb_fanart                         = 'no',
  $imdb_fanart_format                  = 'w1280',
  $disable_nmj_scan                    = 'no',
  $dts_post                            = 'no',
  $user_perm_post                      = 'no',
  $group_perm_post                     = 'no',
  $files_perm_post                     = 'no',
  $folder_perm_post                    = 'no',
  $edit_perm_as_sudo                   = 'no',
  $reset_timestamp                     = 'no',
  $supported_extensions                = 'avi,mkv,divx,mp4,ts,iso,img,mp3,m4a,wav,srt,idx,sub,dvd',
  $tv_show_extensions                  = 'avi,mkv,divx,mp4,srt,idx,sub',
  $movies_extensions                   = 'avi,mkv,divx,mp4,ts,iso,img,srt,idx,sub',
  $music_extensions                    = 'mp3,m4a,wav',
  $debug_mode                          = 'no',
  $auto_update_script                  = 'no',
  $remove_torrent_from_client          = 'no',
  $torrent_daemon_login                = 'admin',
  $torrent_daemon_password             = 'Conversion11',
  $torrent_daemon_port                 = '9091',
  $all_files_script_enabled            = 'no',
  $all_files_script_variable_1         = undef,
  $all_files_script_variable_2         = undef,
  $all_files_script_variable_3         = undef,
  $all_files_script_variable_4         = undef,
  $all_files_script_variable_5         = undef,
  $processed_torrent_script_enabled    = 'no',
  $processed_torrent_script_variable_1 = undef,
  $processed_torrent_script_variable_2 = undef,
  $processed_torrent_script_variable_3 = undef,
  $processed_torrent_script_variable_4 = undef,
  $processed_torrent_script_variable_5 = undef,
  $post_run_script_enabled             = 'no',
  $unrar_bin                           = '/usr/bin/rar',
) {
}

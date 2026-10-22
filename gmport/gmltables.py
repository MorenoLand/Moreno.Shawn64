R, S, U = 'R', 'S', 'U'

CONSTANTS = {
    'c_aqua': 16776960, 'c_black': 0, 'c_blue': 16711680, 'c_dkgray': 4210752, 'c_fuchsia': 16711935,
    'c_gray': 8421504, 'c_green': 32768, 'c_lime': 65280, 'c_ltgray': 12632256, 'c_maroon': 128,
    'c_navy': 8388608, 'c_olive': 32896, 'c_orange': 4235519, 'c_purple': 8388736, 'c_red': 255,
    'c_silver': 12632256, 'c_teal': 8421376, 'c_white': 16777215, 'c_yellow': 65535,
    'fa_left': 0, 'fa_center': 1, 'fa_right': 2, 'fa_top': 0, 'fa_middle': 1, 'fa_bottom': 2,
    'bm_normal': 0, 'bm_add': 1, 'bm_max': 2, 'bm_subtract': 3,
    'bm_zero': 1, 'bm_one': 2, 'bm_src_color': 3, 'bm_inv_src_color': 4, 'bm_src_alpha': 5,
    'bm_inv_src_alpha': 6, 'bm_dest_alpha': 7, 'bm_inv_dest_alpha': 8, 'bm_dest_color': 9,
    'bm_inv_dest_color': 10, 'bm_src_alpha_sat': 11,
    'ef_explosion': 0, 'ef_ring': 1, 'ef_ellipse': 2, 'ef_firework': 3, 'ef_smoke': 4, 'ef_smokeup': 5,
    'ef_star': 6, 'ef_spark': 7, 'ef_flare': 8, 'ef_cloud': 9, 'ef_rain': 10, 'ef_snow': 11,
    'mb_any': -1, 'mb_none': 0, 'mb_left': 1, 'mb_right': 2, 'mb_middle': 3,
    'vk_nokey': 0, 'vk_anykey': 1, 'vk_backspace': 8, 'vk_tab': 9, 'vk_enter': 13, 'vk_return': 13,
    'vk_shift': 16, 'vk_control': 17, 'vk_alt': 18, 'vk_pause': 19, 'vk_escape': 27, 'vk_space': 32,
    'vk_pageup': 33, 'vk_pagedown': 34, 'vk_end': 35, 'vk_home': 36, 'vk_left': 37, 'vk_up': 38,
    'vk_right': 39, 'vk_down': 40, 'vk_printscreen': 44, 'vk_insert': 45, 'vk_delete': 46,
    'vk_numpad0': 96, 'vk_numpad1': 97, 'vk_numpad2': 98, 'vk_numpad3': 99, 'vk_numpad4': 100,
    'vk_numpad5': 101, 'vk_numpad6': 102, 'vk_numpad7': 103, 'vk_numpad8': 104, 'vk_numpad9': 105,
    'vk_multiply': 106, 'vk_add': 107, 'vk_subtract': 109, 'vk_decimal': 110, 'vk_divide': 111,
    'vk_f1': 112, 'vk_f2': 113, 'vk_f3': 114, 'vk_f4': 115, 'vk_f5': 116, 'vk_f6': 117, 'vk_f7': 118,
    'vk_f8': 119, 'vk_f9': 120, 'vk_f10': 121, 'vk_f11': 122, 'vk_f12': 123,
    'vk_lshift': 160, 'vk_rshift': 161, 'vk_lcontrol': 162, 'vk_rcontrol': 163, 'vk_lalt': 164, 'vk_ralt': 165,
    'cr_default': 0, 'cr_none': -1, 'cr_arrow': -2, 'cr_cross': -3, 'cr_beam': -4, 'cr_size_nesw': -6,
    'cr_size_ns': -7, 'cr_size_nwse': -8, 'cr_size_we': -9, 'cr_uparrow': -10, 'cr_hourglass': -11,
    'cr_drag': -12, 'cr_nodrop': -13, 'cr_hsplit': -14, 'cr_vsplit': -15, 'cr_multidrag': -16,
    'cr_sqlwait': -17, 'cr_no': -18, 'cr_appstart': -19, 'cr_help': -20, 'cr_handpoint': -21,
    'cr_size_all': -22,
    'pr_pointlist': 1, 'pr_linelist': 2, 'pr_linestrip': 3, 'pr_trianglelist': 4, 'pr_trianglestrip': 5,
    'pr_trianglefan': 6,
    'ev_create': 0, 'ev_destroy': 1, 'ev_alarm': 2, 'ev_step': 3, 'ev_collision': 4, 'ev_keyboard': 5,
    'ev_mouse': 6, 'ev_other': 7, 'ev_draw': 8, 'ev_keypress': 9, 'ev_keyrelease': 10, 'ev_trigger': 11,
    'ev_user0': 10, 'ev_user1': 11, 'ev_user2': 12, 'ev_user3': 13, 'ev_user4': 14, 'ev_user5': 15,
    'ev_user6': 16, 'ev_user7': 17, 'ev_user8': 18, 'ev_user9': 19, 'ev_user10': 20, 'ev_user11': 21,
    'ev_user12': 22, 'ev_user13': 23, 'ev_user14': 24, 'ev_user15': 25,
    'noone': -4, 'all': -3,
    'fs_normal': 0, 'fs_bold': 1, 'fs_italic': 2, 'fs_bold_italic': 3,
    'ef_ring_': 1, 'se_none': 0, 'dll_cdecl': 0, 'dll_stdcall': 1, 'ty_real': 0, 'ty_string': 1,
}

INSTANCE_VARS = {
    'x': ('x', R), 'y': ('y', R), 'xprevious': ('xprevious', R), 'yprevious': ('yprevious', R),
    'xstart': ('xstart', R), 'ystart': ('ystart', R), 'hspeed': ('hspeed', R), 'vspeed': ('vspeed', R),
    'speed': ('speed', R), 'direction': ('direction', R), 'friction': ('friction', R),
    'gravity': ('gravity', R), 'gravity_direction': ('gravity_direction', R),
    'sprite_index': ('sprite_index', R), 'image_index': ('image_index', R),
    'image_speed': ('image_speed', R), 'image_xscale': ('image_xscale', R),
    'image_yscale': ('image_yscale', R), 'image_angle': ('image_angle', R),
    'image_alpha': ('image_alpha', R), 'image_blend': ('image_blend', R), 'visible': ('visible', R),
    'solid': ('solid', R), 'depth': ('depth', R), 'persistent': ('persistent', R),
    'mask_index': ('mask_index', R), 'id': ('id', R), 'object_index': ('object_index', R),
    'sprite_width': ('sprite_width', R), 'sprite_height': ('sprite_height', R),
    'sprite_xoffset': ('sprite_xoffset', R), 'sprite_yoffset': ('sprite_yoffset', R),
    'image_number': ('image_number', R), 'bbox_left': ('bbox_left', R), 'bbox_right': ('bbox_right', R),
    'bbox_top': ('bbox_top', R), 'bbox_bottom': ('bbox_bottom', R), 'path_index': ('path_index', R),
    'path_position': ('path_position', R), 'path_speed': ('path_speed', R),
    'timeline_index': ('timeline_index', R), 'timeline_position': ('timeline_position', R),
    'timeline_speed': ('timeline_speed', R), 'timeline_running': ('timeline_running', R),
    'timeline_loop': ('timeline_loop', R),
}

GLOBAL_VARS = {
    'room': ('GM.room', R), 'room_speed': ('GM.room_speed', R), 'room_width': ('GM.room_width', R),
    'room_height': ('GM.room_height', R), 'room_caption': ('GM.room_caption', S),
    'room_persistent': ('GM.room_persistent', R), 'score': ('GM.score', R), 'lives': ('GM.lives', R),
    'health': ('GM.health', R), 'mouse_x': ('GM.mouse_x', R), 'mouse_y': ('GM.mouse_y', R),
    'keyboard_key': ('GM.keyboard_key', R), 'keyboard_lastkey': ('GM.keyboard_lastkey', R),
    'keyboard_lastchar': ('GM.keyboard_lastchar', S), 'current_time': ('GM.current_time()', R),
    'fps': ('GM.fps', R), 'background_color': ('GM.background_color', R),
    'view_xview': ('GM.view_xview[0]', R), 'view_yview': ('GM.view_yview[0]', R),
    'view_wview': ('GM.view_wview[0]', R), 'view_hview': ('GM.view_hview[0]', R),
    'view_angle': ('GM.view_angle[0]', R), 'view_hborder': ('GM.view_hborder[0]', R),
    'view_vborder': ('GM.view_vborder[0]', R), 'view_xport': ('GM.view_xport[0]', R),
    'view_yport': ('GM.view_yport[0]', R), 'view_wport': ('GM.view_wport[0]', R),
    'view_hport': ('GM.view_hport[0]', R), 'view_visible': ('GM.view_visible[0]', R),
    'view_current': ('GM.view_current', R), 'view_object': ('GM.view_object[0]', R),
    'view_hspeed': ('GM.view_hspeed[0]', R), 'view_vspeed': ('GM.view_vspeed[0]', R),
    'show_score': ('GM.show_score', R), 'show_lives': ('GM.show_lives', R), 'show_health': ('GM.show_health', R),
    'cursor_sprite': ('GM.cursor_sprite', R), 'game_id': ('GM.game_id', R),
    'transition_kind': ('GM.transition_kind', R), 'secure_mode': ('0.0', R),
    'view_left': ('GM.view_xview[0]', R), 'view_top': ('GM.view_yview[0]', R),
    'view_width': ('GM.view_wview[0]', R), 'view_height': ('GM.view_hview[0]', R),
    'font_align': ('GM.font_align', R), 'font_color': ('GM.font_color', R),
    'screen_width': ('GM.screen_w', R), 'screen_height': ('GM.screen_h', R),
    'keyboard_string': ('GM.keyboard_string', S),
    'room_first': ('GM.room_first()', R), 'room_last': ('GM.room_last()', R),
    'instance_count': ('GM.instance_count()', R), 'argument_relative': ('0.0', R),
    'error_occurred': ('0.0', R), 'error_last': ('""', S), 'working_directory': ('"."', S),
    'program_directory': ('"."', S), 'temp_directory': ('"."', S), 'cursor_sprite_': ('0.0', R),
}

ARRAY_GLOBALS = {'background_x', 'background_y', 'background_hspeed', 'background_vspeed', 'background_index',
                 'background_visible', 'background_foreground', 'background_alpha'}


def f(selfarg, ret):
    return (selfarg, ret)


BUILTIN_FUNCS = {}
for n in ['instance_destroy', 'motion_add', 'motion_set', 'place_meeting', 'place_free', 'place_empty',
          'instance_place', 'move_towards_point', 'move_bounce_all', 'move_bounce_solid',
          'move_contact_solid', 'move_contact_all', 'move_outside_solid', 'move_outside_all',
          'move_snap', 'move_wrap', 'distance_to_point', 'distance_to_object', 'direction_set',
          'sprite_set', 'instance_change', 'instance_copy', 'action_move', 'path_start', 'path_end',
          'place_snapped', 'collision_point', 'collision_rectangle', 'collision_line', 'collision_circle',
          'collision_ellipse', 'instance_position', 'instance_destroy_', 'event_perform', 'sound_3d_',
          'draw_self', 'mp_', 'point_in_view_', 'object_is_ancestor_', 'instance_deactivate_object_self',
          'event_inherited', 'event_user', 'timeline_', 'move_random', 'action_'
          ]:
    BUILTIN_FUNCS[n] = f(True, R)
BUILTIN_FUNCS['instance_place'] = f(True, U)
BUILTIN_FUNCS['instance_position'] = f(False, U)
BUILTIN_FUNCS['collision_point'] = f(True, U)
BUILTIN_FUNCS['collision_rectangle'] = f(True, U)
BUILTIN_FUNCS['collision_line'] = f(True, U)
BUILTIN_FUNCS['collision_circle'] = f(True, U)
BUILTIN_FUNCS['collision_ellipse'] = f(True, U)
BUILTIN_FUNCS['instance_copy'] = f(True, U)
for n in ['random', 'random_range', 'irandom', 'irandom_range', 'choose', 'floor', 'ceil', 'round', 'abs', 'sign',
          'sqrt', 'sqr', 'power', 'exp', 'ln', 'log2', 'log10', 'logn', 'sin', 'cos', 'tan', 'arcsin',
          'arccos', 'arctan', 'arctan2', 'degtorad', 'radtodeg', 'min', 'max', 'median', 'mean', 'frac',
          'clamp', 'lerp', 'point_direction', 'point_distance', 'lengthdir_x', 'lengthdir_y',
          'instance_number', 'instance_exists', 'position_meeting', 'instance_activate_object',
          'instance_deactivate_object', 'instance_activate_all', 'instance_deactivate_all',
          'instance_activate_region', 'instance_deactivate_region', 'instance_destroy_all_',
          'room_goto', 'room_goto_next', 'room_goto_previous', 'room_restart', 'room_exists', 'room_next',
          'room_previous', 'game_restart', 'game_end', 'game_save', 'game_load', 'show_message',
          'show_question', 'sound_play', 'sound_loop', 'sound_stop', 'sound_stop_all', 'sound_isplaying',
          'sound_volume', 'sound_pan', 'sound_global_volume', 'sound_fade', 'sound_exists',
          'sound_background_tempo', 'sound_set_search_directory', 'sound_frequency', 'sound_discard',
          'sound_restore', 'sound_add', 'sound_delete', 'draw_set_alpha', 'draw_set_blend_mode',
          'draw_set_blend_mode_ext', 'draw_set_color', 'draw_set_colour', 'draw_set_halign',
          'draw_set_valign', 'draw_set_font', 'draw_get_color', 'draw_get_alpha', 'draw_sprite',
          'draw_sprite_ext', 'draw_sprite_stretched', 'draw_sprite_part', 'draw_sprite_tiled',
          'draw_sprite_general', 'draw_background', 'draw_background_ext', 'draw_background_stretched',
          'draw_background_part', 'draw_background_tiled', 'draw_text', 'draw_text_ext', 'draw_text_transformed',
          'draw_text_transformed_color', 'draw_text_color', 'draw_rectangle', 'draw_rectangle_color',
          'draw_line', 'draw_line_width', 'draw_line_color', 'draw_circle', 'draw_ellipse', 'draw_triangle',
          'draw_point', 'draw_roundrect', 'draw_healthbar', 'draw_arrow', 'draw_set_color_',
          'draw_path', 'draw_clear', 'draw_clear_alpha', 'draw_getpixel', 'draw_button',
          'effect_create_above', 'effect_create_below', 'effect_clear', 'texture_set_interpolation',
          'keyboard_check', 'keyboard_check_pressed', 'keyboard_check_released', 'keyboard_check_direct',
          'keyboard_clear', 'keyboard_set_map', 'keyboard_unset_map', 'mouse_check_button',
          'mouse_check_button_pressed', 'mouse_check_button_released', 'mouse_clear', 'io_clear',
          'display_mouse_set', 'display_mouse_get_x', 'display_mouse_get_y', 'window_mouse_set',
          'window_set_cursor', 'window_set_caption', 'window_set_fullscreen', 'window_get_fullscreen',
          'window_set_showborder', 'window_set_size', 'window_set_position', 'window_view_mouse_get_x',
          'screen_save', 'screen_save_part', 'screen_refresh', 'screen_redraw', 'set_automatic_draw',
          'registry_write_real', 'registry_write_string', 'registry_read_real', 'registry_read_string',
          'registry_exists', 'registry_set_root', 'ini_open', 'ini_close', 'ini_read_real', 'ini_read_string',
          'ini_write_real', 'ini_write_string', 'ini_key_exists', 'ini_section_exists',
          'file_exists', 'file_delete', 'file_text_open_read', 'file_text_open_write', 'file_text_close',
          'file_text_read_string', 'file_text_read_real', 'file_text_readln', 'file_text_eof',
          'file_text_write_string', 'file_text_write_real', 'file_text_writeln',
          'execute_shell', 'execute_program', 'external_define', 'external_call', 'external_free',
          'get_integer', 'get_string_', 'get_open_filename', 'get_save_filename', 'get_color',
          'ord', 'chr', 'real', 'string_length', 'string_pos', 'string_upper', 'string_lower',
          'string_repeat', 'string_count', 'string_digits', 'string_letters', 'string_lettersdigits',
          'string_format', 'string_delete', 'string_insert', 'string_replace', 'string_replace_all',
          'object_get_name', 'object_get_parent', 'object_exists', 'sprite_get_width', 'sprite_get_height',
          'sprite_get_number', 'sprite_get_xoffset', 'sprite_get_yoffset', 'sprite_exists', 'sprite_get_name',
          'background_get_width', 'background_get_height', 'tile_add', 'tile_delete', 'tile_find',
          'tile_get_x', 'tile_get_y', 'tile_set_visible', 'tile_layer_hide', 'tile_layer_show',
          'tile_layer_delete', 'tile_layer_shift', 'tile_layer_find', 'tile_layer_delete_at',
          'tile_get_depth', 'tile_set_depth', 'tile_get_ids', 'tile_exists',
          'variable_global_exists', 'variable_local_exists', 'variable_global_get', 'variable_global_set',
          'variable_local_get', 'variable_local_set', 'is_real', 'is_string', 'script_execute',
          'array_', 'make_color_rgb', 'make_color_hsv', 'make_colour_rgb', 'color_get_red', 'color_get_green',
          'color_get_blue', 'merge_color', 'randomize', 'random_set_seed', 'random_get_seed',
          'ds_list_create', 'ds_list_add', 'ds_list_size', 'ds_list_find_value', 'ds_list_destroy',
          'ds_list_clear', 'ds_list_delete', 'ds_list_find_index', 'ds_list_set', 'ds_list_insert',
          'ds_map_create', 'ds_map_add', 'ds_map_find_value', 'ds_map_exists', 'ds_map_destroy',
          'ds_map_replace', 'ds_map_delete', 'ds_map_size', 'ds_map_clear',
          'ds_grid_create', 'ds_grid_set', 'ds_grid_get', 'ds_grid_destroy', 'ds_grid_width', 'ds_grid_height',
          'ds_stack_create', 'ds_stack_push', 'ds_stack_pop', 'ds_stack_top', 'ds_stack_empty', 'ds_stack_destroy',
          'ds_queue_create', 'ds_queue_enqueue', 'ds_queue_dequeue', 'ds_queue_empty', 'ds_queue_destroy',
          'ds_priority_create', 'ds_priority_add', 'ds_priority_delete_max', 'ds_priority_destroy',
          'ds_priority_empty', 'ds_priority_size', 'ds_priority_delete_min', 'ds_priority_find_max',
          'ds_priority_find_min', 'ds_priority_find_priority', 'ds_priority_change_priority',
          'ds_priority_clear', 'ds_stack_size', 'ds_queue_size', 'ds_stack_clear', 'ds_queue_clear',
          'ds_queue_head', 'ds_queue_tail', 'ds_grid_clear', 'ds_grid_add',
          'view_set_', 'font_add_', 'sleep', 'room_set_background_color', 'room_set_caption',
          'room_set_view', 'room_add', 'room_assign', 'room_instance_add', 'room_tile_add',
          'room_duplicate', 'room_set_width', 'room_set_height', 'room_set_persistent',
          'room_set_background', 'room_set_code', 'room_set_background_colour',
          'object_set_sprite', 'object_set_depth', 'object_set_visible', 'object_set_solid',
          'object_set_persistent', 'object_set_mask', 'object_set_parent', 'object_add', 'object_delete',
          'object_event_add', 'object_event_clear', 'sprite_add', 'sprite_replace', 'sprite_delete',
          'sprite_set_offset', 'sprite_collision_mask', 'sprite_assign', 'sprite_duplicate',
          'sprite_merge', 'background_add', 'background_replace', 'background_delete',
          'background_set_alpha_from_background', 'background_create_color', 'background_create_gradient',
          'background_create_from_screen', 'background_create_from_surface', 'background_assign',
          'background_duplicate', 'background_save', 'sprite_save', 'sprite_save_strip',
          'sprite_add_from_screen', 'sprite_create_from_screen', 'sprite_create_from_surface',
          'sprite_add_from_surface', 'sprite_set_alpha_from_sprite', 'sprite_get_bbox_left',
          'sprite_get_bbox_right', 'sprite_get_bbox_top', 'sprite_get_bbox_bottom', 'sprite_get_transparent',
          'sprite_get_smooth', 'sprite_get_preload', 'sprite_get_bbox_mode', 'sprite_get_precise',
          'sprite_get_texture', 'background_get_name', 'background_exists', 'background_get_texture',
          'sound_get_name', 'script_get_name', 'script_exists', 'font_get_name', 'font_exists',
          'font_get_fontname', 'font_get_size', 'font_get_bold', 'font_get_italic', 'font_get_first',
          'font_get_last', 'font_add', 'font_replace', 'font_delete', 'font_add_sprite',
          'path_get_name', 'path_exists', 'timeline_get_name', 'timeline_exists', 'draw_text_ext_',
          'string_width', 'string_height', 'string_width_ext', 'string_height_ext', 'draw_set_font_',
          'external_define_', 'action_if_variable', 'sprite_get_nm', 'win_alert', 'display_get_width',
          'display_get_height', 'display_get_colordepth', 'display_get_frequency', 'display_set_size',
          'display_set_colordepth', 'display_set_frequency', 'display_set_all', 'display_test_all',
          'display_reset', 'display_save', 'display_save_part', 'display_set_gui_', 'clipboard_has_text',
          'clipboard_get_text', 'clipboard_set_text', 'parameter_count', 'parameter_string',
          'environment_get_variable', 'date_current_datetime', 'date_current_date', 'date_current_time',
          'date_get_year', 'date_get_month', 'date_get_day', 'date_get_hour', 'date_get_minute',
          'date_get_second', 'date_get_weekday', 'date_create_datetime', 'date_inc_day', 'date_inc_month',
          'date_inc_year', 'date_inc_week', 'date_inc_hour', 'date_inc_minute', 'date_inc_second',
          'date_compare_datetime', 'date_compare_date', 'date_compare_time', 'date_get_week',
          'date_get_day_of_year', 'date_get_hour_of_year', 'date_get_minute_of_year',
          'date_get_second_of_year', 'date_year_span', 'date_month_span', 'date_week_span', 'date_day_span',
          'date_hour_span', 'date_minute_span', 'date_second_span', 'date_leap_year', 'date_days_in_month',
          'date_days_in_year', 'date_is_today', 'date_create_date', 'date_create_time',
          'date_date_of', 'date_time_of', 'date_datetime_string', 'date_date_string', 'date_time_string',
          'date_days_in_year_', 'cursor_', 'min_', 'sprite_set_', 'object_', 'room_', 'view_',
          'move_', 'sound_', 'string_', 'draw_', 'instance_', 'event_', 'action_set_', 'timeline_',
          'path_', 'mp_', 'part_', 'background_', 'tile_', 'ds_', 'file_', 'ini_', 'registry_',
          'external_', 'date_', 'display_', 'window_', 'screen_', 'keyboard_', 'mouse_', 'joystick_',
          'show_', 'get_', 'variable_', 'array_', 'is_', 'script_', 'game_', 'sprite_', 'font_',
          'draw_set_', 'draw_get_', 'effect_', 'texture_', 'make_', 'color_', 'merge_', 'room_set_',
          'object_set_', 'object_get_', 'sprite_get_', 'background_get_', 'sound_get_', 'script_get_',
          'path_get_', 'timeline_get_', 'font_get_', 'room_get_', 'cursor_set_']:
    if not n.endswith('_') or n in ('draw_set_color_',):
        BUILTIN_FUNCS.setdefault(n, f(False, R))

for n in ['string', 'string_char_at', 'string_copy', 'get_string', 'string_upper', 'string_lower', 'string_repeat',
          'string_digits', 'string_letters', 'string_lettersdigits', 'string_format', 'string_delete',
          'string_insert', 'string_replace', 'string_replace_all', 'chr', 'registry_read_string',
          'ini_read_string', 'object_get_name', 'sprite_get_name', 'sound_get_name', 'script_get_name',
          'room_get_name', 'clipboard_get_text', 'parameter_string', 'environment_get_variable',
          'file_text_read_string', 'date_datetime_string', 'date_date_string', 'date_time_string',
          'font_get_name', 'background_get_name', 'path_get_name', 'timeline_get_name', 'font_get_fontname',
          'get_open_filename', 'get_save_filename']:
    BUILTIN_FUNCS[n] = f(False, S)
BUILTIN_FUNCS['string_char_at'] = f(False, S)
BUILTIN_FUNCS['instance_create'] = f(False, U)
BUILTIN_FUNCS['instance_nearest'] = f(False, U)
BUILTIN_FUNCS['instance_furthest'] = f(False, U)
BUILTIN_FUNCS['instance_find'] = f(False, U)
BUILTIN_FUNCS['instance_exists'] = f(False, R)
BUILTIN_FUNCS['instance_number'] = f(False, R)
BUILTIN_FUNCS['event_inherited'] = f(True, R)
BUILTIN_FUNCS['event_user'] = f(True, R)
BUILTIN_FUNCS['instance_change'] = f(True, R)
BUILTIN_FUNCS['instance_deactivate_object'] = f(False, R)
BUILTIN_FUNCS['instance_deactivate_region'] = f(True, R)
BUILTIN_FUNCS['instance_activate_region'] = f(False, R)
BUILTIN_FUNCS['instance_deactivate_all'] = f(True, R)
BUILTIN_FUNCS['place_free'] = f(True, R)
BUILTIN_FUNCS['place_empty'] = f(True, R)
BUILTIN_FUNCS['place_meeting'] = f(True, R)
BUILTIN_FUNCS['script_execute'] = f(True, U)
BUILTIN_FUNCS['draw_self'] = f(True, R)
BUILTIN_FUNCS['draw_sprite'] = f(False, R)
BUILTIN_FUNCS['variable_local_exists'] = f(True, R)
BUILTIN_FUNCS['variable_local_get'] = f(True, U)
BUILTIN_FUNCS['variable_local_set'] = f(True, R)
BUILTIN_FUNCS['action_move'] = f(True, R)
BUILTIN_FUNCS['move_contact'] = f(True, R)
BUILTIN_FUNCS['move_contact_solid'] = f(True, R)
BUILTIN_FUNCS['move_contact_all'] = f(True, R)
BUILTIN_FUNCS['move_wrap'] = f(True, R)
BUILTIN_FUNCS['action_move'] = f(True, R)
BUILTIN_FUNCS['action_create_object_motion'] = f(False, R)
BUILTIN_FUNCS['action_create_object_random'] = f(False, R)
BUILTIN_FUNCS['action_kill_position'] = f(False, R)
BUILTIN_FUNCS['room_restart'] = f(False, R)
BUILTIN_FUNCS['instance_place'] = f(True, U)
BUILTIN_FUNCS['instance_position'] = f(False, U)
BUILTIN_FUNCS['draw_circle'] = f(False, R)
BUILTIN_FUNCS['draw_line_color'] = f(False, R)
BUILTIN_FUNCS['event_perform'] = f(True, R)

for _n in ('path_start', 'path_end', 'move_outside_all', 'move_outside_solid', 'move_snap', 'variable_local_exists'):
    BUILTIN_FUNCS[_n] = f(True, R)


def _scan_runtime():
    import os
    import re
    base = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'gm')
    for fname, selfcap in (('gm.gd', True), ('gm_lib.gd', False)):
        text = open(os.path.join(base, fname), encoding='utf-8').read()
        for m in re.finditer(r'^func f_(\w+)\((.*?)\):', text, re.M):
            name = m.group(1)
            params = [x.strip() for x in m.group(2).split(',') if x.strip()]
            needs_self = selfcap and bool(params) and params[0] == 's'
            old = BUILTIN_FUNCS.get(name)
            BUILTIN_FUNCS[name] = (needs_self, old[1] if old else U)


_scan_runtime()

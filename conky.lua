--[[
################################
##  nord-01.conkyrc (Awesome)  ##
################################
]]

conky.config = {

	--Various settings
	background = true, 							-- forked to background
	cpu_avg_samples = 2,						-- The number of samples to average for CPU monitoring.
	diskio_avg_samples = 10,					-- The number of samples to average for disk I/O monitoring.
	double_buffer = true,						-- Use the Xdbe extension? (eliminates flicker)
	if_up_strictness = 'address',				-- how strict if testing interface is up - up, link or address
	net_avg_samples = 2,						-- The number of samples to average for net data
	no_buffers = true,							-- Subtract (file system) buffers from used memory?
	temperature_unit = 'fahrenheit',			-- fahrenheit or celsius
	text_buffer_size = 2048,					-- size of buffer for display of content of large variables - default 256
	update_interval = 1,						-- update interval
	imlib_cache_size = 0,                       -- disable image cache to get a new spotify cover per song

	-- Placement (Conky on MIDDLE of THREE monitors at 1920x1080)
	--alignment = 'top_left',		                -- top_left,top_middle,top_right,bottom_left,bottom_middle,bottom_right,
	--gap_x = 3540,                               -- pixels between right or left border
	--gap_y = 70,									-- pixels between bottom or left border

    -- Placement (For SINGLE monitor users!)
	alignment = 'top_right',		            -- top_left,top_middle,top_right,bottom_left,bottom_middle,bottom_right,
	gap_x = 28,								-- pixels between right or left border
	gap_y = 45,								-- pixels between bottom or left border

    -- Size
    minimum_height = 200,						-- minimum height of window
	minimum_width = 265,						-- minimum width of window
	maximum_width = 265,						-- maximum width of window

	--Graphical
	border_inner_margin = 5, 					-- margin between border and text
	border_outer_margin = 5, 					-- margin between border and edge of window
	border_width = 0, 							-- border width in pixels
	default_bar_width = 260,					-- default is 0 - full width
	default_bar_height = 10,					-- default is 6
	default_gauge_height = 25,					-- default is 25
	default_gauge_width =40,					-- default is 40
	default_graph_height = 40,					-- default is 25
	default_graph_width = 153,					-- default is 0 - full width
	default_shade_color = '#000000',			-- default shading colour
	default_outline_color = '#000000',			-- default outline colour
	draw_borders = false,						-- draw borders around text
	draw_graph_borders = true,					-- draw borders around graphs
	draw_shades = false,						-- draw shades
	draw_outline = false,						-- draw outline
	stippled_borders = 0,						-- dashing the border

	--Textual
	format_human_readable = true,				-- KiB, MiB rather then number of bytes
	font  = 'Ubuntu:bold:size=10',  	-- the default font used
	font2 = 'Ubuntu:bold:size=30',         	-- font for the time
	font3 = 'Ubuntu:size=14',               	-- font for the date
	font4 = 'Ubuntu:bold:size=9',              -- font for the keybindings heading
	max_text_width = 0,							-- 0 will make sure line does not get broken if width too smal
	max_user_text = 16384,						-- max text in conky default 16384
	override_utf8_locale = true,				-- force UTF8 requires xft
	short_units = true,							-- shorten units from KiB to k
	top_name_width = 21,						-- width for $top name value default 15
	top_name_verbose = false,					-- If true, top name shows the full command line of  each  process - Default value is false.
	uppercase = false,							-- uppercase or not
	use_spacer = 'none',						-- adds spaces around certain objects to align - default none
	use_xft = true,								-- xft font - anti-aliased font
	xftalpha = 1,								-- alpha of the xft font - between 0-1

	--Windows
	own_window = true,							-- create your own window to draw
	own_window_argb_value = 255,			    -- real transparency - composite manager required 0-255
	own_window_argb_visual = true,				-- use ARGB - composite manager required
	own_window_class = 'Conky',					-- manually set the WM_CLASS name for use with xprop
	own_window_colour = '#2E3440',				-- set colour if own_window_transparent no
	own_window_transparent = false,				-- if own_window_argb_visual is true sets background opacity 0%
	own_window_title = 'awesome_conky',			-- set the name manually
	own_window_type = 'override',				-- if own_window true options are: normal/override/dock/desktop/panel
	own_window_hints = 'undecorated,below,above,sticky,skip_taskbar,skip_pager',  -- if own_window true - just hints - own_window_type sets it

	--Colors (Nord)
	color0 = '#81A1C1',
	color1 = '#D8DEE9',
	color2 = '#88C0D0',
	color3 = '#EBCB8B',
};

conky.text = [[
${alignc}${color0}${font2}${time %P %I:%M}${font}
${voffset 6}${alignc}${color0}${font3}${time %d %b. %Y}${font}${color}
${voffset 18}${goto 12}${color3}CPU${goto 50}$cpu%
${color2}${goto 12}${cpubar 8,254}
${voffset 5}${goto 12}$font${color1}${top name 1}$alignr$color${top cpu 1}%
${goto 12}${color1}${top name 2}$alignr$color${top cpu 2}%
${goto 12}${color1}${top name 3}$alignr$color${top cpu 3}%
${voffset 14}${goto 12}${color3}RAM${goto 50}$mem/$memmax
${color2}${goto 12}${membar 8,254}${color}
${goto 12}${voffset 5}${color1}${top_mem name 1}$alignr$color${top_mem mem_res 1}
${goto 12}${color1}${top_mem name 2}$alignr$color${top_mem mem_res 2}
${goto 12}${color1}${top_mem name 3}$alignr$color${top_mem mem_res 3}
${voffset 18}${color1}${alignc}${font4}AWESOME KEYBINDINGS${font}${color}
${color1}${hr}${color}
${color1}[S]+[SHIFT]+[1-9]${alignr}${color2}send window${color}
${color1}[S]+[1-9]${alignr}${color2}switch workspace${color}
${color1}[S]+a s${alignr}${color2}move between workplaces${color}
${color1}[S]+r${alignr}${color2}run prompt${color}
${color1}[S]+w${alignr}${color2}close window${color}
${color1}${hr}${color}
${color1}[S]+b b${alignr}${color2}Open Firefox
${color1}[S]+b c${alignr}${color2}Open Chromium
${color1}[S]+b e${alignr}${color2}Open Epiphany
${color1}${hr}${color}
${color1}[S]+e e${alignr}${color2}Open a GUI File Manager
${color1}[S]+e w${alignr}${color2}Open a TUI File Manager
${color1}${hr}${color}
${color1}[S]+x x${alignr}${color2}Open Terminal
${color1}[S]+x z${alignr}${color2}Open Neovim
${color1}${hr}${color}
${color1}[S]+[SHIFT]+w w${alignr}${color2}PowerOFF Menu${color}
${color1}[S]+[SHIFT]+w r${alignr}${color2}Restart Awesome${color}
${color1}[S]+[SHIFT]+w q${alignr}${color2}Quit Awesome${color}
]];


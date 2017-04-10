class xtermcolors {
	file { '/etc/X11/app-defaults/XTerm-color':
		content => template('xtermcolors/XTerm-color.erb')
	}
}

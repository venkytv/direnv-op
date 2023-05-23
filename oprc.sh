use_oprc() {
	[[ -f .oprc ]] || return 0
	direnv_load op run --env-file .oprc --no-masking -- direnv dump
}

watch_file .oprc

# vim: set filetype=sh :

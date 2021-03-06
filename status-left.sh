#!/usr/bin/env bash
#Print the status-left for tmux.
#
# The powerline root directory.
cwd=$(dirname $0)

# Source global configurations.
source "${cwd}/config.sh"

# Source lib functions.
source "${cwd}/lib.sh"

segments_path="${cwd}/${segments_dir}"

# Mute this statusbar?
mute_status_check "left"

# Segments

declare -A tmux_session_info
tmux_session_info+=(["script"]="${segments_path}/tmux_session_info.sh")
tmux_session_info+=(["foreground"]="colour148")
tmux_session_info+=(["background"]="colour237")
tmux_session_info+=(["separator"]="${separator_right_thin}")
tmux_session_info+=(["separator_fg"]="colour148")
register_segment "tmux_session_info"

declare -A hostname
hostname+=(["script"]="${segments_path}/hostname.sh")
hostname+=(["foreground"]="colour33")
hostname+=(["background"]="colour237")
hostname+=(["separator"]="${separator_right_thin}")
hostname+=(["separator_fg"]="colour148")
register_segment "hostname"

declare -A lan_ip
lan_ip+=(["script"]="${segments_path}/lan_ip.sh")
lan_ip+=(["foreground"]="colour1")
lan_ip+=(["background"]="colour237")
lan_ip+=(["separator"]="${separator_right_thin}")
lan_ip+=(["separator_fg"]="colour33")
register_segment "lan_ip"

declare -A wan_ip
wan_ip+=(["script"]="${segments_path}/wan_ip.sh")
wan_ip+=(["foreground"]="colour1")
wan_ip+=(["background"]="colour237")
wan_ip+=(["separator"]="${separator_right_thin}")
wan_ip+=(["separator_fg"]="colour240")
register_segment "wan_ip"

declare -A vcs_branch
vcs_branch+=(["script"]="${segments_path}/vcs_branch.sh")
vcs_branch+=(["foreground"]="colour29")
vcs_branch+=(["background"]="colour237")
vcs_branch+=(["separator"]="${separator_right_thin}")
#register_segment "vcs_branch"

declare -A vcs_compare
vcs_compare+=(["script"]="${segments_path}/vcs_compare.sh")
vcs_compare+=(["foreground"]="colour60")
vcs_compare+=(["background"]="colour237")
vcs_compare+=(["separator"]="${separator_right_thin}")
#register_segment "vcs_compare"

declare -A vcs_staged
vcs_staged+=(["script"]="${segments_path}/vcs_staged.sh")
vcs_staged+=(["foreground"]="colour64")
vcs_staged+=(["background"]="colour237")
vcs_staged+=(["separator"]="${separator_right_thin}")
#register_segment "vcs_staged"

declare -A vcs_modified
vcs_modified+=(["script"]="${segments_path}/vcs_modified.sh")
vcs_modified+=(["foreground"]="red")
vcs_modified+=(["background"]="colour237")
vcs_modified+=(["separator"]="${separator_right_thin}")
#register_segment "vcs_modified"

declare -A vcs_others
vcs_others+=(["script"]="${segments_path}/vcs_others.sh")
vcs_others+=(["foreground"]="colour245")
vcs_others+=(["background"]="colour237")
vcs_others+=(["separator"]="${separator_right_thin}")
#register_segment "vcs_others"

# Print the status line in the order of registration above.
print_status_line_left

exit 0

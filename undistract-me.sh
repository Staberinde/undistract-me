# Copyright (c) 2008-2012 undistract-me developers. See LICENSE for details.
#
# Check for interactive bash and that we haven't already been sourced.
[ -z "$BASH_VERSION" -o -z "$PS1" -o -n "$last_command_started_cache" ] && return

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
. "$DIR/long-running.bash"
notify_when_long_running_commands_finish_install

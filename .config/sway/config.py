#!/usr/bin/env python3.10

# This script requires i3ipc-python package (install it from a system package manager
# or pip).
# It makes inactive windows transparent. Use `transparency_val` variable to control
# transparency strength in range of 0 to 1 or use the command line argument -o.

import argparse
import i3ipc
import signal
import sys
import time
import subprocess
from functools import partial

def on_window_focus(inactive_opacity, ipc, event):
    global prev_focused
    global prev_workspace

    focused_workspace = ipc.get_tree().find_focused()

    if focused_workspace == None:
        return

    focused = event.container
    workspace = focused_workspace.workspace().num

    if focused.id != prev_focused.id:  # https://github.com/swaywm/sway/issues/2859
        focused.command("opacity 1")
        if workspace == prev_workspace:
            prev_focused.command("opacity " + inactive_opacity)
        prev_focused = focused
        prev_workspace = workspace


def remove_opacity(ipc):
    for workspace in ipc.get_tree().workspaces():
        for w in workspace:
            w.command("opacity 1")
    ipc.main_quit()
    sys.exit(0)

def deal_with_dock(ipc, event):
    for reply in ipc.get_workspaces():
        if reply.focused:
            workspace = ipc.get_tree().find_by_id(reply.ipc_data["id"]).workspace()
            if len(workspace.nodes) == 0:
                ipc.command('bar hidden_state show')
            else:
                ipc.command('bar hidden_state hide')

def working_clipboard(ipc, event):
    subprocess.run(["copyq", "select", "0"])

if __name__ == "__main__":
    transparency_val = "0.80"

    parser = argparse.ArgumentParser(
        description="This script allows you to set the transparency of unfocused windows in sway."
    )
    parser.add_argument(
        "--opacity",
        "-o",
        type=str,
        default=transparency_val,
        help="set opacity value in range 0...1",
    )
    args = parser.parse_args()

    ipc = i3ipc.Connection()
    prev_focused = None
    prev_workspace = ipc.get_tree().find_focused().workspace().num

    for window in ipc.get_tree():
        if window.focused:
            prev_focused = window
        else:
            window.command("opacity " + args.opacity)
    for sig in [signal.SIGINT, signal.SIGTERM]:
        signal.signal(sig, lambda signal, frame: remove_opacity(ipc))
    ipc.on("window::focus", partial(on_window_focus, args.opacity))
    # ipc.on("window::new", deal_with_dock)
    ipc.on("window::close", working_clipboard)
    # ipc.on("window::move", deal_with_dock)
    # ipc.on("workspace::move", deal_with_dock)
    # ipc.on("workspace", deal_with_dock)
    ipc.main()

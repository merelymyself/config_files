#!/usr/bin/env python

import i3ipc
import subprocess

def working_clipboard(ipc, event):
    subprocess.run(["copyq", "select", "0"])

if __name__ == "__main__":

    ipc = i3ipc.Connection()
    ipc.on("window::close", working_clipboard)
    ipc.main()

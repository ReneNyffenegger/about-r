#
#   Needs pywin32 from http://sourceforge.net/projects/pywin32/files/pywin32/
#

import win32api
import win32con
import win32gui

mywindows = []

win32gui.EnumWindows(lambda hwnd, dummy: mywindows.append(  (hwnd, win32gui.GetWindowText(hwnd)  )), None)

for hwnd, windowtext in mywindows:
    if windowtext.startswith('R Graphics'):
        win32gui.ShowWindow(hwnd, win32con.SW_MAXIMIZE) 


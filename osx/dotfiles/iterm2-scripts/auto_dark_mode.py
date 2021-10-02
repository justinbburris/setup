#!/usr/bin/env python3

import asyncio
import iterm2
import subprocess

async def main(connection):
    async with iterm2.VariableMonitor(connection, iterm2.VariableScopes.APP, "effectiveTheme", None) as mon:
        while True:
            # Block until theme changes
            theme = await mon.async_get()

            # Themes have space-delimited attributes, one of which will be light or dark.
            parts = theme.split(" ")

            bashCommand = '''
                unlink /Users/jbburris/.gitconfig
            '''
            process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
            output, error = process.communicate()

            if "dark" in parts:
                preset = await iterm2.ColorPreset.async_get(connection, "Solarized Dark")
                bashCommand = '''
                    ln -s /Users/jbburris/dev/personal/setup/osx/dotfiles/gitconfig.dark /Users/jbburris/.gitconfig
                '''
            else:
                preset = await iterm2.ColorPreset.async_get(connection, "Solarized Light")
                bashCommand = '''
                    ln -s /Users/jbburris/dev/personal/setup/osx/dotfiles/gitconfig.light /Users/jbburris/.gitconfig
                '''

            process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
            output, error = process.communicate()

            # Update the list of all profiles and iterate over them.
            profiles=await iterm2.PartialProfile.async_query(connection)
            for partial in profiles:
                # Fetch the full profile and then set the color preset in it.
                profile = await partial.async_get_full_profile()
                await profile.async_set_color_preset(preset)

iterm2.run_forever(main)

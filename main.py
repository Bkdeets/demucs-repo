

# TODOS
# import demucs
# Attemt calling the python api


import demucs.api
import demucs.separate
import demucs

separator = demucs.api.Separator()
origin, separated = separator.separate_audio_file("file.mp3")

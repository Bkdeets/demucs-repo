

# TODOS
# import demucs
# Attemt calling the python api

import ssl
import certifi

ssl._create_default_https_context = ssl._create_unverified_context
ssl._create_default_https_context().load_default_certs()

import demucs.api
import demucs.separate
import demucs

separator = demucs.api.Separator()
origin, separated = separator.separate_audio_file("file.mp3")

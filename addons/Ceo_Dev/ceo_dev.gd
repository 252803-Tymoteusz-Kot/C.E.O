@tool
extends EditorPlugin

func _enable_plugin() -> void:
	_enter_tree()
	pass

func _enter_tree() -> void:
	var java_sdk_path: String = ProjectSettings.globalize_path("res://C.E.O. Dev Essentials/tools/OpenJDK 17.0.2 Linux")
	var android_sdk_path: String = ProjectSettings.globalize_path("res://C.E.O. Dev Essentials/tools/Android SDK Linux")
	var debug_keystore_path: String = ProjectSettings.globalize_path("res://C.E.O. Dev Essentials/certificates/ceo_debug.keystore")
	var scrcpy_path: String = ProjectSettings.globalize_path("res://C.E.O. Dev Essentials/tools/scrcpy 3.3.4 Linux/scrcpy")

	var editor_settings: EditorSettings = EditorInterface.get_editor_settings()
	editor_settings.set_setting("export/android/java_sdk_path", java_sdk_path)
	editor_settings.set_setting("export/android/android_sdk_path", android_sdk_path)
	editor_settings.set_setting("export/android/debug_keystore", debug_keystore_path)
	editor_settings.set_setting("export/android/debug_keystore_pass", "ceodevdebug")
	editor_settings.set_setting("export/android/debug_keystore_user", "ceodevdebug")
	editor_settings.set_setting("export/android/scrcpy/path", scrcpy_path)
	pass


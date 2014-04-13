function sudo(cmd, args) {
		var  shell = WScript.CreateObject("Shell.Application")
				shell.ShellExecute(cmd, args, "", "runas")
}
if (WScript.Arguments.Count() > 0) {
		var args = "";
			for (var i = 1; i < WScript.Arguments.Count(); i++) {
						args += "\"" + WScript.Arguments(i) + "\" ";
							}
				sudo(WScript.Arguments(0), args );
} else {
		WScript.Echo("usage: sudo COMMAND [PARAMS]");
}


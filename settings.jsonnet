// This is a jsonnet file, to evaluate it on the command-line use
//
// jsonnet --ext-code-file old_settings=<path to old settings> <path to this file>
//
// JSonnet is a superset of JSON. Here we are using a minimal subset of
// JSonnet's extra freatures, see the "External Variables" and "Object
// Orientation" section of jsonnet tutorials (plus we use comments).
std.extVar('old_settings') + {
  "files.exclude": {
    "**/.*.cmd": true,
    "**/.*.d": true,
    "**/.*.S": true,
    "**/.tmp*": true,
    "**/*.tmp": true,
    "**/*.o": true,
    "**/*.a": true,
    "**/*.builtin": true,
    "**/*.order": true,
    "**/*.orig": true,
    "**/*.symvers": true,
    "**/*.modinfo": true,
    "**/*.map": true,
    "*.cache/**": true
  },
  "search.exclude": {
    "**/.*.cmd": true,
    "**/.*.d": true,
    "**/.*.S": true,
    "**/.tmp*": true,
    "**/*.tmp": true,
    "**/*.o": true,
    "**/*.a": true,
    "**/*.builtin": true,
    "**/*.order": true,
    "**/*.orig": true,
    "**/*.symvers": true,
    "**/*.modinfo": true,
    "**/*.map": true,
    "*.cache/**": true
  },
  "editor.detectIndentation": false,
  "editor.tabSize": 8,
  "editor.insertSpaces": false,
  "editor.rulers": [80],
  "files.associations": {
    "**/x86/**/*.S": "asm-intel-x86-generic",
    "**/arch/x86/entry/calling.h": "asm-intel-x86-generic",
    "**/arm64/**/*.S": "arm64",
    "*_defconfig": "kconfig"
  },
  "checkpatch.run": "onSave",
  "checkpatch.exclude": ["**/.vscode/autostart/*.c"],
  "git.alwaysSignOff": true,
  "C_Cpp.autocomplete": "disabled",
  "C_Cpp.formatting": "disabled",
  "C_Cpp.errorSquiggles": "disabled",
  "C_Cpp.intelliSenseEngine": "disabled",
  "checkpatch.checkpatchPath": "scripts/checkpatch.pl",
  "editor.renderWhitespace": "boundary",
  "gitlens.showWelcomeOnInstall": false,
  "gitlens.showWhatsNewAfterUpgrades": false,
  "gitlens.plusFeatures.enabled": false,
  "gitlens.mode.statusBar.enabled": false,
  "gitlens.statusBar.enabled": false,
  "gitlens.remotes": [
    {
      "regex": ".+:\\/\\/(git\\.kernel\\.org)\\/(.+)",
      "type": "Custom",
      "name": "kernel.org",
      "protocol": "https",
      "urls": {
        "repository": "https://git.kernel.org/${repoBase}/${repoPath}/tree",
        "branches": "https://git.kernel.org/${repoBase}/${repoPath}/refs",
        "branch": "https://git.kernel.org/${repoBase}/${repoPath}/log/?h=${branch}",
        "commit": "https://git.kernel.org/${repoBase}/${repoPath}/commit/?id=${id}",
        "file": "https://git.kernel.org/${repoBase}/${repoPath}/tree/${file}${line}",
        "fileInBranch": "https://git.kernel.org/${repoBase}/${repoPath}/tree/${file}?h=${branch}${line}",
        "fileInCommit": "https://git.kernel.org/${repoBase}/${repoPath}/tree/${file}?id=${id}${line}",
        "fileLine": "#n${line}",
        "fileRange": "#n${start}"
      }
    }
  ],
  "trailing-spaces.highlightCurrentLine": false,
  "trailing-spaces.deleteModifiedLinesOnly": true,
  "trailing-spaces.trimOnSave": true
}

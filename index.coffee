module.exports =
  activate: (state) ->
      atom.packages.onDidActivatePackage (pack) ->
        if pack.name == 'language-smarty'
          path = require 'path'
          atom.workspace.observeTextEditors (editor) ->
              if editor.getPath() && path.extname(editor.getPath()) == ".tpl" && path.extname(editor.getPath()) == ".smarty"
                editor.setGrammar(atom.grammars.grammarForScopeName('text.html.smarty'))

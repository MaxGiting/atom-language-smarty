module.exports =
  activate: (state) ->
      atom.packages.onDidActivatePackage (pack) ->
        if pack.name == 'language-smarty'
          path = require 'path'
          atom.workspace.observeTextEditors (editor) ->
              if path.extname(editor.getPath()) == ".tpl"
                editor.setGrammar(atom.grammars.grammarForScopeName('text.html.smarty'))

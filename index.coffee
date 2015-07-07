module.exports =
  activate: (state) ->
      atom.packages.activatePackage('language-smarty').then ->
          path = require 'path'
          atom.workspace.observeTextEditors (editor) ->
              if path.extname(editor.getPath()) == ".tpl"
                editor.setGrammar(atom.grammars.grammarForScopeName('text.html.smarty'))

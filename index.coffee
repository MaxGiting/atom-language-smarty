module.exports =
  activate: (state) ->
      path = require 'path'
      atom.workspace.observeTextEditors (editor) ->
          if path.extname(editor.getPath()) == ".tpl"
            editor.setGrammar(atom.grammars.grammarForScopeName('text.html.smarty'))

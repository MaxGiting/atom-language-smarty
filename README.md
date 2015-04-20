# language-smarty package

Smarty syntax highlighting and snippets. A direct convertion from Sublime Text

### Note
This package like other Smarty grammars will not automatically set the grammar to Smarty for .tpl files. You must edit 1 line in the default HTML grammar to allow this grammar to be assigned automatically. 
You may still manually change the grammar to Smarty and it will work.

### To get automatic file associate follow the below steps.
![remove tpl filetype](https://cloud.githubusercontent.com/assets/9828591/7239834/ce1b7524-e7a4-11e4-8683-52233d2348c4.gif)

1. Open Atom Settings -> Packages and search for language-html
2. Click on it to view in Atom
3. Click View Code and open /grammars/html.json
4. Remove "tpl", from the fileTypes array.
5. Reload atom and now tpl files will be associated with this Smarty Grammar


### Credit to thorade
Who's walkthrough made it possible for me to convert the Sublime Text grammar over to Atom
https://discuss.atom.io/t/convert-sublime-grammar-to-atom-grammar/14843

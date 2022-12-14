-- Name:         onejson
-- Description:  Yet another Atom One Dark clone
-- Author:       Th3Whit3Wolf <the.white.wolf.is.1337@gmail.com>
-- Maintainer:   Jason Woodland <me@jasonwoodland.com>
-- Website:      httpc.//github.com/jasonwoodland/onejson
-- License:      MIT

local Color, c, Group, g, s = require("colorbuddy").setup()
local b = s.bold
local i = s.italic
local n = s.inverse
local uc = s.undercurl
local ul = s.underline
local r = s.reverse
local sto = s.standout
local no = s.NONE
local v = vim

v.g.colors_name = 'onejson'

Color.new('mono_1', "#abb2bf")
Color.new('mono_2', "#7f8a9d")
Color.new('mono_3', "#6a7380")
Color.new('mono_4', "#4b5263")
Color.new('mono_5', "#3B4150")
Color.new('mono_6', "#2a2f3a")
Color.new('mono_7', "#242832")
Color.new('mono_8', "#1e2229")
Color.new('cyan', "#2bbac5")
Color.new('blue', "#61afef")
Color.new('magenta', "#e56fee")
Color.new('green', "#89ca78")
Color.new('red', "#e06c75")
Color.new('dark_red', "#be5046")
Color.new('yellow', "#e5c07b")
Color.new('dark_yellow', "#d19a66")

local italics = (function()
  if vim.g.onebuddy_disable_italics ~= true then
    return i
  else
    return no
  end
end)()

v.g.terminal_color_0  = c.mono_6:to_rgb()
v.g.terminal_color_8  = c.mono_3:to_rgb()
v.g.terminal_color_1  = c.dark_red:to_rgb()
v.g.terminal_color_9  = c.red:to_rgb()
v.g.terminal_color_2  = c.green:to_rgb()
v.g.terminal_color_10 = c.green:to_rgb()
v.g.terminal_color_3  = c.dark_yellow:to_rgb()
v.g.terminal_color_11 = c.yellow:to_rgb()
v.g.terminal_color_4  = c.blue:to_rgb()
v.g.terminal_color_12 = c.blue:to_rgb()
v.g.terminal_color_5  = c.magenta:to_rgb()
v.g.terminal_color_13 = c.magenta:to_rgb()
v.g.terminal_color_6  = c.cyan:to_rgb()
v.g.terminal_color_14 = c.cyan:to_rgb()
v.g.terminal_color_7  = c.mono_2:to_rgb()
v.g.terminal_color_15 = c.mono_1:to_rgb()

-- Vim
Group.new('Normal', c.mono_1, c.mono_7, no)
Group.new('bold', c.none, c.none, no)
Group.new('ColorColumn', c.none, c.none, no)
Group.new('Conceal', c.mono_4, c.mono_7, no)
Group.new('Cursor', c.none, c.none, no)
Group.new('CursorIM', c.none, c.none, no)
Group.new('CursorColumn', c.none, c.none, no)
Group.new('CursorLine', c.none, c.mono_6, no)
Group.new('Directory', c.blue, c.none, no)
Group.new('ErrorMsg', c.red, c.none, no)
Group.new('VertSplit', c.mono_8, c.none, no)
Group.new('Folded', c.mono_3, c.none, no)
Group.new('FoldColumn', c.mono_3, c.none, no)
Group.new('LineNr', c.mono_4, c.none, no)
Group.new('CursorLineNr', c.mono_1, c.none, no)
Group.new('MatchParen', c.none, c.mono_4, no)
Group.new('Italic', c.none, c.none, italics)
Group.new('ModeMsg', c.mono_1, c.none, no)
Group.new('MoreMsg', c.mono_1, c.none, no)
Group.new('NonText', c.mono_5, c.none, no)
Group.new('EndOfBuffer', c.mono_5, c.none, no)
Group.new('PMenu', c.none, c.mono_8, no)
Group.new('PMenuSel', c.none, c.mono_5, no)
Group.new('PMenuSbar', c.none, c.mono_8, no)
Group.new('PMenuThumb', c.none, c.mono_5, no)
Group.new('Question', c.blue, c.none, no)
Group.new('Space', c.none, c.mono_6, no)
Group.new('Search', c.none, c.mono_5, no)
Group.new('IncSearch', c.none, c.mono_3, no)
Group.new('SpecialKey', c.mono_1, c.none, no)
Group.new('Whitespace', c.none, c.none, no)
Group.new('StatusLine', c.mono_1, c.mono_8, no)
Group.new('StatusLineNC', c.mono_2, c.mono_8, no)
Group.new('TabLine', c.mono_2, c.mono_8, no)
Group.new('TabLineFill', c.mono_2, c.mono_8, no)
Group.new('TabLineSel', c.mono_1, c.none, no)
Group.new('Title', c.mono_1, c.none, no)
Group.new('Visual', c.none, c.mono_5, no)
Group.new('VisualNOS', c.none, c.mono_5, no)
Group.new('WarningMsg', c.red, c.none, no)
Group.new('TooLong', c.red, c.none, no)
Group.new('WildMenu', c.mono_1, c.mono_3, no)
Group.new('SignColumn', c.none, c.none, no)
Group.new('Special', c.blue, c.none, no)

-- Help
Group.new('helpCommand', c.yellow, c.none, no)
Group.new('helpExample', c.yellow, c.none, no)
Group.new('helpHeader', c.mono_1, c.none, no)
Group.new('helpSectionDelim', c.mono_3, c.none, no)

-- Syntax
Group.new('Comment', c.mono_3, c.none, italics)
Group.new('Constant', c.green, c.none, no)
Group.new('String', c.green, c.none, no)
Group.new('Character', c.green, c.none, no)
Group.new('Number', c.dark_yellow, c.none, no)
Group.new('Boolean', c.dark_yellow, c.none, no)
Group.new('Float', c.dark_yellow, c.none, no)
Group.new('Identifier', c.blue, c.none, no)
Group.new('Function', c.blue, c.none, no)
Group.new('Statement', c.magenta, c.none, no)
Group.new('Conditional', c.magenta, c.none, no)
Group.new('Repeat', c.magenta, c.none, no)
Group.new('Label', c.magenta, c.none, no)
Group.new('Operator', c.none, c.none, no)
Group.new('Keyword', c.red, c.none, no)
Group.new('Exception', c.magenta, c.none, no)
Group.new('PreProc', c.yellow, c.none, no)
Group.new('Include', c.blue, c.none, no)
Group.new('Define', c.magenta, c.none, no)
Group.new('Macro', c.magenta, c.none, no)
Group.new('PreCondit', c.yellow, c.none, no)
Group.new('Type', c.yellow, c.none, no)
Group.new('StorageClass', c.yellow, c.none, no)
Group.new('Structure', c.yellow, c.none, no)
Group.new('Typedef', c.yellow, c.none, no)
Group.new('Special', c.blue, c.none, no)
Group.new('SpecialChar', c.none, c.none, no)
Group.new('Tag', c.none, c.none, no)
Group.new('Delimiter', c.none, c.none, no)
Group.new('SpecialComment', c.none, c.none, no)
Group.new('Debug', c.none, c.none, no)
Group.new('Underlined', c.none, c.none, ul)
Group.new('Ignore', c.none, c.none, no)
Group.new('Error', c.red, c.mono_3, no)
Group.new('Todo', c.magenta, c.none, no)

-- Diff
Group.new('DiffAdd', c.green, c.mono_6, no)
Group.new('DiffChange', c.yellow, c.mono_6, no)
Group.new('DiffDelete', c.red, c.mono_6, no)
Group.new('DiffText', c.blue, c.mono_6, no)
Group.new('DiffAdded', c.green, c.mono_6, no)
Group.new('DiffFile', c.red, c.mono_6, no)
Group.new('DiffNewFile', c.green, c.mono_6, no)
Group.new('DiffLine', c.blue, c.mono_6, no)
Group.new('DiffRemoved', c.red, c.mono_6, no)

-- CSS/Sass
Group.new('cssAttrComma', c.magenta, c.none, no)
Group.new('cssAttributeSelector', c.green, c.none, no)
Group.new('cssBraces', c.mono_2, c.none, no)
Group.new('cssClassName', c.yellow, c.none, no)
Group.new('cssClassNameDot', c.yellow, c.none, no)
Group.new('cssDefinition', c.magenta, c.none, no)
Group.new('cssFontAttr', c.yellow, c.none, no)
Group.new('cssFontDescriptor', c.magenta, c.none, no)
Group.new('cssFunctionName', c.blue, c.none, no)
Group.new('cssIdentifier', c.blue, c.none, no)
Group.new('cssImportant', c.magenta, c.none, no)
Group.new('cssInclude', c.mono_1, c.none, no)
Group.new('cssIncludeKeyword', c.magenta, c.none, no)
Group.new('cssMediaType', c.yellow, c.none, no)
Group.new('cssProp', c.cyan, c.none, no)
Group.new('cssPseudoClassId', c.yellow, c.none, no)
Group.new('cssSelectorOp', c.magenta, c.none, no)
Group.new('cssSelectorOp2', c.magenta, c.none, no)
Group.new('cssStringQ', c.green, c.none, no)
Group.new('cssStringQQ', c.green, c.none, no)
Group.new('cssTagName', c.red, c.none, no)
Group.new('cssAttr', c.yellow, c.none, no)
Group.new('sassAmpersand', c.red, c.none, no)
Group.new('sassClass', c.yellow, c.none, no)
Group.new('sassControl', c.magenta, c.none, no)
Group.new('sassExtend', c.magenta, c.none, no)
Group.new('sassFor', c.mono_1, c.none, no)
Group.new('sassProperty', c.cyan, c.none, no)
Group.new('sassFunction', c.cyan, c.none, no)
Group.new('sassId', c.blue, c.none, no)
Group.new('sassInclude', c.magenta, c.none, no)
Group.new('sassMedia', c.magenta, c.none, no)
Group.new('sassMediaOperators', c.mono_1, c.none, no)
Group.new('sassMixin', c.magenta, c.none, no)
Group.new('sassMixinName', c.blue, c.none, no)
Group.new('sassMixing', c.magenta, c.none, no)
Group.new('scssSelectorName', c.yellow, c.none, no)

-- Git
Group.new('gitcommitSummary', c.blue, c.none, no)
Group.new('gitcommitComment', g.Comment, g.Comment, g.Comment)
Group.new('gitcommitUnmerged', c.green, c.none, no)
Group.new('gitcommitOnBranch', c.none, c.none, no)
Group.new('gitcommitBranch', c.magenta, c.none, no)
Group.new('gitcommitDiscardedType', c.red, c.none, no)
Group.new('gitcommitSelectedType', c.green, c.none, no)
Group.new('gitcommitHeader', c.none, c.none, no)
Group.new('gitcommitUntrackedFile', c.cyan, c.none, no)
Group.new('gitcommitDiscardedFile', c.red, c.none, no)
Group.new('gitcommitSelectedFile', c.green, c.none, no)
Group.new('gitcommitUnmergedFile', c.yellow, c.none, no)
Group.new('gitcommitFile', c.none, c.none, no)
Group.new('gitcommitNoBranch', g.gitcommitBranch, g.gitcommitBranch, g.gitcommitBranch)
Group.new('gitcommitUntracked', g.gitcommitComment, g.gitcommitComment, g.gitcommitComment)
Group.new('gitcommitDiscarded', g.gitcommitComment, g.gitcommitComment, g.gitcommitComment)
Group.new('gitcommitDiscardedArrow', g.gitcommitDiscardedFile, g.gitcommitDiscardedFile, g.gitcommitDiscardedFile)
Group.new('gitcommitSelectedArrow', g.gitcommitSelectedFile, g.gitcommitSelectedFile, g.gitcommitSelectedFile)
Group.new('gitcommitUnmergedArrow', g.gitcommitUnmergedFile, g.gitcommitUnmergedFile, g.gitcommitUnmergedFile)
Group.new('SignifySignAdd', c.green, c.none, no)
Group.new('SignifySignChange', c.mono_4, c.none, no)
Group.new('SignifySignDelete', c.red, c.none, no)
Group.new('GitGutterAdd', g.SignifySignAdd, g.SignifySignAdd, g.SignifySignAdd)
Group.new('GitGutterChange', g.SignifySignChange, g.SignifySignChange, g.SignifySignChange)
Group.new('GitGutterDelete', g.SignifySignDelete, g.SignifySignDelete, g.SignifySignDelete)
Group.new('diffAdded', c.green, c.none, no)
Group.new('diffRemoved', c.red, c.none, no)

-- Telescope
Group.new('TelescopeBorder', c.mono_2, c.mono_8, no)
Group.new('TelescopeNormal', c.none, c.mono_8, no)
Group.new('TelescopePreviewNormal', c.none, c.mono_8, no)
Group.new('TelescopePromptPrefix', c.blue, c.none, no)
Group.new('TelescopePreviewMessageFillChar', c.mono_5, c.none, no)
Group.new('TelescopeSelection', c.none, c.mono_6, no)
Group.new('TelescopeMatching', c.blue, c.none, no)

-- Terminal
Group.new('TermCursor', c.none, c.mono_2, no)
Group.new('TermCursorNC', c.none, c.mono_5, no)

-- Quickfix
Group.new('qfFileName', c.blue, c.none, no)
Group.new('qfLineNr', c.yellow, c.none, no)

-- Go
Group.new('goDeclaration', c.magenta, c.none, no)
Group.new('goField', c.red, c.none, no)
Group.new('goMethod', c.cyan, c.none, no)
Group.new('goType', c.magenta, c.none, no)
Group.new('goUnsignedInts', c.cyan, c.none, no)

-- Haskell highlighting
Group.new('haskellDeclKeyword', c.blue, c.none, no)
Group.new('haskellType', c.green, c.none, no)
Group.new('haskellWhere', c.red, c.none, no)
Group.new('haskellImportKeywords', c.blue, c.none, no)
Group.new('haskellOperators', c.red, c.none, no)
Group.new('haskellDelimiter', c.blue, c.none, no)
Group.new('haskellIdentifier', c.yellow, c.none, no)
Group.new('haskellKeyword', c.red, c.none, no)
Group.new('haskellNumber', c.cyan, c.none, no)
Group.new('haskellString', c.cyan, c.none, no)

-- HTML
Group.new('htmlArg', c.yellow, c.none, no)
Group.new('htmlTagName', c.red, c.none, no)
Group.new('htmlTagN', c.red, c.none, no)
Group.new('htmlSpecialTagName', c.red, c.none, no)
Group.new('htmlTag', c.mono_2, c.none, no)
Group.new('htmlEndTag', c.mono_2, c.none, no)
Group.new('MatchTag', c.none, c.mono_6, no)
Group.new('MatchWord', c.none, c.mono_6, no)

-- JavaScript
Group.new('coffeeString', c.green, c.none, no)
Group.new('javaScriptBraces', c.mono_2, c.none, no)
Group.new('javaScriptFunction', c.magenta, c.none, no)
Group.new('javaScriptIdentifier', c.magenta, c.none, no)
Group.new('javaScriptNull', c.yellow, c.none, no)
Group.new('javaScriptNumber', c.yellow, c.none, no)
Group.new('javaScriptRequire', c.cyan, c.none, no)
Group.new('javaScriptReserved', c.magenta, c.none, no)
-- httpc.//github.com/pangloss/vim-javascript
Group.new('jsArrowFunction', c.magenta, c.none, no)
Group.new('jsBraces', c.mono_2, c.none, no)
Group.new('jsClassBraces', c.mono_2, c.none, no)
Group.new('jsClassKeywords', c.magenta, c.none, no)
Group.new('jsDocParam', c.blue, c.none, no)
Group.new('jsDocTags', c.magenta, c.none, no)
Group.new('jsFuncBraces', c.mono_2, c.none, no)
Group.new('jsFuncCall', c.blue, c.none, no)
Group.new('jsFuncParens', c.mono_2, c.none, no)
Group.new('jsFunction', c.magenta, c.none, no)
Group.new('jsGlobalObjects', c.yellow, c.none, no)
Group.new('jsModuleWords', c.magenta, c.none, no)
Group.new('jsModules', c.magenta, c.none, no)
Group.new('jsNoise', c.mono_2, c.none, no)
Group.new('jsNull', c.yellow, c.none, no)
Group.new('jsOperator', c.magenta, c.none, no)
Group.new('jsParens', c.mono_2, c.none, no)
Group.new('jsStorageClass', c.magenta, c.none, no)
Group.new('jsTemplateBraces', c.dark_red, c.none, no)
Group.new('jsTemplateVar', c.green, c.none, no)
Group.new('jsThis', c.red, c.none, no)
Group.new('jsUndefined', c.yellow, c.none, no)
Group.new('jsObjectValue', c.blue, c.none, no)
Group.new('jsObjectKey', c.cyan, c.none, no)
Group.new('jsReturn', c.magenta, c.none, no)
-- httpc.//github.com/othree/yajs.vim
Group.new('javascriptArrowFunc', c.magenta, c.none, no)
Group.new('javascriptClassExtends', c.magenta, c.none, no)
Group.new('javascriptClassKeyword', c.magenta, c.none, no)
Group.new('javascriptDocNotation', c.magenta, c.none, no)
Group.new('javascriptDocParamName', c.blue, c.none, no)
Group.new('javascriptDocTags', c.magenta, c.none, no)
Group.new('javascriptEndColons', c.mono_3, c.none, no)
Group.new('javascriptExport', c.magenta, c.none, no)
Group.new('javascriptFuncArg', c.mono_1, c.none, no)
Group.new('javascriptFuncKeyword', c.magenta, c.none, no)
Group.new('javascriptIdentifier', c.red, c.none, no)
Group.new('javascriptImport', c.magenta, c.none, no)
Group.new('javascriptObjectLabel', c.mono_1, c.none, no)
Group.new('javascriptOpSymbol', c.cyan, c.none, no)
Group.new('javascriptOpSymbols', c.cyan, c.none, no)
Group.new('javascriptPropertyName', c.green, c.none, no)
Group.new('javascriptTemplateSB', c.dark_red, c.none, no)
Group.new('javascriptVariable', c.magenta, c.none, no)

-- JSON
Group.new('jsonCommentError', c.mono_1, c.none, no)
Group.new('jsonKeyword', c.red, c.none, no)
Group.new('jsonQuote', c.mono_3, c.none, no)
Group.new('jsonTrailingCommaError', c.red, c.none, r)
Group.new('jsonMissingCommaError', c.red, c.none, r)
Group.new('jsonNoQuotesError', c.red, c.none, r)
Group.new('jsonNumError', c.red, c.none, r)
Group.new('jsonString', c.green, c.none, no)
Group.new('jsonBoolean', c.magenta, c.none, no)
Group.new('jsonNumber', c.yellow, c.none, no)
Group.new('jsonStringSQError', c.red, c.none, r)
Group.new('jsonSemicolonError', c.red, c.none, r)

-- Markdown
Group.new('markdownUrl', c.mono_3, c.none, no)
Group.new('markdownBold', c.yellow, c.none, no)
Group.new('markdownItalic', c.yellow, c.none, no)
Group.new('markdownCode', c.green, c.none, no)
Group.new('markdownCodeBlock', c.red, c.none, no)
Group.new('markdownCodeDelimiter', c.green, c.none, no)
Group.new('markdownHeadingDelimiter', c.dark_red, c.none, no)
Group.new('markdownH1', c.red, c.none, no)
Group.new('markdownH2', c.red, c.none, no)
Group.new('markdownH3', c.red, c.none, no)
Group.new('markdownH3', c.red, c.none, no)
Group.new('markdownH4', c.red, c.none, no)
Group.new('markdownH5', c.red, c.none, no)
Group.new('markdownH6', c.red, c.none, no)
Group.new('markdownListMarker', c.red, c.none, no)

-- Python
Group.new('pythonImport', c.magenta, c.none, no)
Group.new('pythonBuiltin', c.cyan, c.none, no)
Group.new('pythonStatement', c.magenta, c.none, no)
Group.new('pythonParam', c.yellow, c.none, no)
Group.new('pythonEscape', c.red, c.none, no)
Group.new('pythonSelf', c.mono_2, c.none, italics)
Group.new('pythonClass', c.blue, c.none, no)
Group.new('pythonOperator', c.magenta, c.none, no)
Group.new('pythonEscape', c.red, c.none, no)
Group.new('pythonFunction', c.blue, c.none, no)
Group.new('pythonKeyword', c.blue, c.none, no)
Group.new('pythonModule', c.magenta, c.none, no)
Group.new('pythonStringDelimiter', c.green, c.none, no)
Group.new('pythonSymbol', c.cyan, c.none, no)

-- Spelling
Group.new('SpellBad', c.none, c.none, uc, c.red)
Group.new('SpellLocal', c.yellow, c.none, no)
Group.new('SpellCap', c.yellow, c.none, no)
Group.new('SpellRare', c.yellow, c.none, no)

-- Vimscript
Group.new('vimCommand', c.magenta, c.none, no)
Group.new('vimIsCommand', c.magenta, c.none, no)
Group.new('vimCommentTitle', c.mono_3, c.none, no)
Group.new('vimFunction', c.cyan, c.none, no)
Group.new('vimFuncName', c.magenta, c.none, no)
Group.new('vimHighlight', c.blue, c.none, no)
Group.new('vimLineComment', c.mono_3, c.none, italics)
Group.new('vimParenSep', c.mono_2, c.none, no)
Group.new('vimSep', c.mono_2, c.none, no)
Group.new('vimUserFunc', c.cyan, c.none, no)
Group.new('vimVar', c.blue, c.none, no)
Group.new('vimLet', c.magenta, c.none, no)

-- XML
Group.new('xmlAttrib', c.yellow, c.none, no)
Group.new('xmlEndTag', c.red, c.none, no)
Group.new('xmlTag', c.red, c.none, no)
Group.new('xmlTagName', c.red, c.none, no)

-- ZSH
Group.new('zshCommands', c.mono_1, c.none, no)
Group.new('zshDeref', c.red, c.none, no)
Group.new('zshShortDeref', c.red, c.none, no)
Group.new('zshFunction', c.cyan, c.none, no)
Group.new('zshKeyword', c.magenta, c.none, no)
Group.new('zshSubst', c.red, c.none, no)
Group.new('zshSubstDelim', c.mono_3, c.none, no)
Group.new('zshTypes', c.magenta, c.none, no)
Group.new('zshVariableDef', c.yellow, c.none, no)

-- Rust
Group.new('rustExternCrate', c.red, c.none, no)
Group.new('rustIdentifier', c.blue, c.none, no)
Group.new('rustDeriveTrait', c.green, c.none, no)
Group.new('SpecialComment', c.mono_3, c.none, no)
Group.new('rustCommentLine', c.mono_3, c.none, no)
Group.new('rustCommentLineDoc', c.mono_3, c.none, no)
Group.new('rustCommentLineDocError', c.mono_3, c.none, no)
Group.new('rustCommentBlock', c.mono_3, c.none, no)
Group.new('rustCommentBlockDoc', c.mono_3, c.none, no)
Group.new('rustCommentBlockDocError', c.mono_3, c.none, no)

-- Man
Group.new('manTitle', g.String, g.String, g.String)
Group.new('manFooter', c.mono_3, c.none, no)

-- LSP
Group.new('LspDiagnosticsDefaultError', c.red, c.none, no)
Group.new('LspDiagnosticsDefaultWarning', c.yellow, c.none, no)
Group.new('LspDiagnosticsDefaultInformation', c.cyan, c.none, no)
Group.new('LspDiagnosticsDefaultHint', c.cyan, c.none, no)
Group.new('LspDiagnosticsVirtualTextError', c.red, c.none, no)
Group.new('LspDiagnosticsVirtualTextWarning', c.yellow, c.none, no)
Group.new('LspDiagnosticsVirtualTextInformation', c.cyan, c.none, no)
Group.new('LspDiagnosticsVirtualTextHint', c.green, c.none, no)
Group.new('LspDiagnosticsUnderlineError', c.red, c.none, uc)
Group.new('LspDiagnosticsUnderlineWarning', c.yellow, c.none, uc)
Group.new('LspDiagnosticsUnderlineInformation', c.cyan, c.none, uc)
Group.new('LspDiagnosticsUnderlineHint', c.green, c.none, uc)
Group.new('LspDiagnosticsFloatingError', c.red, g.pmenu, ul)
Group.new('LspDiagnosticsFloatingWarning', c.yellow, g.pmenu, ul)
Group.new('LspDiagnosticsFloatingInformation', c.cyan, g.pmenu, ul)
Group.new('LspDiagnosticsFloatingHint', c.green, g.pmenu, ul)
Group.new('LspDiagnosticsSignError', c.red, c.none, no)
Group.new('LspDiagnosticsSignWarning', c.yellow, c.none, no)
Group.new('LspDiagnosticsSignInformation', c.cyan, c.none, no)
Group.new('LspDiagnosticsSignHint', c.green, c.none, no)
Group.new('DiagnosticUnderlineError', c.none, c.none, uc, c.red)
Group.new('DiagnosticUnderlineWarn', c.none, c.none, uc, c.yellow)
Group.new('DiagnosticUnderlineInfo', c.none, c.none, uc, c.cyan)
Group.new('DiagnosticUnderlineHint', c.none, c.none, uc, c.mono_1)

-----------------------------
-- TreeSitter Highlighting --
-----------------------------
Group.new('TSAnnotation', c.yellow, c.none, no)
Group.new('TSAttribute', c.cyan, c.none, no)
Group.new('TSBoolean', c.dark_yellow, c.none, no)
Group.new('TSCharacter', c.green, c.none, no)
Group.new('TSConditional', c.magenta, c.none, no)
Group.new('TSConstant', c.blue, c.none, no)
Group.new('TSConstBuiltin', c.yellow, c.none, no)
Group.new('TSConstMacro', c.cyan, c.none, no)
Group.new('TSConstructor', c.cyan, c.none, no)
Group.new('TSEmphasis', c.yellow, c.none, no)
Group.new('TSError', c.red, c.none, no)
Group.new('TSException', c.magenta, c.none, no)
Group.new('TSField', c.red, c.none, no)
Group.new('TSFloat', c.green, c.none, no)
Group.new('TSFunction', c.blue, c.none, no)
Group.new('TSFuncBuiltin', c.blue, c.none, no)
Group.new('TSFuncMacro', c.yellow, c.none, no)
Group.new('TSInclude', c.magenta, c.none, no)
Group.new('TSKeyword', c.magenta, c.none, no)
Group.new('TSKeywordFunction', c.magenta, c.none, no)
Group.new('TSKeywordOperator', c.magenta, c.none, no)
Group.new('TSLabel', c.blue, c.none, no)
Group.new('TSLiteral', c.yellow, c.none, no)
Group.new('TSMethod', c.blue, c.none, no)
Group.new('TSNamespace', c.magenta, c.none, no)
Group.new('TSNumber', c.dark_yellow, c.none, no)
Group.new('TSOperator', c.cyan, c.none, no)
Group.new('TSParameter', c.cyan, c.none, no)
Group.new('TSParameterReference', c.cyan, c.none, no)
Group.new('TSProperty', c.red, c.none, no)
Group.new('TSPunctBracket', c.mono_1, c.none, no)
Group.new('TSPunctDelimiter', c.mono_1, c.none, no)
Group.new('TSPunctSpecial', c.mono_1, c.none, no)
Group.new('TSRepeat', c.magenta, c.none, no)
Group.new('TSString', c.green, c.none, no)
Group.new('TSStringEscape', c.cyan, c.none, no)
Group.new('TSStringRegex', c.green, c.none, no)
Group.new('TSStrong', c.yellow, c.none, no)
Group.new('TSStructure', c.yellow, c.none, no)
Group.new('TSTag', c.red, c.none, no)
Group.new('TSTagDelimiter', c.mono_3, c.none, no)
Group.new('TSText', c.yellow, c.none, no)
Group.new('TSTitle', c.yellow, c.none, no)
Group.new('TSType', c.blue, c.none, no)
Group.new('TSTypeBuiltin', c.blue, c.none, no)
Group.new('TSUnderline', c.yellow, c.none, no)
Group.new('TSURI', c.yellow, c.none, no)
Group.new('TSVariable', c.cyan, c.none, no)
Group.new('TSVariableBuiltin', c.yellow, c.none, no)

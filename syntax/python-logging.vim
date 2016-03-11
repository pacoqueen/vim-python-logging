" Vim plugin to color logs generated by python-logging
" Author:      Adrien Vergé
" Last Change: 2015-02-14
" License:     GPLv3
"
" Example log line:
" 2015-02-13 10:46:48.550 6608 WARNING heat.common.keystoneclient [-] message
" ^---------------------^ ^--^ ^-----^ ^------------------------------------^
"          date           pid   label                message
" Actual sample:
" 2015-02-13 10:46:48,550 WARNING : heat.common.keystoneclient [-] message
" ^---------------------^ ^-----^   ^------------------------------------^
"          date            label                message

syntax match PythonLoggingDate /^\d\{4}-\d\d-\d\d \d\d:\d\d:\d\d\(,\d\+\)\?/
syntax match PythonLoggingPid /\%(^\S\+\s\S\+\s\)\@<=\S\+/
syntax match PythonLoggingLblDebug /\%(^\(\S\+\s\)\{3}\)\@<=DEBUG\s/
syntax match PythonLoggingLblInfo /\%(^\(\S\+\s\)\{3}\)\@<=INFO\s/
syntax match PythonLoggingLblWarning /\%(^\(\S\+\s\)\{3}\)\@<=WARN\(ING\)\?\s/
syntax match PythonLoggingLblError /\%(^\(\S\+\s\)\{3}\)\@<=ERROR\|CRITICAL\s/
syntax match PythonLoggingLblTrace /\%(^\(\S\+\s\)\{3}\)\@<=TRACE\s/
syntax match PythonLoggingMsgDebug /\%(^\(\S\+\s\)\{3}DEBUG\s\)\@<=.*/
syntax match PythonLoggingMsgInfo /\%(^\(\S\+\s\)\{3}INFO\s\)\@<=.*/
syntax match PythonLoggingMsgWarning /\%(^\(\S\+\s\)\{3}WARN\(ING\)\?\s\)\@<=.*/
syntax match PythonLoggingMsgError /\%(^\(\S\+\s\)\{3}ERROR\|CRITICAL\s\)\@<=.*/
syntax match PythonLoggingMsgTrace /\%(^\(\S\+\s\)\{3}TRACE\s\)\@<=.*/

highlight def link PythonLoggingDate Comment
highlight def link PythonLoggingPid Special
highlight def PythonLoggingLblDebug ctermfg=29 cterm=bold
highlight def PythonLoggingMsgDebug ctermfg=23
highlight def PythonLoggingLblInfo ctermfg=15 cterm=bold
highlight def PythonLoggingMsgInfo ctermfg=7
highlight def PythonLoggingLblWarning ctermfg=172 cterm=bold
highlight def PythonLoggingMsgWarning ctermfg=130
highlight def PythonLoggingLblError ctermfg=1 cterm=bold
highlight def PythonLoggingMsgError ctermfg=160
highlight def PythonLoggingLblTrace ctermfg=88 cterm=bold
highlight def PythonLoggingMsgTrace ctermfg=88

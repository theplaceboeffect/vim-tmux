" Vim syntax file
" Language: tmux(1) configuration file
" Maintainer: Tiago Cunha <me@tiagocunha.org>
" Last Change: $Date: 2010-07-27 18:29:07 $
" License: This file is placed in the public domain.

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

setlocal iskeyword+=-
syntax case match

syn keyword tmuxAction	any current none
syn keyword tmuxBoolean	off on

syn keyword tmuxCmds detach[-client] ls list-sessions neww new-window
syn keyword tmuxCmds bind[-key] unbind[-key] prev[ious-window] last[-window]
syn keyword tmuxCmds lsk list-keys set[-option] renamew rename-window selectw
syn keyword tmuxCmds select-window lsw list-windows attach[-session]
syn keyword tmuxCmds send-prefix refresh[-client] killw kill-window lsc
syn keyword tmuxCmds list-clients linkw link-window unlinkw unlink-window
syn keyword tmuxCmds next[-window] send[-keys] swapw swap-window
syn keyword tmuxCmds rename[-session] kill-session switchc switch-client
syn keyword tmuxCmds has[-session] copy-mode pasteb paste-buffer
syn keyword tmuxCmds new[-session] start[-server] kill-server setw
syn keyword tmuxCmds set-window-option show[-options] showw show-window-options
syn keyword tmuxCmds command-prompt setb set-buffer showb show-buffer lsb
syn keyword tmuxCmds list-buffers deleteb delete-buffer lscm list-commands
syn keyword tmuxCmds movew move-window respawnw respawn-window
syn keyword tmuxCmds source[-file] info server-info clock-mode lock[-server]
syn keyword tmuxCmds saveb save-buffer killp
syn keyword tmuxCmds kill-pane resizep resize-pane selectp select-pane swapp
syn keyword tmuxCmds swap-pane splitw split-window choose-session
syn keyword tmuxCmds choose-window loadb load-buffer copyb copy-buffer suspendc
syn keyword tmuxCmds suspend-client findw find-window breakp break-pane nextl
syn keyword tmuxCmds next-layout rotatew rotate-window confirm[-before]
syn keyword tmuxCmds clearhist clear-history selectl select-layout if[-shell]
syn keyword tmuxCmds display[-message] setenv set-environment showenv
syn keyword tmuxCmds show-environment choose-client displayp display-panes
syn keyword tmuxCmds run[-shell] lockc lock-client locks lock-session lsp
syn keyword tmuxCmds list-panes pipep pipe-pane showmsgs show-messages capturep
syn keyword tmuxCmds capture-pane joinp join-pane choose-buffer

syn keyword tmuxOptsSet prefix status status-fg status-bg bell-action
syn keyword tmuxOptsSet default-command history-limit status-left status-right
syn keyword tmuxOptsSet status-interval set-titles display-time buffer-limit
syn keyword tmuxOptsSet status-left-length status-right-length
syn keyword tmuxOptsSet message-[command-]bg lock-after-time default-path
syn keyword tmuxOptsSet message-[command-]attr status-attr set-remain-on-exit
syn keyword tmuxOptsSet status-utf8 default-terminal visual-activity repeat-time
syn keyword tmuxOptsSet visual-bell visual-content status-justify status-keys
syn keyword tmuxOptsSet terminal-overrides status-left-attr status-left-bg
syn keyword tmuxOptsSet status-left-fg status-right-attr status-right-bg
syn keyword tmuxOptsSet status-right-fg update-environment base-index
syn keyword tmuxOptsSet display-panes-colour display-panes-time default-shell
syn keyword tmuxOptsSet set-titles-string lock-command lock-server
syn keyword tmuxOptsSet mouse-select-pane message-limit quiet escape-time
syn keyword tmuxOptsSet pane-active-border-bg pane-active-border-fg
syn keyword tmuxOptsSet pane-border-bg pane-border-fg message-[command-]fg
syn keyword tmuxOptsSet display-panes-active-colour alternate-screen
syn keyword tmuxOptsSet detach-on-destroy word-separators
syn keyword tmuxOptsSet destroy-unattached exit-unattached set-clipboard
syn keyword tmuxOptsSet bell-on-alert mouse-select-window mouse-utf8

syn keyword tmuxOptsSetw monitor-activity aggressive-resize force-width
syn keyword tmuxOptsSetw force-height remain-on-exit uft8 mode-fg mode-bg
syn keyword tmuxOptsSetw mode-keys clock-mode-colour clock-mode-style
syn keyword tmuxOptsSetw xterm-keys mode-attr window-status-attr
syn keyword tmuxOptsSetw window-status-bg window-status-fg automatic-rename
syn keyword tmuxOptsSetw main-pane-width main-pane-height monitor-content
syn keyword tmuxOptsSetw window-status-current-attr window-status-current-bg
syn keyword tmuxOptsSetw window-status-current-fg mode-mouse synchronize-panes
syn keyword tmuxOptsSetw window-status-format window-status-current-format
syn keyword tmuxOptsSetw window-status-alert-attr
syn keyword tmuxOptsSetw window-status-alert-bg window-status-alert-fg
syn keyword tmuxOptsSetw pane-base-index other-pane-height other-pane-width

syn keyword tmuxTodo FIXME NOTE TODO XXX contained

syn match tmuxKey		/\(C-\|M-\|\^\)\+\S\+/	display
syn match tmuxNumber 		/\d\+/			display
syn match tmuxOptions		/\s-\a\+/		display
syn match tmuxVariable		/\w\+=/			display
syn match tmuxVariableExpansion	/\${\=\w\+}\=/		display

syn region tmuxComment	start=/#/ end=/$/ contains=tmuxTodo display oneline
syn region tmuxString	start=/"/ end=/"/ display oneline
syn region tmuxString	start=/'/ end=/'/ display oneline

hi def link tmuxAction			Boolean
hi def link tmuxBoolean			Boolean
hi def link tmuxCmds			Keyword
hi def link tmuxComment			Comment
hi def link tmuxKey			Special
hi def link tmuxNumber			Number
hi def link tmuxOptions			Identifier
hi def link tmuxOptsSet			Function
hi def link tmuxOptsSetw		Function
hi def link tmuxString			String
hi def link tmuxTodo			Todo
hi def link tmuxVariable		Constant
hi def link tmuxVariableExpansion	Constant


syn match tcol0 /colour0/
hi tcol0 guifg=0 ctermfg=0
syn match tcol1 /colour1/
hi tcol1 guifg=1 ctermfg=1
syn match tcol2 /colour2/
hi tcol2 guifg=2 ctermfg=2
syn match tcol3 /colour3/
hi tcol3 guifg=3 ctermfg=3
syn match tcol4 /colour4/
hi tcol4 guifg=4 ctermfg=4
syn match tcol5 /colour5/
hi tcol5 guifg=5 ctermfg=5
syn match tcol6 /colour6/
hi tcol6 guifg=6 ctermfg=6
syn match tcol7 /colour7/
hi tcol7 guifg=7 ctermfg=7
syn match tcol8 /colour8/
hi tcol8 guifg=8 ctermfg=8
syn match tcol9 /colour9/
hi tcol9 guifg=9 ctermfg=9
syn match tcol10 /colour10/
hi tcol10 guifg=10 ctermfg=10
syn match tcol11 /colour11/
hi tcol11 guifg=11 ctermfg=11
syn match tcol12 /colour12/
hi tcol12 guifg=12 ctermfg=12
syn match tcol13 /colour13/
hi tcol13 guifg=13 ctermfg=13
syn match tcol14 /colour14/
hi tcol14 guifg=14 ctermfg=14
syn match tcol15 /colour15/
hi tcol15 guifg=15 ctermfg=15
syn match tcol16 /colour16/
hi tcol16 guifg=16 ctermfg=16
syn match tcol17 /colour17/
hi tcol17 guifg=17 ctermfg=17
syn match tcol18 /colour18/
hi tcol18 guifg=18 ctermfg=18
syn match tcol19 /colour19/
hi tcol19 guifg=19 ctermfg=19
syn match tcol20 /colour20/
hi tcol20 guifg=20 ctermfg=20
syn match tcol21 /colour21/
hi tcol21 guifg=21 ctermfg=21
syn match tcol22 /colour22/
hi tcol22 guifg=22 ctermfg=22
syn match tcol23 /colour23/
hi tcol23 guifg=23 ctermfg=23
syn match tcol24 /colour24/
hi tcol24 guifg=24 ctermfg=24
syn match tcol25 /colour25/
hi tcol25 guifg=25 ctermfg=25
syn match tcol26 /colour26/
hi tcol26 guifg=26 ctermfg=26
syn match tcol27 /colour27/
hi tcol27 guifg=27 ctermfg=27
syn match tcol28 /colour28/
hi tcol28 guifg=28 ctermfg=28
syn match tcol29 /colour29/
hi tcol29 guifg=29 ctermfg=29
syn match tcol30 /colour30/
hi tcol30 guifg=30 ctermfg=30
syn match tcol31 /colour31/
hi tcol31 guifg=31 ctermfg=31
syn match tcol32 /colour32/
hi tcol32 guifg=32 ctermfg=32
syn match tcol33 /colour33/
hi tcol33 guifg=33 ctermfg=33
syn match tcol34 /colour34/
hi tcol34 guifg=34 ctermfg=34
syn match tcol35 /colour35/
hi tcol35 guifg=35 ctermfg=35
syn match tcol36 /colour36/
hi tcol36 guifg=36 ctermfg=36
syn match tcol37 /colour37/
hi tcol37 guifg=37 ctermfg=37
syn match tcol38 /colour38/
hi tcol38 guifg=38 ctermfg=38
syn match tcol39 /colour39/
hi tcol39 guifg=39 ctermfg=39
syn match tcol40 /colour40/
hi tcol40 guifg=40 ctermfg=40
syn match tcol41 /colour41/
hi tcol41 guifg=41 ctermfg=41
syn match tcol42 /colour42/
hi tcol42 guifg=42 ctermfg=42
syn match tcol43 /colour43/
hi tcol43 guifg=43 ctermfg=43
syn match tcol44 /colour44/
hi tcol44 guifg=44 ctermfg=44
syn match tcol45 /colour45/
hi tcol45 guifg=45 ctermfg=45
syn match tcol46 /colour46/
hi tcol46 guifg=46 ctermfg=46
syn match tcol47 /colour47/
hi tcol47 guifg=47 ctermfg=47
syn match tcol48 /colour48/
hi tcol48 guifg=48 ctermfg=48
syn match tcol49 /colour49/
hi tcol49 guifg=49 ctermfg=49
syn match tcol50 /colour50/
hi tcol50 guifg=50 ctermfg=50
syn match tcol51 /colour51/
hi tcol51 guifg=51 ctermfg=51
syn match tcol52 /colour52/
hi tcol52 guifg=52 ctermfg=52
syn match tcol53 /colour53/
hi tcol53 guifg=53 ctermfg=53
syn match tcol54 /colour54/
hi tcol54 guifg=54 ctermfg=54
syn match tcol55 /colour55/
hi tcol55 guifg=55 ctermfg=55
syn match tcol56 /colour56/
hi tcol56 guifg=56 ctermfg=56
syn match tcol57 /colour57/
hi tcol57 guifg=57 ctermfg=57
syn match tcol58 /colour58/
hi tcol58 guifg=58 ctermfg=58
syn match tcol59 /colour59/
hi tcol59 guifg=59 ctermfg=59
syn match tcol60 /colour60/
hi tcol60 guifg=60 ctermfg=60
syn match tcol61 /colour61/
hi tcol61 guifg=61 ctermfg=61
syn match tcol62 /colour62/
hi tcol62 guifg=62 ctermfg=62
syn match tcol63 /colour63/
hi tcol63 guifg=63 ctermfg=63
syn match tcol64 /colour64/
hi tcol64 guifg=64 ctermfg=64
syn match tcol65 /colour65/
hi tcol65 guifg=65 ctermfg=65
syn match tcol66 /colour66/
hi tcol66 guifg=66 ctermfg=66
syn match tcol67 /colour67/
hi tcol67 guifg=67 ctermfg=67
syn match tcol68 /colour68/
hi tcol68 guifg=68 ctermfg=68
syn match tcol69 /colour69/
hi tcol69 guifg=69 ctermfg=69
syn match tcol70 /colour70/
hi tcol70 guifg=70 ctermfg=70
syn match tcol71 /colour71/
hi tcol71 guifg=71 ctermfg=71
syn match tcol72 /colour72/
hi tcol72 guifg=72 ctermfg=72
syn match tcol73 /colour73/
hi tcol73 guifg=73 ctermfg=73
syn match tcol74 /colour74/
hi tcol74 guifg=74 ctermfg=74
syn match tcol75 /colour75/
hi tcol75 guifg=75 ctermfg=75
syn match tcol76 /colour76/
hi tcol76 guifg=76 ctermfg=76
syn match tcol77 /colour77/
hi tcol77 guifg=77 ctermfg=77
syn match tcol78 /colour78/
hi tcol78 guifg=78 ctermfg=78
syn match tcol79 /colour79/
hi tcol79 guifg=79 ctermfg=79
syn match tcol80 /colour80/
hi tcol80 guifg=80 ctermfg=80
syn match tcol81 /colour81/
hi tcol81 guifg=81 ctermfg=81
syn match tcol82 /colour82/
hi tcol82 guifg=82 ctermfg=82
syn match tcol83 /colour83/
hi tcol83 guifg=83 ctermfg=83
syn match tcol84 /colour84/
hi tcol84 guifg=84 ctermfg=84
syn match tcol85 /colour85/
hi tcol85 guifg=85 ctermfg=85
syn match tcol86 /colour86/
hi tcol86 guifg=86 ctermfg=86
syn match tcol87 /colour87/
hi tcol87 guifg=87 ctermfg=87
syn match tcol88 /colour88/
hi tcol88 guifg=88 ctermfg=88
syn match tcol89 /colour89/
hi tcol89 guifg=89 ctermfg=89
syn match tcol90 /colour90/
hi tcol90 guifg=90 ctermfg=90
syn match tcol91 /colour91/
hi tcol91 guifg=91 ctermfg=91
syn match tcol92 /colour92/
hi tcol92 guifg=92 ctermfg=92
syn match tcol93 /colour93/
hi tcol93 guifg=93 ctermfg=93
syn match tcol94 /colour94/
hi tcol94 guifg=94 ctermfg=94
syn match tcol95 /colour95/
hi tcol95 guifg=95 ctermfg=95
syn match tcol96 /colour96/
hi tcol96 guifg=96 ctermfg=96
syn match tcol97 /colour97/
hi tcol97 guifg=97 ctermfg=97
syn match tcol98 /colour98/
hi tcol98 guifg=98 ctermfg=98
syn match tcol99 /colour99/
hi tcol99 guifg=99 ctermfg=99
syn match tcol100 /colour100/
hi tcol100 guifg=100 ctermfg=100
syn match tcol101 /colour101/
hi tcol101 guifg=101 ctermfg=101
syn match tcol102 /colour102/
hi tcol102 guifg=102 ctermfg=102
syn match tcol103 /colour103/
hi tcol103 guifg=103 ctermfg=103
syn match tcol104 /colour104/
hi tcol104 guifg=104 ctermfg=104
syn match tcol105 /colour105/
hi tcol105 guifg=105 ctermfg=105
syn match tcol106 /colour106/
hi tcol106 guifg=106 ctermfg=106
syn match tcol107 /colour107/
hi tcol107 guifg=107 ctermfg=107
syn match tcol108 /colour108/
hi tcol108 guifg=108 ctermfg=108
syn match tcol109 /colour109/
hi tcol109 guifg=109 ctermfg=109
syn match tcol110 /colour110/
hi tcol110 guifg=110 ctermfg=110
syn match tcol111 /colour111/
hi tcol111 guifg=111 ctermfg=111
syn match tcol112 /colour112/
hi tcol112 guifg=112 ctermfg=112
syn match tcol113 /colour113/
hi tcol113 guifg=113 ctermfg=113
syn match tcol114 /colour114/
hi tcol114 guifg=114 ctermfg=114
syn match tcol115 /colour115/
hi tcol115 guifg=115 ctermfg=115
syn match tcol116 /colour116/
hi tcol116 guifg=116 ctermfg=116
syn match tcol117 /colour117/
hi tcol117 guifg=117 ctermfg=117
syn match tcol118 /colour118/
hi tcol118 guifg=118 ctermfg=118
syn match tcol119 /colour119/
hi tcol119 guifg=119 ctermfg=119
syn match tcol120 /colour120/
hi tcol120 guifg=120 ctermfg=120
syn match tcol121 /colour121/
hi tcol121 guifg=121 ctermfg=121
syn match tcol122 /colour122/
hi tcol122 guifg=122 ctermfg=122
syn match tcol123 /colour123/
hi tcol123 guifg=123 ctermfg=123
syn match tcol124 /colour124/
hi tcol124 guifg=124 ctermfg=124
syn match tcol125 /colour125/
hi tcol125 guifg=125 ctermfg=125
syn match tcol126 /colour126/
hi tcol126 guifg=126 ctermfg=126
syn match tcol127 /colour127/
hi tcol127 guifg=127 ctermfg=127
syn match tcol128 /colour128/
hi tcol128 guifg=128 ctermfg=128
syn match tcol129 /colour129/
hi tcol129 guifg=129 ctermfg=129
syn match tcol130 /colour130/
hi tcol130 guifg=130 ctermfg=130
syn match tcol131 /colour131/
hi tcol131 guifg=131 ctermfg=131
syn match tcol132 /colour132/
hi tcol132 guifg=132 ctermfg=132
syn match tcol133 /colour133/
hi tcol133 guifg=133 ctermfg=133
syn match tcol134 /colour134/
hi tcol134 guifg=134 ctermfg=134
syn match tcol135 /colour135/
hi tcol135 guifg=135 ctermfg=135
syn match tcol136 /colour136/
hi tcol136 guifg=136 ctermfg=136
syn match tcol137 /colour137/
hi tcol137 guifg=137 ctermfg=137
syn match tcol138 /colour138/
hi tcol138 guifg=138 ctermfg=138
syn match tcol139 /colour139/
hi tcol139 guifg=139 ctermfg=139
syn match tcol140 /colour140/
hi tcol140 guifg=140 ctermfg=140
syn match tcol141 /colour141/
hi tcol141 guifg=141 ctermfg=141
syn match tcol142 /colour142/
hi tcol142 guifg=142 ctermfg=142
syn match tcol143 /colour143/
hi tcol143 guifg=143 ctermfg=143
syn match tcol144 /colour144/
hi tcol144 guifg=144 ctermfg=144
syn match tcol145 /colour145/
hi tcol145 guifg=145 ctermfg=145
syn match tcol146 /colour146/
hi tcol146 guifg=146 ctermfg=146
syn match tcol147 /colour147/
hi tcol147 guifg=147 ctermfg=147
syn match tcol148 /colour148/
hi tcol148 guifg=148 ctermfg=148
syn match tcol149 /colour149/
hi tcol149 guifg=149 ctermfg=149
syn match tcol150 /colour150/
hi tcol150 guifg=150 ctermfg=150
syn match tcol151 /colour151/
hi tcol151 guifg=151 ctermfg=151
syn match tcol152 /colour152/
hi tcol152 guifg=152 ctermfg=152
syn match tcol153 /colour153/
hi tcol153 guifg=153 ctermfg=153
syn match tcol154 /colour154/
hi tcol154 guifg=154 ctermfg=154
syn match tcol155 /colour155/
hi tcol155 guifg=155 ctermfg=155
syn match tcol156 /colour156/
hi tcol156 guifg=156 ctermfg=156
syn match tcol157 /colour157/
hi tcol157 guifg=157 ctermfg=157
syn match tcol158 /colour158/
hi tcol158 guifg=158 ctermfg=158
syn match tcol159 /colour159/
hi tcol159 guifg=159 ctermfg=159
syn match tcol160 /colour160/
hi tcol160 guifg=160 ctermfg=160
syn match tcol161 /colour161/
hi tcol161 guifg=161 ctermfg=161
syn match tcol162 /colour162/
hi tcol162 guifg=162 ctermfg=162
syn match tcol163 /colour163/
hi tcol163 guifg=163 ctermfg=163
syn match tcol164 /colour164/
hi tcol164 guifg=164 ctermfg=164
syn match tcol165 /colour165/
hi tcol165 guifg=165 ctermfg=165
syn match tcol166 /colour166/
hi tcol166 guifg=166 ctermfg=166
syn match tcol167 /colour167/
hi tcol167 guifg=167 ctermfg=167
syn match tcol168 /colour168/
hi tcol168 guifg=168 ctermfg=168
syn match tcol169 /colour169/
hi tcol169 guifg=169 ctermfg=169
syn match tcol170 /colour170/
hi tcol170 guifg=170 ctermfg=170
syn match tcol171 /colour171/
hi tcol171 guifg=171 ctermfg=171
syn match tcol172 /colour172/
hi tcol172 guifg=172 ctermfg=172
syn match tcol173 /colour173/
hi tcol173 guifg=173 ctermfg=173
syn match tcol174 /colour174/
hi tcol174 guifg=174 ctermfg=174
syn match tcol175 /colour175/
hi tcol175 guifg=175 ctermfg=175
syn match tcol176 /colour176/
hi tcol176 guifg=176 ctermfg=176
syn match tcol177 /colour177/
hi tcol177 guifg=177 ctermfg=177
syn match tcol178 /colour178/
hi tcol178 guifg=178 ctermfg=178
syn match tcol179 /colour179/
hi tcol179 guifg=179 ctermfg=179
syn match tcol180 /colour180/
hi tcol180 guifg=180 ctermfg=180
syn match tcol181 /colour181/
hi tcol181 guifg=181 ctermfg=181
syn match tcol182 /colour182/
hi tcol182 guifg=182 ctermfg=182
syn match tcol183 /colour183/
hi tcol183 guifg=183 ctermfg=183
syn match tcol184 /colour184/
hi tcol184 guifg=184 ctermfg=184
syn match tcol185 /colour185/
hi tcol185 guifg=185 ctermfg=185
syn match tcol186 /colour186/
hi tcol186 guifg=186 ctermfg=186
syn match tcol187 /colour187/
hi tcol187 guifg=187 ctermfg=187
syn match tcol188 /colour188/
hi tcol188 guifg=188 ctermfg=188
syn match tcol189 /colour189/
hi tcol189 guifg=189 ctermfg=189
syn match tcol190 /colour190/
hi tcol190 guifg=190 ctermfg=190
syn match tcol191 /colour191/
hi tcol191 guifg=191 ctermfg=191
syn match tcol192 /colour192/
hi tcol192 guifg=192 ctermfg=192
syn match tcol193 /colour193/
hi tcol193 guifg=193 ctermfg=193
syn match tcol194 /colour194/
hi tcol194 guifg=194 ctermfg=194
syn match tcol195 /colour195/
hi tcol195 guifg=195 ctermfg=195
syn match tcol196 /colour196/
hi tcol196 guifg=196 ctermfg=196
syn match tcol197 /colour197/
hi tcol197 guifg=197 ctermfg=197
syn match tcol198 /colour198/
hi tcol198 guifg=198 ctermfg=198
syn match tcol199 /colour199/
hi tcol199 guifg=199 ctermfg=199
syn match tcol200 /colour200/
hi tcol200 guifg=200 ctermfg=200
syn match tcol201 /colour201/
hi tcol201 guifg=201 ctermfg=201
syn match tcol202 /colour202/
hi tcol202 guifg=202 ctermfg=202
syn match tcol203 /colour203/
hi tcol203 guifg=203 ctermfg=203
syn match tcol204 /colour204/
hi tcol204 guifg=204 ctermfg=204
syn match tcol205 /colour205/
hi tcol205 guifg=205 ctermfg=205
syn match tcol206 /colour206/
hi tcol206 guifg=206 ctermfg=206
syn match tcol207 /colour207/
hi tcol207 guifg=207 ctermfg=207
syn match tcol208 /colour208/
hi tcol208 guifg=208 ctermfg=208
syn match tcol209 /colour209/
hi tcol209 guifg=209 ctermfg=209
syn match tcol210 /colour210/
hi tcol210 guifg=210 ctermfg=210
syn match tcol211 /colour211/
hi tcol211 guifg=211 ctermfg=211
syn match tcol212 /colour212/
hi tcol212 guifg=212 ctermfg=212
syn match tcol213 /colour213/
hi tcol213 guifg=213 ctermfg=213
syn match tcol214 /colour214/
hi tcol214 guifg=214 ctermfg=214
syn match tcol215 /colour215/
hi tcol215 guifg=215 ctermfg=215
syn match tcol216 /colour216/
hi tcol216 guifg=216 ctermfg=216
syn match tcol217 /colour217/
hi tcol217 guifg=217 ctermfg=217
syn match tcol218 /colour218/
hi tcol218 guifg=218 ctermfg=218
syn match tcol219 /colour219/
hi tcol219 guifg=219 ctermfg=219
syn match tcol220 /colour220/
hi tcol220 guifg=220 ctermfg=220
syn match tcol221 /colour221/
hi tcol221 guifg=221 ctermfg=221
syn match tcol222 /colour222/
hi tcol222 guifg=222 ctermfg=222
syn match tcol223 /colour223/
hi tcol223 guifg=223 ctermfg=223
syn match tcol224 /colour224/
hi tcol224 guifg=224 ctermfg=224
syn match tcol225 /colour225/
hi tcol225 guifg=225 ctermfg=225
syn match tcol226 /colour226/
hi tcol226 guifg=226 ctermfg=226
syn match tcol227 /colour227/
hi tcol227 guifg=227 ctermfg=227
syn match tcol228 /colour228/
hi tcol228 guifg=228 ctermfg=228
syn match tcol229 /colour229/
hi tcol229 guifg=229 ctermfg=229
syn match tcol230 /colour230/
hi tcol230 guifg=230 ctermfg=230
syn match tcol231 /colour231/
hi tcol231 guifg=231 ctermfg=231
syn match tcol232 /colour232/
hi tcol232 guifg=232 ctermfg=232
syn match tcol233 /colour233/
hi tcol233 guifg=233 ctermfg=233
syn match tcol234 /colour234/
hi tcol234 guifg=234 ctermfg=234
syn match tcol235 /colour235/
hi tcol235 guifg=235 ctermfg=235
syn match tcol236 /colour236/
hi tcol236 guifg=236 ctermfg=236
syn match tcol237 /colour237/
hi tcol237 guifg=237 ctermfg=237
syn match tcol238 /colour238/
hi tcol238 guifg=238 ctermfg=238
syn match tcol239 /colour239/
hi tcol239 guifg=239 ctermfg=239
syn match tcol240 /colour240/
hi tcol240 guifg=240 ctermfg=240
syn match tcol241 /colour241/
hi tcol241 guifg=241 ctermfg=241
syn match tcol242 /colour242/
hi tcol242 guifg=242 ctermfg=242
syn match tcol243 /colour243/
hi tcol243 guifg=243 ctermfg=243
syn match tcol244 /colour244/
hi tcol244 guifg=244 ctermfg=244
syn match tcol245 /colour245/
hi tcol245 guifg=245 ctermfg=245
syn match tcol246 /colour246/
hi tcol246 guifg=246 ctermfg=246
syn match tcol247 /colour247/
hi tcol247 guifg=247 ctermfg=247
syn match tcol248 /colour248/
hi tcol248 guifg=248 ctermfg=248
syn match tcol249 /colour249/
hi tcol249 guifg=249 ctermfg=249
syn match tcol250 /colour250/
hi tcol250 guifg=250 ctermfg=250
syn match tcol251 /colour251/
hi tcol251 guifg=251 ctermfg=251
syn match tcol252 /colour252/
hi tcol252 guifg=252 ctermfg=252
syn match tcol253 /colour253/
hi tcol253 guifg=253 ctermfg=253
syn match tcol254 /colour254/
hi tcol254 guifg=254 ctermfg=254
syn match tcol255 /colour255/
hi tcol255 guifg=255 ctermfg=255

let b:current_syntax = "tmux"

set number

"This setting ensures that each window contains a statusline that displays the current cursor position.
set ruler

map <F2> :NERDTreeToggle<cr>
map <F3> :TlistToggle<cr>

"This setting prevents vim from emulating the original vi's bugs and limitations.
set nocompatible

"ignore case search
set ic

"The first setting tells vim to use "autoindent" (that is, use the current line's indent level to set the indent level of new lines). The second makes vim attempt to intelligently guess the indent level of any new line based on the previous line, assuming the source file is in a C-like language. Combined, they are very useful in writing well-formatted source code.
set autoindent
set smartindent

"This setting will cause the cursor to very briefly jump to a brace/parenthese/bracket's "match" whenever you type a closing or opening brace/parenthese/bracket.
set showmatch

"don't highlight search results
"set nohls

"With this nifty option, vim will search for text as you enter it
set incsearch

set hlsearch

set expandtab
set tabstop=2
set shiftwidth=2

set pastetoggle=<F4>

if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
  augroup END
endif
syntax on

" Fuf
let g:fuf_modesDisable = [ 'mrucmd', ]
let g:fuf_abbrevMap = {
  \   '^p:' : [ '~/NetBeansProjects/' ],
  \   '^ph:' : [ '~/Sites/Ideup' ],
  \   '^pln:' : [ '~/NetBeansProjects/lanetro' ],
\ }
let g:fuf_learningLimit = 100
"let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
let g:fuf_mrufile_maxItem = 300
"let g:fuf_dir_exclude = '\v(^|[/\\])\.(hg|git|bzr)($|[/\\])'

nnoremap <silent> <C-f>b     :FufBuffer<CR>
nnoremap <silent> <C-f>bf    :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> <C-f>h     :FufFileWithFullCwd<CR>
nnoremap <silent> <C-f>f     :FufFile<CR>
nnoremap <silent> <C-f>bd    :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> <C-f>H     :FufDirWithFullCwd<CR>
nnoremap <silent> <C-f>d     :FufDir<CR>
nnoremap <silent> <C-f>ru    :FufMruFile<CR>
nnoremap <silent> <C-k>      :FufMruCmd<CR>
nnoremap <silent> <C-b>      :FufBookmark<CR>
nnoremap <silent> <C-f><C-t> :FufTag<CR>
nnoremap <silent> <C-f>t     :FufTag!<CR>
noremap  <silent> g]         :FufTagWithCursorWord!<CR>
nnoremap <silent> <C-f><C-f> :FufTaggedFile<CR>
nnoremap <silent> <C-f><C-j> :FufJumpList<CR>
nnoremap <silent> <C-f><C-g> :FufChangeList<CR>
nnoremap <silent> <C-f><C-q> :FufQuickfix<CR>
nnoremap <silent> <C-f><C-l> :FufLine<CR>
nnoremap <silent> <C-f><C-h> :FufHelp<CR>
nnoremap <silent> <C-f><C-b> :FufAddBookmark<CR>
vnoremap <silent> <C-f><C-b> :FufAddBookmarkAsSelectedText<CR>
nnoremap <silent> <C-f><C-e> :FufEditInfo<CR>
nnoremap <silent> <C-f><C-r> :FufRenewCache<CR>


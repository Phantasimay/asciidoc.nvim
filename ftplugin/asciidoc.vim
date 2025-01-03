nnoremap <silent> <CR> gf
nnoremap <silent> <Bslash> <C-o>
nnoremap <leader>nf :e `echo _$(qn -d).adoc`<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
" https://stackoverflow.com/questions/695438/what-are-the-safe-characters-for-making-urls
setlocal isfname+=32,[,',?,`,;,&						"all char as literal
setlocal isfname-=#										"all char as space(non literal)
setlocal path+=$WIKI_DIR/								"target dir
setlocal suffixesadd+=.adoc								"target file extension
setlocal include=/\v%(:.*[.*])							"target regex
setlocal includeexpr=substitute(v:fname,'[.*','','\v%')	"part to delete from regex
setlocal nowrap

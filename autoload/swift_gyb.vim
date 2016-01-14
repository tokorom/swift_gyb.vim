" swift.gyb.vim - Convert XXX.swift.gyb to XXX.swift {{{
" Version: 0.0.1
" Copyright (C) 2016 Yuta ToKoRo <https://github.com/tokorom/>
" Last Modified: January 14, 2016
" License: MIT license {{{
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be included
" in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
" OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
" IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
" CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
" TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
" SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
" }}}

" initialize "{{{

let g:swift_gyb_bin = 'gyb'

"}}}

" public functions "{{{

function! swift_gyb#gyb() "{{{
  let l:tempname = tempname()
  exe "!" . expand(g:swift_gyb_bin) . " "  . expand("%:p") . " > " . expand(l:tempname)
  exe "tabnew " . expand(l:tempname)
  setf swift
endfunction "}}}

"}}}

" Fin. "{{{
" __END__
" vim: foldmethod=marker

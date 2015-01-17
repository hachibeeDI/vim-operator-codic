
" vim:set sts=2 sw=2 tw=0 et:

" License: MIT License {{{
" Copyright (c) 2014 OGURA_Daiki <https://github.com/hachibeeDI>
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.
" }}}


scriptencoding utf-8

let s:saved_cpo = &cpo
set cpo-=C




function! operator#codic#do(motion_wiseness)
  let l:l = line('.')
  let l:c = col('.')

  let [f_l, f_c] = getpos("'[")[1:2]
  let [e_l, e_c] = getpos("']")[1:2]
  let word = tolower(getline(f_l)[f_c-1 : e_c-1])
  execute 'Codic ' . word

  call cursor(l, c)
endfunction




let &cpo = s:saved_cpo
unlet s:saved_cpo

" Conceal feature required to continue (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" Remove keywords to be re-added later
syntax clear Statement

" Conceal 'lambda' with a lambda character
syntax keyword scmNiceLambda lambda conceal cchar=λ

" Link up syntax
hi link scmNiceLambda Statement
hi! link Conceal Statement

" Set conceallevel/cursor
setlocal conceallevel=1
setlocal concealcursor=c

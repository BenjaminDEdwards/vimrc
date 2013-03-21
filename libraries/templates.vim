function! DeclarePackage ()
    let  fpath = substitute( expand("%") , ".pm", "", "")
    let  dir = split( fpath ,'/' )
    call remove( dir, 0 )

    return join(dir,"::")

endfunction

function! TemplateUnitTestClass()
    read ~/.vim/templates/unitTestClass.txt
    1delete
    let classpath = DeclarePackage()
    execute '%s/' . 'CLASSPATH' . '/' . classpath . '/g'
    /TODO
endfunction

function! TemplateTest(name)
    read ~/.vim/templates/test.txt
    execute '%s/' . 'NAME' . '/' . a:name . '/g'
    /CODE
    return "Done"
endfunction

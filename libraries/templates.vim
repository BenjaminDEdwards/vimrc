function! DeclarePackage ()
    let  fpath = substitute( expand("%") , ".pm", "", "")
    let  dir = split( fpath ,'/' )
    call remove( dir, 0 )

    return join(dir,"::")

endfunction

function! UnitTest()
    "call append( line(1) , "package " . DeclarePackage() . ";" )
    read ~/.vim/templates/unitTest.txt
    1delete
    let classpath = DeclarePackage()
    execute '%s/' . 'CLASSPATH' . '/' . classpath . '/g'
    /TODO
endfunction

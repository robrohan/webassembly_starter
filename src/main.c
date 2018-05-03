#include <stdio.h>
#include <emscripten/emscripten.h>

int main(int argc, char ** argv) 
{
    // Gets translated to console.log
    printf("Hello from %s\n", "C");

    //                _Return type
    //               / 
    int x = EM_ASM_INT({
        const js = 'javascript';
        console.log(['Hello from inline', js].join(' '));
        Module.print('I received: ' + $0);
        return $0 + 1;
    }, 100);
    // Back out from inline javascript...
    printf("%d\n", x);
}

// Calling a function from javascript
EMSCRIPTEN_KEEPALIVE
void my_function(int argc, char ** argv) 
{
    printf("Hello from my function: args: %d\n", argc);
}

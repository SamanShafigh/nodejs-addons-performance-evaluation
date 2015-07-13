#include <node.h>
#include <v8.h>
 
using namespace v8;
int fibonacci(int n);
 
Handle<Value> calculate(const Arguments& args)
{
  HandleScope scope;
  int fibonacciValue = fibonacci(args[0]->NumberValue());
  Local<Number> num = Number::New(fibonacciValue);
  
  return scope.Close(num);
}

int fibonacci(int n)
{
    if (n < 2) {
        return 1;
    } else {
        return fibonacci(n - 2) + fibonacci(n - 1);
    }    
}
 
void init(Handle<Object> exports)
{
  exports->Set(String::NewSymbol("calculate"),
      FunctionTemplate::New(calculate)->GetFunction());
}
 
NODE_MODULE(fibonacciCPP, init)
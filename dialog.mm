#include <napi.h>

#import <CoreServices/CoreServices.h>
#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

using namespace Napi;


Number showDialog(const CallbackInfo& info)
{


    Env env = info.Env();
    Object dialog = info[0].ToObject();

    std::string message = dialog.Get("title").As<Napi::String>();
    std::string informMessage = dialog.Get("detail").As<Napi::String>();
    Array buttons = dialog.Get("buttons").As<Napi::Array>();
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:@(message.c_str())];
    [alert setInformativeText:@(informMessage.c_str())];
    uint32_t rowCount = buttons.Length();

    for (uint32_t i = 0; i < rowCount; i++)
    {
        std::string buttonText = buttons.Get(i).ToString();
         [alert addButtonWithTitle:(@(buttonText.c_str()))];
    }

    [alert setAlertStyle:NSAlertStyleInformational];
    NSPanel* panel = (NSPanel*)([alert window]);
    panel.floatingPanel = YES;
    NSInteger response = [alert runModal];
    response = response - 1000;


    return Number::New(env, response);
}

Object Init(Env env, Object exports)
{
    exports.Set(String::New(env, "showSync"), Function::New(env, showDialog));

    return exports;
}

NODE_API_MODULE(NODE_GYP_MODULE_NAME, Init)

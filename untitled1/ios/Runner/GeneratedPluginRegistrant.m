//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<flutter_qrcode_scanner/FlutterQrcodeScannerPlugin.h>)
#import <flutter_qrcode_scanner/FlutterQrcodeScannerPlugin.h>
#else
@import flutter_qrcode_scanner;
#endif

#if __has_include(<qr_code_scanner/FlutterQrPlugin.h>)
#import <qr_code_scanner/FlutterQrPlugin.h>
#else
@import qr_code_scanner;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FlutterQrcodeScannerPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterQrcodeScannerPlugin"]];
  [FlutterQrPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterQrPlugin"]];
}

@end

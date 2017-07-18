//
//  AFHTTPSessionManager+CredentialAuth.h
//  iOSHttps
//
//  Created by anyware on 17/7/18.
//  Copyright © 2017年 ioshttps. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface AFHTTPSessionManager (CredentialAuth)

// 客户端认证服务器证书
-(void)authServerCerData:(NSData *)cerData space:(NSURLProtectionSpace *)space success:(void(^)())success failure:(void(^)(NSString *errorMsg))failure;

// 服务器认证客户端证书
-(void)authClientCerData:(NSData *)cerData cerPass:(NSString *)pass space:(NSURLProtectionSpace *)space success:(void(^)(NSURLCredential *credential))success failure:(void(^)(NSString *errorMsg))failure;

@end

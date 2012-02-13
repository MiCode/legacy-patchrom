.class public Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;
.super Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;
.source "BlurOAuthAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$1;,
        Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;
    }
.end annotation


# static fields
.field private static final BASE_URL:I = 0x2

.field private static final BLUR_SERVICES_RESTARTED:I = 0x1

.field private static final INVOKE_CALLBACK_URL_RESPONSE:I = 0x3

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mGotUrl:Z

.field private mId:J

.field private mReceiver:Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;

.field private mRegistered:Z

.field private mResponseUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "BOAuth"

    sput-object v0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "accountId"
    .parameter "providerId"
    .parameter "listener"
    .parameter "providerPrettyName"
    .parameter "providerName"

    .prologue
    .line 74
    const/4 v2, 0x0

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/motorola/blur/authenticators/BlurSNPAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mId:J

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mGotUrl:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mRegistered:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mResponseUrl:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mReceiver:Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;

    .line 75
    return-void
.end method

.method private saveNewAccount(Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;)V
    .locals 3
    .parameter "callbackResponse"

    .prologue
    .line 231
    iget-object v1, p1, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;->realName:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUserPrettyName:Ljava/lang/String;

    .line 232
    iget-object v1, p1, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;->uid:Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUid:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v2, p1, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;->userName:Ljava/lang/String;

    iput-object v2, v1, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->getForegroundMessage()Landroid/os/Message;

    move-result-object v0

    .line 235
    .local v0, outMsg:Landroid/os/Message;
    invoke-direct {p0}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->saveToDB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 241
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->sendForegroundMessage(Landroid/os/Message;)Z

    .line 242
    return-void

    .line 238
    :cond_0
    const v1, 0x7f0c00d7

    invoke-virtual {p0, v1}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->appendError(I)V

    .line 239
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method private saveToDB()Z
    .locals 6

    .prologue
    const-string v4, "user_pretty_name"

    .line 249
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 250
    .local v1, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 251
    .local v0, uri:Landroid/net/Uri;
    const-string v2, "username"

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUid:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUid:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "password"

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUserPrettyName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    const-string v2, "user_pretty_name"

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUserPrettyName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_1
    const-string v2, "email_address"

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v2, "provider_id"

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 260
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    .line 262
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v2, v2, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 251
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    goto :goto_0

    .line 256
    :cond_2
    const-string v2, "user_pretty_name"

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mProviderPrettyName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 264
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method public authenticate()V
    .locals 4

    .prologue
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mId:J

    .line 95
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->registerReceivers()V

    .line 96
    new-instance v0, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, wsClient:Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;
    iget-boolean v1, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mGotUrl:Z

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mProviderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mResponseUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;->invokeCallbackUrl(Ljava/lang/String;Ljava/lang/String;Z)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mProviderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;->getOAuthUrl(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0
.end method

.method public getProgressString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processBackgroundMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const-string v11, "http://m."

    .line 110
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 112
    :pswitch_0
    const v5, 0x7f0c0094

    invoke-virtual {p0, v5}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->appendError(I)V

    .line 113
    invoke-virtual {p0, v9}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;

    if-eqz v5, :cond_0

    .line 118
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;

    .line 119
    .local v2, oAuthUrlResp:Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 120
    .local v0, errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    iget-object v0, v2, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;->error:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 121
    iget-object v5, v2, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;->url:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 124
    :cond_1
    sget-object v5, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v0, v5, :cond_3

    .line 128
    iget-object v5, v2, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;->url:Ljava/lang/String;

    iput-object v5, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUrl:Ljava/lang/String;

    .line 131
    iget-object v5, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 132
    .local v4, supportedQzone:Z
    if-nez v4, :cond_2

    .line 134
    iget-object v5, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUrl:Ljava/lang/String;

    const-string v6, "http://m."

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 135
    iget-object v5, v2, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;->url:Ljava/lang/String;

    const-string v6, "http://"

    const-string v7, "http://m."

    invoke-virtual {v5, v6, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mUrl:Ljava/lang/String;

    .line 141
    :cond_2
    iget-object v5, v2, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;->callback:Ljava/lang/String;

    iput-object v5, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mCallbackUrl:Ljava/lang/String;

    .line 142
    iput-boolean v8, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mGotUrl:Z

    .line 143
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0

    .line 145
    .end local v4           #supportedQzone:Z
    :cond_3
    iget-object v3, v2, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;->snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 146
    .local v3, snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    sget-object v5, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SNPError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v0, v5, :cond_6

    if-eqz v3, :cond_6

    .line 147
    sget-object v5, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->USER_EXIST_IN_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    if-eq v3, v5, :cond_4

    sget-object v5, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->LOGIN_NOT_MATCH_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    if-ne v3, v5, :cond_5

    .line 148
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->removeOrphanedAccount()V

    .line 150
    :cond_5
    sget-object v5, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->TAG:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "SNPError Recieved:"

    aput-object v7, v6, v10

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p0, v0, v3}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->buildAndShowError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)V

    .line 156
    :goto_1
    sget-object v5, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->TAG:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, " Error recieved:"

    aput-object v7, v6, v10

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 153
    :cond_6
    iget-object v5, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->appendError(I)V

    .line 154
    invoke-virtual {p0, v8}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_1

    .line 162
    .end local v0           #errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .end local v2           #oAuthUrlResp:Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;
    .end local v3           #snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;

    if-eqz v5, :cond_0

    .line 163
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;

    .line 164
    .local v1, invokeCallbackUrlResp:Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 165
    .restart local v0       #errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    iget-object v0, v1, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;->error:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 166
    sget-object v5, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->TAG:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "Error code returned: "

    aput-object v7, v6, v10

    iget-object v7, v1, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;->error:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    sget-object v5, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v0, v5, :cond_7

    .line 168
    invoke-direct {p0, v1}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->saveNewAccount(Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;)V

    goto/16 :goto_0

    .line 170
    :cond_7
    iget-object v3, v1, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;->snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 171
    .restart local v3       #snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    sget-object v5, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SNPError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v0, v5, :cond_a

    if-eqz v3, :cond_a

    .line 172
    sget-object v5, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->USER_EXIST_IN_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    if-eq v3, v5, :cond_8

    sget-object v5, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->LOGIN_NOT_MATCH_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    if-ne v3, v5, :cond_9

    .line 173
    :cond_8
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->removeOrphanedAccount()V

    .line 175
    :cond_9
    sget-object v5, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->TAG:Ljava/lang/String;

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "SNPError:"

    aput-object v7, v6, v10

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p0, v0, v3}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->buildAndShowError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)V

    goto/16 :goto_0

    .line 178
    :cond_a
    iget-object v5, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->appendError(I)V

    .line 179
    invoke-virtual {p0, v8}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->sendForegroundMessage(I)Z

    goto/16 :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected registerReceivers()V
    .locals 4

    .prologue
    .line 191
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mReceiver:Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;

    if-nez v2, :cond_0

    .line 192
    new-instance v1, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;-><init>(Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$1;)V

    .line 193
    .local v1, receiver:Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mReceiver:Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;

    .line 195
    .end local v1           #receiver:Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;
    :cond_0
    iget-boolean v2, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mRegistered:Z

    if-nez v2, :cond_1

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-boolean v2, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mGotUrl:Z

    if-eqz v2, :cond_2

    .line 199
    const-string v2, "com.motorola.blur.service.blur.oauth.invokecallbackurl.resp"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mReceiver:Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mRegistered:Z

    .line 206
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    return-void

    .line 201
    .restart local v0       #filter:Landroid/content/IntentFilter;
    :cond_2
    const-string v2, "com.motorola.blur.service.blur.oauth.getoauthurl.resp"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected unregisterReceivers()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mReceiver:Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mReceiver:Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator$OAuthReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mRegistered:Z

    .line 214
    :cond_0
    return-void
.end method

.method public updateOAuthAuthenticator(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/motorola/blur/authenticators/BlurOAuthAuthenticator;->mResponseUrl:Ljava/lang/String;

    .line 84
    return-void
.end method

.method protected validate()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

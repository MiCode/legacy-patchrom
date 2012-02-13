.class public Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;
.super Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;
.source "BlurActiveSyncAuthenticator.java"


# static fields
.field private static final IS_PICTURE_SOURCE:Ljava/lang/String; = "is_picture_source"

.field private static final NEEDS_CERTIFICATE_PERMISSION:I = 0x6

.field private static final NEEDS_SERVERNAME:I = 0x5

.field private static final SYNC_SOURCES_SETTINGS:Ljava/lang/String; = "sync_sources_settings"

.field private static final TAG:Ljava/lang/String; = "BASA"


# instance fields
.field private mAutodiscover:Z

.field private mEmailAddress:Ljava/lang/String;

.field private mServerAddress:Ljava/lang/String;

.field private mUseSsl:Z

.field private mViews:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZLcom/motorola/blur/authenticators/BlurAuthenticationListener;[I)V
    .locals 13
    .parameter "context"
    .parameter "email"
    .parameter "password"
    .parameter "accountId"
    .parameter "providerId"
    .parameter "serverAddress"
    .parameter "username"
    .parameter "useSsl"
    .parameter "listener"
    .parameter "views"

    .prologue
    .line 51
    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p9

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p11

    invoke-direct/range {v4 .. v12}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;)V

    .line 41
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mServerAddress:Ljava/lang/String;

    .line 42
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mUseSsl:Z

    .line 43
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mEmailAddress:Ljava/lang/String;

    .line 44
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mAutodiscover:Z

    .line 45
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mViews:[I

    .line 52
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, p0

    move-object/from16 v1, p8

    move-object v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->initASVariables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 53
    move-object/from16 v0, p12

    move-object v1, p0

    iput-object v0, v1, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mViews:[I

    .line 54
    return-void
.end method

.method private createActiveSyncAccount(Landroid/content/Context;Landroid/content/ContentValues;[I)Landroid/net/Uri;
    .locals 24
    .parameter "context"
    .parameter "asServiceValues"
    .parameter "capabilityIds"

    .prologue
    .line 248
    invoke-static/range {p2 .. p2}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->grabActiveServiceValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v7

    .line 249
    .local v7, activeServiceValues:Landroid/content/ContentValues;
    invoke-static/range {p2 .. p2}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->removeActiveServiceValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p2

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 251
    .local v20, resolver:Landroid/content/ContentResolver;
    const-string v22, "activesync"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v8

    .line 253
    .local v8, asProviderId:J
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 254
    .local v6, accountValues:Landroid/content/ContentValues;
    const-string v22, "email_address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v22, "provider_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 256
    const-string v22, "account_pretty_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/motorola/blur/provider/DeviceSetup;->createPrettyName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v22, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 260
    .local v5, accountUri:Landroid/net/Uri;
    if-nez v5, :cond_0

    .line 261
    const/16 v22, 0x0

    .line 331
    :goto_0
    return-object v22

    .line 263
    :cond_0
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 264
    .local v3, accountId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    move-object/from16 v22, v0

    move-wide v0, v3

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    .line 266
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 267
    .local v19, photoAccountOuterObject:Lorg/json/JSONObject;
    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    .line 268
    .local v17, photoAccountArray:Lorg/json/JSONArray;
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .line 271
    .local v18, photoAccountObject:Lorg/json/JSONObject;
    const-string v22, "providers_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    const-string v22, "capability"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string v22, "pretty_name"

    const v23, 0x7f0c007b

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v22, "secure"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 277
    const-string v22, "secure"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    :cond_1
    sget-object v22, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v21

    .line 279
    .local v21, serviceUri:Landroid/net/Uri;
    if-nez v21, :cond_2

    .line 280
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 282
    :cond_2
    invoke-static/range {v21 .. v21}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 285
    .local v14, emailServiceId:J
    const-string v22, "service_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object v0, v7

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 286
    const-string v22, "account"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object v0, v7

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 287
    const-string v22, "retention_policy"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object v0, v7

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string v22, "verify_ca"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object v0, v7

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    const-string v22, "security_policy"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object v0, v7

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    sget-object v22, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 294
    const-string v22, "capability"

    const/16 v23, 0x5

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    const-string v22, "pretty_name"

    const v23, 0x7f0c00a4

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :try_start_0
    const-string v22, "blur_source_name"

    invoke-static {v3, v4}, Lcom/motorola/blur/util/activesync/ASUtils;->handlerNameFromId(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v22, "pretty_name"

    const v23, 0x7f0c00a4

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string v22, "allow_out_of_context"

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 300
    const-string v22, "active_sync_source"

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 301
    const-string v22, "is_picture_source"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 302
    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 303
    const-string v22, "sync_sources_settings"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v22, "settings"

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_1
    sget-object v22, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v21

    .line 309
    if-nez v21, :cond_3

    .line 310
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 305
    :catch_0
    move-exception v22

    move-object/from16 v16, v22

    .line 306
    .local v16, exception:Lorg/json/JSONException;
    const-string v22, "BASA"

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 312
    .end local v16           #exception:Lorg/json/JSONException;
    :cond_3
    invoke-static/range {v21 .. v21}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 313
    .local v12, contactsServiceId:J
    const-string v22, "settings"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 315
    const-string v22, "service_id"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object v0, v7

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 316
    sget-object v22, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 320
    const-string v22, "capability"

    const/16 v23, 0xc

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    const-string v22, "pretty_name"

    const v23, 0x7f0c00a5

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object v22, Lcom/motorola/blur/provider/DeviceSetup$Services;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v21

    .line 323
    if-nez v21, :cond_4

    .line 324
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 326
    :cond_4
    invoke-static/range {v21 .. v21}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 328
    .local v10, calendarServiceId:J
    const-string v22, "service_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object v0, v7

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 329
    sget-object v22, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-object/from16 v22, v5

    .line 331
    goto/16 :goto_0
.end method

.method private static grabActiveServiceValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5
    .parameter "serverValues"

    .prologue
    const-string v4, "username"

    const-string v3, "password"

    const-string v2, "max_size"

    .line 197
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "username"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "username"

    const-string v1, "username"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "username"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 205
    :cond_0
    const-string v1, "password"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    const-string v1, "password"

    const-string v1, "password"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "password"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 211
    :cond_1
    const-string v1, "max_size"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    const-string v1, "max_size"

    const-string v1, "max_size"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v1, "max_size"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 218
    :cond_2
    return-object v0
.end method

.method private initASVariables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "serverAddress"
    .parameter "email"
    .parameter "useSsl"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mServerAddress:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mEmailAddress:Ljava/lang/String;

    .line 66
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mUseSsl:Z

    .line 67
    return-void
.end method

.method private invalidCertificateUI(Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "error"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mContext:Landroid/content/Context;

    .line 86
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c008e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0057

    new-instance v3, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator$2;

    invoke-direct {v3, p0}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator$2;-><init>(Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0104

    new-instance v3, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator$1;

    invoke-direct {v3, p0}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator$1;-><init>(Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private static removeActiveServiceValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1
    .parameter "serverValues"

    .prologue
    .line 229
    const-string v0, "username"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 230
    const-string v0, "password"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 231
    const-string v0, "max_size"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 233
    return-object p0
.end method


# virtual methods
.method protected buildDupeQuery(Ljava/lang/StringBuilder;)Landroid/net/Uri;
    .locals 4
    .parameter "selection"

    .prologue
    const-string v3, "=\'"

    .line 337
    const-string v0, "providers_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mServerAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "server_address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mServerAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_0
    const-string v0, "email_address"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getProtocolName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "ACTIVESYNC_PROTOCOL"

    return-object v0
.end method

.method protected handleAuthResponse(I)V
    .locals 4
    .parameter "responseError"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 365
    iget-boolean v1, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mAutodiscover:Z

    if-ne v1, v2, :cond_0

    if-ne p1, v2, :cond_0

    .line 368
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mAutodiscover:Z

    .line 370
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->resetAccount()V

    .line 373
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->getForegroundMessage()Landroid/os/Message;

    move-result-object v0

    .line 374
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 375
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 376
    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->sendForegroundMessage(Landroid/os/Message;)Z

    .line 381
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-super {p0, p1}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->handleAuthResponse(I)V

    goto :goto_0
.end method

.method protected handleCertificateIssue(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 76
    const/4 v0, 0x5

    iput v0, p1, Landroid/os/Message;->what:I

    .line 77
    const/4 v0, 0x6

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 78
    return-void
.end method

.method protected handleNeedingUserInteraction(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 389
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_0

    .line 396
    iget-object v4, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mListener:Lcom/motorola/blur/authenticators/BlurAuthenticationListener;

    iget-object v5, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mViews:[I

    invoke-interface {v4, v5}, Lcom/motorola/blur/authenticators/BlurAuthenticationListener;->onMakeFieldsVisible([I)V

    .line 397
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mContext:Landroid/content/Context;

    .line 398
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 399
    .local v3, res:Landroid/content/res/Resources;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x108009b

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0155

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0156

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c007f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 404
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mListener:Lcom/motorola/blur/authenticators/BlurAuthenticationListener;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/motorola/blur/authenticators/BlurAuthenticationListener;->onFinished(Landroid/app/AlertDialog;)V

    .line 407
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 391
    :pswitch_0
    iget-object v4, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00d8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->invalidCertificateUI(Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v2

    .line 392
    .local v2, dialog:Landroid/app/AlertDialog;
    iget-object v4, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mListener:Lcom/motorola/blur/authenticators/BlurAuthenticationListener;

    invoke-interface {v4, v2}, Lcom/motorola/blur/authenticators/BlurAuthenticationListener;->onFinished(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public setAutodiscover(Z)V
    .locals 0
    .parameter "autodiscover"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mAutodiscover:Z

    .line 123
    return-void
.end method

.method protected startAuth()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 168
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v2, v2, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->authenticate()V

    .line 188
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->validate()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 172
    .local v1, asValues:Landroid/content/ContentValues;
    const-string v2, "username"

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v2, "password"

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v3, v3, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "secure"

    iget-boolean v3, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mUseSsl:Z

    if-eqz v3, :cond_1

    move v3, v6

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v2, "server_address"

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mServerAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->createActiveSyncAccount(Landroid/content/Context;Landroid/content/ContentValues;[I)Landroid/net/Uri;

    move-result-object v0

    .line 177
    .local v0, activeSyncUri:Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 178
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    .line 179
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->authenticate()V

    goto :goto_0

    .line 174
    .end local v0           #activeSyncUri:Landroid/net/Uri;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 181
    .restart local v0       #activeSyncUri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->resetAccount()V

    .line 182
    const v2, 0x7f0c00d7

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->appendError(I)V

    .line 183
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0

    .line 186
    .end local v0           #activeSyncUri:Landroid/net/Uri;
    .end local v1           #asValues:Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {p0, v6}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0
.end method

.method public updateAuthenticator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "email"
    .parameter "password"
    .parameter "serverAddress"
    .parameter "username"
    .parameter "useSsl"

    .prologue
    .line 59
    invoke-super {p0, p4, p2}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->updateAuthenticator(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p3, p1, v0}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->initASVariables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 61
    return-void
.end method

.method protected validate()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    invoke-super {p0}, Lcom/motorola/blur/authenticators/BlurEmailAuthenticator;->validate()Z

    move-result v1

    .line 131
    .local v1, validated:Z
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->validateEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v6

    .line 134
    :goto_0
    iget-boolean v2, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mAutodiscover:Z

    if-nez v2, :cond_1

    .line 135
    new-instance v0, Lcom/motorola/blur/setup/ValidatedPatternValue;

    sget-object v2, Lcom/motorola/blur/setup/ValidatedPatternValue;->SERVER_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    const v3, 0x7f0c0107

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/motorola/blur/setup/ValidatedPatternValue;-><init>(Ljava/util/regex/Pattern;ILjava/lang/String;)V

    .line 136
    .local v0, serverPattern:Lcom/motorola/blur/setup/ValidatedPatternValue;
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mServerAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mServerAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/motorola/blur/setup/ValidatedPatternValue;->isValidValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/blur/setup/ValidatedPatternValue;->getError(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->appendError(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    .line 150
    .end local v0           #serverPattern:Lcom/motorola/blur/setup/ValidatedPatternValue;
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->isAccountDuplicate()Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v6

    .line 152
    :goto_1
    return v1

    :cond_2
    move v1, v5

    .line 131
    goto :goto_0

    :cond_3
    move v1, v5

    .line 150
    goto :goto_1
.end method

.method protected validateEmailAddress(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    .line 157
    new-instance v0, Lcom/motorola/blur/setup/ValidatedPatternValue;

    sget-object v2, Lcom/motorola/blur/setup/ValidatedPatternValue;->AS_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    const v3, 0x7f0c0089

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/motorola/blur/setup/ValidatedPatternValue;-><init>(Ljava/util/regex/Pattern;ILjava/lang/String;)V

    .line 160
    .local v0, emailPattern:Lcom/motorola/blur/setup/ValidatedPatternValue;
    invoke-virtual {v0, p1}, Lcom/motorola/blur/setup/ValidatedPatternValue;->isValidValue(Ljava/lang/String;)Z

    move-result v1

    .line 161
    .local v1, validated:Z
    if-nez v1, :cond_0

    .line 162
    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/blur/setup/ValidatedPatternValue;->getError(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->appendError(Ljava/lang/String;)V

    .line 164
    :cond_0
    return v1
.end method

.method protected validateUsername()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method protected verifyBlurAccount()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurActiveSyncAuthenticator;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->verifyBlurEmailWithNewAccount(Landroid/content/Context;Ljava/lang/String;)Z

    .line 361
    return-void
.end method

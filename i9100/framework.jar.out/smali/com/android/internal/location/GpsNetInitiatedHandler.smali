.class public Lcom/android/internal/location/GpsNetInitiatedHandler;
.super Ljava/lang/Object;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiResponse;,
        Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    }
.end annotation


# static fields
.field public static final ACTION_NI_VERIFY:Ljava/lang/String; = "android.intent.action.NETWORK_INITIATED_VERIFY"

.field private static final DEBUG:Z = true

.field public static final GPS_ENC_NONE:I = 0x0

.field public static final GPS_ENC_SUPL_GSM_DEFAULT:I = 0x1

.field public static final GPS_ENC_SUPL_UCS2:I = 0x3

.field public static final GPS_ENC_SUPL_UTF8:I = 0x2

.field public static final GPS_ENC_UNKNOWN:I = -0x1

.field public static final GPS_NI_NEED_NOTIFY:I = 0x1

.field public static final GPS_NI_NEED_VERIFY:I = 0x2

.field public static final GPS_NI_PRIVACY_OVERRIDE:I = 0x4

.field public static final GPS_NI_RESPONSE_ACCEPT:I = 0x1

.field public static final GPS_NI_RESPONSE_DENY:I = 0x2

.field public static final GPS_NI_RESPONSE_NORESP:I = 0x3

.field public static final GPS_NI_TYPE_UMTS_CTRL_PLANE:I = 0x3

.field public static final GPS_NI_TYPE_UMTS_SUPL:I = 0x2

.field public static final GPS_NI_TYPE_VOICE:I = 0x1

.field public static final NI_EXTRA_CMD_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final NI_EXTRA_CMD_RESPONSE:Ljava/lang/String; = "response"

.field public static final NI_INTENT_KEY_DEFAULT_RESPONSE:Ljava/lang/String; = "default_resp"

.field public static final NI_INTENT_KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final NI_INTENT_KEY_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final NI_INTENT_KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final NI_INTENT_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final NI_RESPONSE_EXTRA_CMD:Ljava/lang/String; = "send_ni_response"

.field private static final TAG:Ljava/lang/String; = "GpsNetInitiatedHandler"

.field private static final VERBOSE:Z

.field private static mIsHexInput:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mNiNotification:Landroid/app/Notification;

.field private mPlaySounds:Z

.field private mPopupImmediately:Z

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPlaySounds:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->visible:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    .line 127
    iput-object p1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    .line 128
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 129
    return-void
.end method

.method static decodeGSMPackedString([B)Ljava/lang/String;
    .locals 11
    .parameter "input"

    .prologue
    .line 289
    const/16 v0, 0xd

    .line 290
    .local v0, CHAR_CR:C
    const/4 v3, 0x0

    .line 291
    .local v3, nStridx:I
    const/4 v2, 0x0

    .line 292
    .local v2, nPckidx:I
    array-length v6, p0

    .line 293
    .local v6, num_bytes:I
    const/4 v1, 0x0

    .line 294
    .local v1, cPrev:I
    const/4 v0, 0x0

    .line 297
    .local v0, cCurr:I
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v8, v4, [B

    .line 298
    .local v8, stringBuf:[B
    const-string v7, ""

    .local v7, result:Ljava/lang/String;
    move v5, v3

    .end local v3           #nStridx:I
    .local v5, nStridx:I
    move v3, v2

    .line 300
    .end local v2           #nPckidx:I
    .local v3, nPckidx:I
    :goto_0
    if-ge v3, v6, :cond_4

    .line 302
    and-int/lit8 v0, v5, 0x7

    int-to-byte v4, v0

    .line 303
    .local v4, nShift:B
    add-int/lit8 v2, v3, 0x1

    .end local v3           #nPckidx:I
    .restart local v2       #nPckidx:I
    aget-byte v0, p0, v3

    .line 304
    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x100

    .line 309
    :cond_0
    shl-int v3, v0, v4

    const/16 v9, 0x8

    sub-int/2addr v9, v4

    shr-int/2addr v1, v9

    or-int/2addr v1, v3

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v3, v1

    .line 310
    .local v3, nextChar:B
    add-int/lit8 v1, v5, 0x1

    .end local v5           #nStridx:I
    .local v1, nStridx:I
    aput-byte v3, v8, v5

    .line 315
    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    .line 320
    if-eq v2, v6, :cond_2

    shr-int/lit8 v3, v0, 0x1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    .end local v3           #nextChar:B
    .end local v4           #nShift:B
    move p0, v0

    .end local v0           #cCurr:I
    .local p0, cCurr:I
    move v0, v2

    .line 333
    .end local v2           #nPckidx:I
    .local v0, nPckidx:I
    :goto_1
    :try_start_0
    new-instance p0, Ljava/lang/String;

    .end local p0           #cCurr:I
    const/4 v0, 0x0

    const-string v2, "US-ASCII"

    .end local v0           #nPckidx:I
    invoke-direct {p0, v8, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v7           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    :goto_2
    return-object p0

    .line 325
    .local v0, cCurr:I
    .restart local v2       #nPckidx:I
    .restart local v7       #result:Ljava/lang/String;
    .local p0, input:[B
    :cond_1
    shr-int/lit8 v3, v0, 0x1

    int-to-byte v4, v3

    .line 326
    .local v4, nextChar:B
    add-int/lit8 v3, v1, 0x1

    .end local v1           #nStridx:I
    .local v3, nStridx:I
    aput-byte v4, v8, v1

    move v1, v4

    .line 329
    .end local v4           #nextChar:B
    .local v1, nextChar:B
    :goto_3
    move v1, v0

    .local v1, cPrev:I
    move v5, v3

    .end local v3           #nStridx:I
    .restart local v5       #nStridx:I
    move v3, v2

    .end local v2           #nPckidx:I
    .local v3, nPckidx:I
    goto :goto_0

    .line 335
    .end local v0           #cCurr:I
    .end local v3           #nPckidx:I
    .end local v5           #nStridx:I
    .end local p0           #input:[B
    .local v1, nStridx:I
    :catch_0
    move-exception p0

    .line 337
    .local p0, e:Ljava/io/UnsupportedEncodingException;
    const-string v0, "GpsNetInitiatedHandler"

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Ljava/io/UnsupportedEncodingException;
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v7

    .end local v7           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    goto :goto_2

    .restart local v0       #cCurr:I
    .restart local v2       #nPckidx:I
    .local v3, nextChar:B
    .local v4, nShift:B
    .restart local v7       #result:Ljava/lang/String;
    .local p0, input:[B
    :cond_2
    move p0, v0

    .end local v0           #cCurr:I
    .local p0, cCurr:I
    move v0, v2

    .end local v2           #nPckidx:I
    .local v0, nPckidx:I
    goto :goto_1

    .local v0, cCurr:I
    .restart local v2       #nPckidx:I
    .local p0, input:[B
    :cond_3
    move v10, v3

    .end local v3           #nextChar:B
    .local v10, nextChar:B
    move v3, v1

    .end local v1           #nStridx:I
    .local v3, nStridx:I
    move v1, v10

    .end local v10           #nextChar:B
    .local v1, nextChar:B
    goto :goto_3

    .end local v2           #nPckidx:I
    .end local v4           #nShift:B
    .local v1, cPrev:I
    .local v3, nPckidx:I
    .restart local v5       #nStridx:I
    :cond_4
    move p0, v0

    .end local v0           #cCurr:I
    .local p0, cCurr:I
    move v1, v5

    .end local v5           #nStridx:I
    .local v1, nStridx:I
    move v0, v3

    .end local v3           #nPckidx:I
    .local v0, nPckidx:I
    goto :goto_1
.end method

.method private static decodeString(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 5
    .parameter "original"
    .parameter "isHex"
    .parameter "coding"

    .prologue
    .line 383
    move-object v0, p0

    .line 384
    .local v0, decoded:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->stringToByteArray(Ljava/lang/String;Z)[B

    move-result-object v1

    .line 386
    .local v1, input:[B
    packed-switch p2, :pswitch_data_0

    .line 408
    const-string v2, "GpsNetInitiatedHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for NI text "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_0
    return-object v0

    .line 388
    :pswitch_0
    move-object v0, p0

    .line 389
    goto :goto_0

    .line 392
    :pswitch_1
    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeGSMPackedString([B)Ljava/lang/String;

    move-result-object v0

    .line 393
    goto :goto_0

    .line 396
    :pswitch_2
    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeUTF8String([B)Ljava/lang/String;

    move-result-object v0

    .line 397
    goto :goto_0

    .line 400
    :pswitch_3
    invoke-static {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeUCS2String([B)Ljava/lang/String;

    move-result-object v0

    .line 401
    goto :goto_0

    .line 404
    :pswitch_4
    move-object v0, p0

    .line 405
    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static decodeUCS2String([B)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    .line 358
    const-string v0, ""

    .line 360
    .local v0, decoded:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-16"

    invoke-direct {v1, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #decoded:Ljava/lang/String;
    .local v1, decoded:Ljava/lang/String;
    move-object v0, v1

    .line 366
    .end local v1           #decoded:Ljava/lang/String;
    .restart local v0       #decoded:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 362
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 364
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "GpsNetInitiatedHandler"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static decodeUTF8String([B)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    .line 345
    const-string v0, ""

    .line 347
    .local v0, decoded:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #decoded:Ljava/lang/String;
    .local v1, decoded:Ljava/lang/String;
    move-object v0, v1

    .line 353
    .end local v1           #decoded:Ljava/lang/String;
    .restart local v0       #decoded:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 349
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 351
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "GpsNetInitiatedHandler"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getDialogMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;
    .locals 1
    .parameter "notif"

    .prologue
    .line 449
    invoke-static {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDialogTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;
    .locals 1
    .parameter "notif"

    .prologue
    .line 443
    invoke-static {p0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDlgIntent(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;
    .locals 6
    .parameter "notif"

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDialogTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, title:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDialogMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, message:Ljava/lang/String;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    iget-object v3, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/internal/app/NetInitiatedActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 245
    const-string/jumbo v3, "notif_id"

    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string/jumbo v3, "timeout"

    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    const-string v3, "default_resp"

    iget v4, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string v3, "GpsNetInitiatedHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateIntent, title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-object v0
.end method

.method private static getNotifMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;
    .locals 7
    .parameter "notif"

    .prologue
    .line 433
    const-string v1, "NI Request received from [%s] for client [%s]!"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v5, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    invoke-static {v4, v5, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v5, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    invoke-static {v4, v5, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, message:Ljava/lang/String;
    return-object v0
.end method

.method private static getNotifTicker(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;
    .locals 7
    .parameter "notif"

    .prologue
    .line 417
    const-string v1, "Position request! ReqId: [%s] ClientName: [%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v5, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    invoke-static {v4, v5, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v5, Lcom/android/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    invoke-static {v4, v5, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, ticker:Ljava/lang/String;
    return-object v0
.end method

.method private static getNotifTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;
    .locals 3
    .parameter "notif"

    .prologue
    .line 426
    const-string v1, "Position Request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, title:Ljava/lang/String;
    return-object v0
.end method

.method private openNiDialog(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 4
    .parameter "notif"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDlgIntent(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;

    move-result-object v0

    .line 225
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "GpsNetInitiatedHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openNiDialog, notifyId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestorId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 230
    return-void
.end method

.method private declared-synchronized setNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 8
    .parameter "notif"

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 218
    :goto_0
    monitor-exit p0

    return-void

    .line 185
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifTitle(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, title:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifMessage(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, message:Ljava/lang/String;
    const-string v5, "GpsNetInitiatedHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setNiNotification, notifyId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    if-nez v5, :cond_1

    .line 194
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    .line 195
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    const v6, 0x10802ff

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 196
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 199
    :cond_1
    iget-boolean v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPlaySounds:Z

    if-eqz v5, :cond_2

    .line 200
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 205
    :goto_1
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    const/16 v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 206
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    invoke-static {p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getNotifTicker(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 209
    iget-boolean v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    if-nez v5, :cond_3

    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getDlgIntent(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;

    move-result-object v5

    move-object v0, v5

    .line 210
    .local v0, intent:Landroid/content/Intent;
    :goto_2
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 211
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 213
    iget-boolean v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->visible:Z

    if-eqz v5, :cond_4

    .line 214
    iget v5, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget-object v6, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 179
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    .end local v3           #pi:Landroid/app/PendingIntent;
    .end local v4           #title:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 202
    .restart local v1       #message:Ljava/lang/String;
    .restart local v2       #notificationManager:Landroid/app/NotificationManager;
    .restart local v4       #title:Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 209
    :cond_3
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v0, v5

    goto :goto_2

    .line 216
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v3       #pi:Landroid/app/PendingIntent;
    :cond_4
    iget v5, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method static stringToByteArray(Ljava/lang/String;Z)[B
    .locals 5
    .parameter "original"
    .parameter "isHex"

    .prologue
    .line 260
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    move v1, v3

    .line 261
    .local v1, length:I
    :goto_0
    new-array v2, v1, [B

    .line 264
    .local v2, output:[B
    if-eqz p1, :cond_1

    .line 266
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 268
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #output:[B
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v3

    goto :goto_0

    .line 272
    .restart local v1       #length:I
    .restart local v2       #output:[B
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 274
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 278
    :cond_2
    return-object v2
.end method


# virtual methods
.method public handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 3
    .parameter "notif"

    .prologue
    .line 134
    const-string v0, "GpsNetInitiatedHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNiNotification notificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->openNiDialog(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 145
    :cond_0
    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    if-nez v0, :cond_3

    .line 153
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 157
    :cond_3
    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_6

    :cond_4
    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-boolean v0, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    if-eqz v0, :cond_7

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/android/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    iget v1, p1, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->sendNiResponse(II)Z

    .line 175
    :cond_7
    return-void
.end method

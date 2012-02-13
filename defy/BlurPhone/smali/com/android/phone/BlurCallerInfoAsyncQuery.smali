.class public Lcom/android/phone/BlurCallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "BlurCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BlurCallerInfoAsyncQuery$1;,
        Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Lcom/android/phone/BlurCallerInfoAsyncQuery$QueryPoolException;,
        Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EVENT_ADD_LISTENER:I = 0x2

.field private static final EVENT_EMERGENCY_NUMBER:I = 0x4

.field private static final EVENT_END_OF_QUEUE:I = 0x3

.field private static final EVENT_FDN_QUERY:I = 0x6

.field private static final EVENT_NEW_QUERY:I = 0x1

.field private static final EVENT_SDN_QUERY:I = 0x8

.field private static final EVENT_VOICEMAIL_NUMBER:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "BlrClrInfoAsyncQry"

.field private static sSkipVmCheck:Z


# instance fields
.field private mHandler:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->DBG:Z

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->sSkipVmCheck:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/BlurCallerInfoAsyncQuery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->release()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/BlurCallerInfoAsyncQuery;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->getNameFromQuery(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/BlurCallerInfoAsyncQuery;)Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->mHandler:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    return-object v0
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "contactRef"

    .prologue
    .line 530
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 531
    :cond_0
    new-instance v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/phone/BlurCallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_1
    new-instance v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/phone/BlurCallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/phone/BlurCallerInfoAsyncQuery$1;)V

    iput-object v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->mHandler:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 534
    iget-object v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->mHandler:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #setter for: Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$702(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 535
    iget-object v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->mHandler:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #setter for: Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, p2}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$902(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 536
    return-void
.end method

.method private getNameFromQuery(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cursor"
    .parameter "phoneNumber"

    .prologue
    .line 405
    const/4 v1, 0x0

    .line 406
    .local v1, name:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 407
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 409
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 410
    const-string v2, "number"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, cursorPhoneNumber:Ljava/lang/String;
    invoke-static {p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 418
    .end local v0           #cursorPhoneNumber:Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 420
    :cond_1
    return-object v1

    .line 415
    .restart local v0       #cursorPhoneNumber:Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 552
    const-string v0, "BlrClrInfoAsyncQry"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 542
    iget-object v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->mHandler:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #setter for: Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$702(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 543
    iget-object v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->mHandler:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #setter for: Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$902(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 544
    iget-object v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->mHandler:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #setter for: Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v0, v1}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$1102(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    .line 545
    iput-object v1, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->mHandler:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 546
    return-void
.end method

.method public static startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/BlurCallerInfoAsyncQuery;
    .locals 9
    .parameter "token"
    .parameter "context"
    .parameter "contactRef"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 437
    new-instance v8, Lcom/android/phone/BlurCallerInfoAsyncQuery;

    invoke-direct {v8}, Lcom/android/phone/BlurCallerInfoAsyncQuery;-><init>()V

    .line 438
    .local v8, c:Lcom/android/phone/BlurCallerInfoAsyncQuery;
    invoke-direct {v8, p1, p2}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 440
    sget-boolean v0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting query for URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 443
    :cond_0
    new-instance v2, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v4}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/phone/BlurCallerInfoAsyncQuery$1;)V

    .line 444
    .local v2, cw:Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;
    iput-object p3, v2, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 445
    iput-object p4, v2, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 446
    iput v3, v2, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 447
    #setter for: Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->isForUriQuery:Z
    invoke-static {v2, v3}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->access$502(Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;Z)Z

    .line 449
    iget-object v0, v8, Lcom/android/phone/BlurCallerInfoAsyncQuery;->mHandler:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p0

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-object v8
.end method

.method public static startQuery(ILandroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/BlurCallerInfoAsyncQuery;
    .locals 8
    .parameter "token"
    .parameter "context"
    .parameter "baseUri"
    .parameter "number"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    .line 460
    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 462
    .local v3, contactRef:Landroid/net/Uri;
    new-instance p2, Lcom/android/phone/BlurCallerInfoAsyncQuery;

    .end local p2
    invoke-direct {p2}, Lcom/android/phone/BlurCallerInfoAsyncQuery;-><init>()V

    .line 463
    .local p2, c:Lcom/android/phone/BlurCallerInfoAsyncQuery;
    invoke-direct {p2, p1, v3}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 465
    sget-boolean p1, Lcom/android/phone/BlurCallerInfoAsyncQuery;->DBG:Z

    .end local p1
    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "starting query for number: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " handler: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 468
    :cond_0
    new-instance v2, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;

    const/4 p1, 0x0

    invoke-direct {v2, p1}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/phone/BlurCallerInfoAsyncQuery$1;)V

    .line 469
    .local v2, cw:Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;
    iput-object p4, v2, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 470
    iput-object p5, v2, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 471
    iput-object p3, v2, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    .line 474
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 475
    const/4 p1, 0x4

    iput p1, v2, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 494
    .end local p4
    :goto_0
    const/4 p1, 0x7

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string p3, "_id"

    .end local p3
    aput-object p3, v4, p1

    const/4 p1, 0x1

    const-string p3, "display_name"

    aput-object p3, v4, p1

    const/4 p1, 0x2

    const-string p3, "number"

    aput-object p3, v4, p1

    const/4 p1, 0x3

    const-string p3, "label"

    aput-object p3, v4, p1

    const/4 p1, 0x4

    const-string p3, "type"

    aput-object p3, v4, p1

    const/4 p1, 0x5

    const-string p3, "custom_ringtone"

    aput-object p3, v4, p1

    const/4 p1, 0x6

    const-string p3, "send_to_voicemail"

    aput-object p3, v4, p1

    .line 502
    .local v4, projection:[Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p3, "limit"

    const-string p4, "1"

    invoke-virtual {p1, p3, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 503
    iget-object v0, p2, Lcom/android/phone/BlurCallerInfoAsyncQuery;->mHandler:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    return-object p2

    .line 477
    .end local v4           #projection:[Ljava/lang/String;
    .restart local p3
    .restart local p4
    :cond_1
    const/4 p4, 0x0

    .line 478
    .local p4, vmNumber:Ljava/lang/String;
    sget-boolean p1, Lcom/android/phone/BlurCallerInfoAsyncQuery;->sSkipVmCheck:Z

    if-nez p1, :cond_2

    .line 480
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 488
    .end local p4           #vmNumber:Ljava/lang/String;
    .local p1, vmNumber:Ljava/lang/String;
    :goto_1
    invoke-static {p3, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .end local p1           #vmNumber:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 489
    const/4 p1, 0x5

    iput p1, v2, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_0

    .line 481
    .restart local p4       #vmNumber:Ljava/lang/String;
    :catch_0
    move-exception p1

    .line 485
    .local p1, ex:Ljava/lang/SecurityException;
    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/phone/BlurCallerInfoAsyncQuery;->sSkipVmCheck:Z

    .end local p1           #ex:Ljava/lang/SecurityException;
    :cond_2
    move-object p1, p4

    .end local p4           #vmNumber:Ljava/lang/String;
    .local p1, vmNumber:Ljava/lang/String;
    goto :goto_1

    .line 491
    .end local p1           #vmNumber:Ljava/lang/String;
    :cond_3
    const/4 p1, 0x1

    iput p1, v2, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_0
.end method


# virtual methods
.method public addQueryListener(ILcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .locals 8
    .parameter "token"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    const/4 v3, 0x0

    .line 513
    sget-boolean v0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding listener to query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->mHandler:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #getter for: Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$900(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->mHandler:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-virtual {v1}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 517
    :cond_0
    new-instance v2, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v3}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/phone/BlurCallerInfoAsyncQuery$1;)V

    .line 518
    .local v2, cw:Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;
    iput-object p2, v2, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 519
    iput-object p3, v2, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 520
    const/4 v0, 0x2

    iput v0, v2, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 522
    iget-object v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery;->mHandler:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

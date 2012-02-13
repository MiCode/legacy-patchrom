.class Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BlurCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BlurCallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# instance fields
.field private blurInfo:Lcom/android/phone/BlurCallerInfo;

.field private mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

.field private mQueryComplete:Z

.field private mQueryContext:Landroid/content/Context;

.field private mQueryUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/phone/BlurCallerInfoAsyncQuery;


# direct methods
.method private constructor <init>(Lcom/android/phone/BlurCallerInfoAsyncQuery;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    .line 196
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryComplete:Z

    .line 197
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BlurCallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/phone/BlurCallerInfoAsyncQuery$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/phone/BlurCallerInfoAsyncQuery;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/phone/BlurCallerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->blurInfo:Lcom/android/phone/BlurCallerInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object p1
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 201
    new-instance v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 25
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 227
    invoke-static {}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query complete for token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/BlurCallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$100(Ljava/lang/String;)V

    .line 230
    :cond_0
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;

    move-object/from16 v23, v0

    .line 231
    .local v23, cw:Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;
    if-nez v23, :cond_3

    .line 236
    invoke-static {}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Cookie is null, ignoring onQueryComplete() request."

    #calls: Lcom/android/phone/BlurCallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$100(Ljava/lang/String;)V

    .line 237
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 395
    .end local p2
    :cond_2
    :goto_0
    return-void

    .line 240
    .restart local p2
    :cond_3
    invoke-static {}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$000()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryComplete for event event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/BlurCallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$100(Ljava/lang/String;)V

    .line 242
    :cond_4
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    move-object v4, v0

    #calls: Lcom/android/phone/BlurCallerInfoAsyncQuery;->release()V
    invoke-static {v4}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$200(Lcom/android/phone/BlurCallerInfoAsyncQuery;)V

    .line 244
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 249
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    if-eqz v4, :cond_6

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    move v4, v0

    const/4 v5, 0x6

    if-eq v4, v5, :cond_6

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    move v4, v0

    const/16 v5, 0x8

    if-ne v4, v5, :cond_17

    .line 250
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    move-object v4, v0

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    move-object v4, v0

    if-nez v4, :cond_8

    .line 251
    :cond_7
    new-instance v4, Lcom/android/phone/BlurCallerInfoAsyncQuery$QueryPoolException;

    const-string v5, "Bad context or query uri, or BlurCallerInfoAsyncQuery already released."

    invoke-direct {v4, v5}, Lcom/android/phone/BlurCallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 260
    :cond_8
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    move v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_d

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x104029c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    move-object v5, v0

    iput-object v5, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    const v5, 0x1080275

    iput v5, v4, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 270
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryComplete:Z

    .line 371
    .end local p2
    :cond_9
    :goto_1
    invoke-static {}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$000()Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "constructing CallerInfo object for token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/BlurCallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$100(Ljava/lang/String;)V

    .line 374
    :cond_a
    new-instance v14, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;

    const/4 v4, 0x0

    invoke-direct {v14, v4}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/phone/BlurCallerInfoAsyncQuery$1;)V

    .line 375
    .local v14, endMarker:Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;
    const/4 v4, 0x3

    iput v4, v14, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 376
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move/from16 v13, p1

    invoke-virtual/range {v12 .. v19}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .end local v14           #endMarker:Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;
    :cond_b
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object v4, v0

    if-eqz v4, :cond_2

    .line 391
    invoke-static {}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$000()Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifying listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/BlurCallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$100(Ljava/lang/String;)V

    .line 393
    :cond_c
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object v4, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v6, v0

    move-object v0, v4

    move/from16 v1, p1

    move-object v2, v5

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    goto/16 :goto_0

    .line 272
    .restart local p2
    :cond_d
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    move v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_e

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 278
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    move-object v5, v0

    iput-object v5, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    const v5, 0x7f020134

    iput v5, v4, Lcom/android/internal/telephony/CallerInfo;->photoResource:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_2
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryComplete:Z

    goto/16 :goto_1

    .line 290
    :cond_e
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    move v4, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_f

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    move-object v5, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p3

    move-object v2, v6

    #calls: Lcom/android/phone/BlurCallerInfoAsyncQuery;->getNameFromQuery(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$300(Lcom/android/phone/BlurCallerInfoAsyncQuery;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 292
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryComplete:Z

    goto/16 :goto_1

    .line 295
    :cond_f
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    move v4, v0

    const/16 v5, 0x8

    if-ne v4, v5, :cond_11

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    move-object v5, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p3

    move-object v2, v6

    #calls: Lcom/android/phone/BlurCallerInfoAsyncQuery;->getNameFromQuery(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$300(Lcom/android/phone/BlurCallerInfoAsyncQuery;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 297
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryComplete:Z

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    .line 301
    :cond_10
    new-instance v6, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;

    const/4 v4, 0x0

    invoke-direct {v6, v4}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/phone/BlurCallerInfoAsyncQuery$1;)V

    .line 302
    .local v6, fdnMarker:Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;
    const/4 v4, 0x6

    iput v4, v6, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 303
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    move-object v4, v0

    iput-object v4, v6, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    .line 304
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    move-object v4, v0

    iput-object v4, v6, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 305
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object v4, v0

    iput-object v4, v6, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 306
    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v8, v4

    const/4 v4, 0x1

    const-string v5, "number"

    aput-object v5, v8, v4

    .line 307
    .local v8, columns:[Ljava/lang/String;
    const-string v4, "content://icc/fdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 317
    .end local v6           #fdnMarker:Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;
    .end local v8           #columns:[Ljava/lang/String;
    :cond_11
    #getter for: Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->isForUriQuery:Z
    invoke-static/range {v23 .. v23}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->access$500(Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/phone/BlurCallerInfo;->getCallerInfoForUriQuery(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/phone/BlurCallerInfo;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 324
    :goto_3
    const-string v4, "ro.mot.setuptype"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    instance-of v4, v4, Lcom/android/phone/BlurCallerInfo;

    if-eqz v4, :cond_12

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 p2, v0

    .end local p2
    check-cast p2, Lcom/android/phone/BlurCallerInfo;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->blurInfo:Lcom/android/phone/BlurCallerInfo;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->blurInfo:Lcom/android/phone/BlurCallerInfo;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/android/phone/BlurCallerInfo;->isQueried:Z

    if-nez v4, :cond_12

    .line 327
    new-instance v4, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;-><init>(Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)V

    invoke-virtual {v4}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->start()V

    .line 341
    :cond_12
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 345
    :cond_13
    invoke-static {}, Lcom/motorola/blur/util/contacts/ContactsUtils;->isImportContactToSimcardInprogress()Z

    move-result v4

    if-nez v4, :cond_16

    .line 348
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    move-object v0, v4

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    .line 349
    .local v24, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v24, :cond_16

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_16

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_16

    .line 353
    :cond_14
    new-instance v11, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;

    const/4 v4, 0x0

    invoke-direct {v11, v4}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/phone/BlurCallerInfoAsyncQuery$1;)V

    .line 354
    .local v11, sdnMarker:Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;
    const/16 v4, 0x8

    iput v4, v11, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 355
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    move-object v4, v0

    iput-object v4, v11, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    .line 356
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    move-object v4, v0

    iput-object v4, v11, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 357
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object v4, v0

    iput-object v4, v11, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 358
    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v8, v4

    const/4 v4, 0x1

    const-string v5, "number"

    aput-object v5, v8, v4

    .line 359
    .restart local v8       #columns:[Ljava/lang/String;
    const-string v4, "content://icc/sdn"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object v13, v8

    invoke-virtual/range {v9 .. v16}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 321
    .end local v8           #columns:[Ljava/lang/String;
    .end local v11           #sdnMarker:Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;
    .end local v24           #phone:Lcom/android/internal/telephony/Phone;
    .restart local p2
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/phone/BlurCallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    goto/16 :goto_3

    .line 367
    .end local p2
    :cond_16
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryComplete:Z

    goto/16 :goto_1

    .line 378
    .restart local p2
    :cond_17
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryComplete:Z

    move v4, v0

    if-nez v4, :cond_b

    .line 379
    new-instance v17, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/phone/BlurCallerInfoAsyncQuery$1;)V

    .line 380
    .local v17, cwrapper:Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 381
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 382
    const/4 v4, 0x2

    move v0, v4

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/phone/BlurCallerInfoAsyncQuery;

    move-object v4, v0

    #getter for: Lcom/android/phone/BlurCallerInfoAsyncQuery;->mHandler:Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    invoke-static {v4}, Lcom/android/phone/BlurCallerInfoAsyncQuery;->access$800(Lcom/android/phone/BlurCallerInfoAsyncQuery;)Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move-result-object v15

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v16, p1

    invoke-virtual/range {v15 .. v22}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 282
    .end local v17           #cwrapper:Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;
    :catch_0
    move-exception v4

    goto/16 :goto_2
.end method

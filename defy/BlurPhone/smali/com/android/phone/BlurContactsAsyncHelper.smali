.class public final Lcom/android/phone/BlurContactsAsyncHelper;
.super Landroid/os/Handler;
.source "BlurContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BlurContactsAsyncHelper$1;,
        Lcom/android/phone/BlurContactsAsyncHelper$WorkerHandler;,
        Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;,
        Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;,
        Lcom/android/phone/BlurContactsAsyncHelper$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_TOKEN:I = -0x1

.field private static final EVENT_LOAD_IMAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "BlrCtactsAsyncHlpr"

.field private static sInstance:Lcom/android/phone/BlurContactsAsyncHelper;

.field private static final sPhotoSize:Landroid/graphics/Rect;

.field private static sThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x96

    const/4 v1, 0x0

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/phone/BlurContactsAsyncHelper;->sPhotoSize:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Lcom/android/phone/BlurContactsAsyncHelper;

    invoke-direct {v0}, Lcom/android/phone/BlurContactsAsyncHelper;-><init>()V

    sput-object v0, Lcom/android/phone/BlurContactsAsyncHelper;->sInstance:Lcom/android/phone/BlurContactsAsyncHelper;

    .line 78
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 225
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 226
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 228
    new-instance v1, Lcom/android/phone/BlurContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/phone/BlurContactsAsyncHelper$WorkerHandler;-><init>(Lcom/android/phone/BlurContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/phone/BlurContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 229
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 8
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v0, 0x0

    .line 237
    const/4 v1, -0x1

    move-object v2, v0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/phone/BlurContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/android/phone/BlurContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 239
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/android/phone/BlurContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 4
    .parameter "info"
    .parameter "token"
    .parameter "listener"
    .parameter "cookie"
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v3, 0x0

    .line 265
    if-nez p6, :cond_0

    .line 267
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    :goto_0
    return-void

    .line 276
    :cond_0
    new-instance v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;-><init>(Lcom/android/phone/BlurContactsAsyncHelper$1;)V

    .line 277
    .local v0, args:Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;
    iput-object p3, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 278
    iput-object p4, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 279
    iput-object p5, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    .line 280
    iput-object p6, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 281
    iput p7, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->defaultResource:I

    .line 282
    iput-object p2, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/phone/BlurContactsAsyncHelper$OnImageLoadCompleteListener;

    .line 283
    iput-object p0, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    .line 286
    sget-object v2, Lcom/android/phone/BlurContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 287
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 288
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 295
    const/4 v2, -0x1

    if-eq p7, v2, :cond_1

    .line 296
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    :goto_1
    sget-object v2, Lcom/android/phone/BlurContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 299
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {p5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 8
    .parameter "info"
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v2, 0x0

    .line 248
    const/4 v1, -0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/phone/BlurContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILcom/android/phone/BlurContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 250
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 311
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;

    .line 312
    .local v0, args:Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 346
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 314
    .restart local p0
    :pswitch_0
    const/4 v1, 0x0

    .line 318
    .local v1, imagePresent:Z
    iget-object v2, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 319
    iget-object v2, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-object v2, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object p0, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    iget-object v2, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    .line 323
    iget-object v2, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object p0, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    iput-object p0, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 325
    :cond_1
    const/4 v1, 0x1

    .line 332
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_3

    .line 333
    iget-object v2, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 337
    :cond_3
    iget-object v2, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/phone/BlurContactsAsyncHelper$OnImageLoadCompleteListener;

    if-eqz v2, :cond_0

    .line 340
    iget-object v2, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/phone/BlurContactsAsyncHelper$OnImageLoadCompleteListener;

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/android/phone/BlurContactsAsyncHelper$OnImageLoadCompleteListener;->onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 326
    .restart local p0
    :cond_4
    iget v2, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->defaultResource:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 327
    iget-object v2, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    iget-object v2, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget v3, v0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->defaultResource:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

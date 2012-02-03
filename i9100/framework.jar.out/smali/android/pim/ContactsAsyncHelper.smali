.class public Landroid/pim/ContactsAsyncHelper;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/ContactsAsyncHelper$1;,
        Landroid/pim/ContactsAsyncHelper$WorkerHandler;,
        Landroid/pim/ContactsAsyncHelper$ImageTracker;,
        Landroid/pim/ContactsAsyncHelper$WorkerArgs;,
        Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_TOKEN:I = -0x1

.field private static final EVENT_LOAD_IMAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ContactsAsyncHelper"

.field private static sInstance:Landroid/pim/ContactsAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Landroid/pim/ContactsAsyncHelper;

    invoke-direct {v0}, Landroid/pim/ContactsAsyncHelper;-><init>()V

    sput-object v0, Landroid/pim/ContactsAsyncHelper;->sInstance:Landroid/pim/ContactsAsyncHelper;

    .line 68
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 221
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 223
    new-instance v1, Landroid/pim/ContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/pim/ContactsAsyncHelper$WorkerHandler;-><init>(Landroid/pim/ContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Landroid/pim/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 224
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

    .line 232
    const/4 v1, -0x1

    move-object v2, v0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 234
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
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

    .line 260
    if-nez p6, :cond_0

    .line 262
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    :goto_0
    return-void

    .line 271
    :cond_0
    new-instance v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/pim/ContactsAsyncHelper$WorkerArgs;-><init>(Landroid/pim/ContactsAsyncHelper$1;)V

    .line 272
    .local v0, args:Landroid/pim/ContactsAsyncHelper$WorkerArgs;
    iput-object p3, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 273
    iput-object p4, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 274
    iput-object p5, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    .line 275
    iput-object p6, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 276
    iput p7, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    .line 277
    iput-object p2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->listener:Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;

    .line 278
    iput-object p0, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    .line 281
    sget-object v2, Landroid/pim/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 282
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 283
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    const/4 v2, -0x1

    if-eq p7, v2, :cond_1

    .line 291
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    :goto_1
    sget-object v2, Landroid/pim/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 294
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

    .line 243
    const/4 v1, -0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;ILandroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 245
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 306
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;

    .line 307
    .local v0, args:Landroid/pim/ContactsAsyncHelper$WorkerArgs;
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 341
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 309
    .restart local p0
    :pswitch_0
    const/4 v1, 0x0

    .line 313
    .local v1, imagePresent:Z
    iget-object v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 314
    iget-object v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    iget-object v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object p0, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    .line 318
    iget-object v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object p0, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    iput-object p0, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 320
    :cond_1
    const/4 v1, 0x1

    .line 327
    :cond_2
    :goto_1
    iget-object v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_3

    .line 328
    iget-object v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 332
    :cond_3
    iget-object v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->listener:Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->listener:Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v5, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v4, v5, v1}, Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;->onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 321
    .restart local p0
    :cond_4
    iget v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 322
    iget-object v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    iget-object v2, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget v3, v0, Landroid/pim/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

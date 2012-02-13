.class public Lcom/android/phone/AsyncIdentityPhotoLoader;
.super Landroid/os/Handler;
.source "AsyncIdentityPhotoLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AsyncIdentityPhotoLoader$1;,
        Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerHandler;,
        Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;,
        Lcom/android/phone/AsyncIdentityPhotoLoader$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final EVENT_LOAD_IMAGE:I = 0x1

.field private static final sPhotoSize:Landroid/graphics/Rect;


# instance fields
.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x30

    const/4 v1, 0x0

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/phone/AsyncIdentityPhotoLoader;->sPhotoSize:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 86
    new-instance v0, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerHandler;

    invoke-static {}, Lcom/motorola/blur/util/os/MyLooper;->singleton()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerHandler;-><init>(Lcom/android/phone/AsyncIdentityPhotoLoader;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/AsyncIdentityPhotoLoader;->mWorkerHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/AsyncIdentityPhotoLoader;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 118
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;

    .line 119
    .local v0, args:Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    .line 126
    .end local p0
    :goto_0
    return-void

    .line 121
    .restart local p0
    :pswitch_0
    iget-object v1, v0, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;->listener:Lcom/android/phone/AsyncIdentityPhotoLoader$OnImageLoadCompleteListener;

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object p0, v0, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, p0, v3, v4}, Lcom/android/phone/AsyncIdentityPhotoLoader$OnImageLoadCompleteListener;->onImageLoadComplete(ILandroid/graphics/Bitmap;Ljava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public startImageLoading(Landroid/content/Context;Landroid/net/Uri;Lcom/android/phone/AsyncIdentityPhotoLoader$OnImageLoadCompleteListener;Ljava/lang/Object;I)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "listener"
    .parameter "cookie"
    .parameter "token"

    .prologue
    .line 96
    new-instance v0, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;-><init>(Lcom/android/phone/AsyncIdentityPhotoLoader$1;)V

    .line 97
    .local v0, args:Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;
    iput-object p1, v0, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;->context:Landroid/content/Context;

    .line 98
    iput-object p2, v0, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;->uri:Landroid/net/Uri;

    .line 99
    iput-object p3, v0, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;->listener:Lcom/android/phone/AsyncIdentityPhotoLoader$OnImageLoadCompleteListener;

    .line 100
    iput-object p4, v0, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 102
    iget-object v2, p0, Lcom/android/phone/AsyncIdentityPhotoLoader;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, p5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 103
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 104
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    iget-object v2, p0, Lcom/android/phone/AsyncIdentityPhotoLoader;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 107
    return-void
.end method

.class Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerHandler;
.super Landroid/os/Handler;
.source "AsyncIdentityPhotoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AsyncIdentityPhotoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AsyncIdentityPhotoLoader;


# direct methods
.method public constructor <init>(Lcom/android/phone/AsyncIdentityPhotoLoader;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerHandler;->this$0:Lcom/android/phone/AsyncIdentityPhotoLoader;

    .line 58
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 62
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;

    .line 64
    .local v7, args:Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerHandler;->this$0:Lcom/android/phone/AsyncIdentityPhotoLoader;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/android/phone/AsyncIdentityPhotoLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 79
    .local v8, reply:Landroid/os/Message;
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, v8, Landroid/os/Message;->arg1:I

    .line 80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 82
    return-void

    .line 66
    .end local v8           #reply:Landroid/os/Message;
    :pswitch_0
    iget-object v0, v7, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;->context:Landroid/content/Context;

    iget-object v1, v7, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {}, Lcom/android/phone/Utils;->getPhotoContext()Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->PHOTO_SIZE_50PX:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadContactPhoto(Landroid/content/Context;JLcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v7, Lcom/android/phone/AsyncIdentityPhotoLoader$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

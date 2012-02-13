.class Lcom/android/phone/BlurContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "BlurContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BlurContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BlurContactsAsyncHelper;


# direct methods
.method public constructor <init>(Lcom/android/phone/BlurContactsAsyncHelper;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/phone/BlurContactsAsyncHelper;

    .line 192
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 193
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 196
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;

    .line 198
    .local v7, args:Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/android/phone/BlurContactsAsyncHelper$WorkerHandler;->this$0:Lcom/android/phone/BlurContactsAsyncHelper;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/android/phone/BlurContactsAsyncHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 216
    .local v8, reply:Landroid/os/Message;
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, v8, Landroid/os/Message;->arg1:I

    .line 217
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 219
    return-void

    .line 201
    .end local v8           #reply:Landroid/os/Message;
    :pswitch_0
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, v7, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v0, v7, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    iget-object v1, v7, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {}, Lcom/android/phone/Utils;->getPhotoContext()Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->PHOTO_SIZE_200PX:Landroid/graphics/Rect;

    iget v5, v7, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->defaultResource:I

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadContactPhoto(Landroid/content/Context;JLcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v9, v7, Lcom/android/phone/BlurContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

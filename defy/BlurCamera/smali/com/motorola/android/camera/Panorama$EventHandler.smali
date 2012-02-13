.class Lcom/motorola/android/camera/Panorama$EventHandler;
.super Landroid/os/Handler;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/camera/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mPan:Lcom/motorola/android/camera/Panorama;

.field final synthetic this$0:Lcom/motorola/android/camera/Panorama;


# direct methods
.method public constructor <init>(Lcom/motorola/android/camera/Panorama;Lcom/motorola/android/camera/Panorama;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "pan"
    .parameter "looper"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    .line 343
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 344
    iput-object p2, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->mPan:Lcom/motorola/android/camera/Panorama;

    .line 345
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const-string v2, "Panorama"

    .line 349
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 376
    const-string v0, "Panorama"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 351
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$100(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$PostviewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mPostviewCallback:Lcom/motorola/android/camera/Panorama$PostviewCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$100(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$PostviewCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->mPan:Lcom/motorola/android/camera/Panorama;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/motorola/android/camera/Panorama$PostviewCallback;->onPostviewTaken([BIILcom/motorola/android/camera/Panorama;)V

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$200(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mPictureCallback:Lcom/motorola/android/camera/Panorama$PictureCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$200(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$PictureCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget-object v2, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->mPan:Lcom/motorola/android/camera/Panorama;

    invoke-interface {v1, v0, v2}, Lcom/motorola/android/camera/Panorama$PictureCallback;->onPictureTaken([BLcom/motorola/android/camera/Panorama;)V

    goto :goto_0

    .line 359
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$300(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ShutterCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mShutterCallback:Lcom/motorola/android/camera/Panorama$ShutterCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$300(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ShutterCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/android/camera/Panorama$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 363
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mVFInfoCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$400(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mVFInfoCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$400(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->mPan:Lcom/motorola/android/camera/Panorama;

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;->onViewfinderInfo(IZLcom/motorola/android/camera/Panorama;)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mVFInfoCallback:Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$400(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->mPan:Lcom/motorola/android/camera/Panorama;

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/android/camera/Panorama$ViewfinderInfoCallback;->onViewfinderInfo(IZLcom/motorola/android/camera/Panorama;)V

    goto :goto_0

    .line 371
    :pswitch_4
    const-string v0, "Panorama"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mErrorCallback:Lcom/motorola/android/camera/Panorama$ErrorCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$500(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->this$0:Lcom/motorola/android/camera/Panorama;

    #getter for: Lcom/motorola/android/camera/Panorama;->mErrorCallback:Lcom/motorola/android/camera/Panorama$ErrorCallback;
    invoke-static {v0}, Lcom/motorola/android/camera/Panorama;->access$500(Lcom/motorola/android/camera/Panorama;)Lcom/motorola/android/camera/Panorama$ErrorCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/motorola/android/camera/Panorama$EventHandler;->mPan:Lcom/motorola/android/camera/Panorama;

    invoke-interface {v0, v1, v2}, Lcom/motorola/android/camera/Panorama$ErrorCallback;->onError(ILcom/motorola/android/camera/Panorama;)V

    goto/16 :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

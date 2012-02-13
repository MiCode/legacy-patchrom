.class Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$5;
.super Landroid/os/Handler;
.source "OnlineAlbumUpload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$5;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 351
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 354
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$5;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;

    #getter for: Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->startUpload:Z
    invoke-static {v0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->access$000(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload$5;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;

    invoke-virtual {v0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumUpload;->startUpload()V

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/motorola/blur/quickupload/OnlineAlbumUpload$8;
.super Landroid/os/Handler;
.source "OnlineAlbumUpload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/quickupload/OnlineAlbumUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;


# direct methods
.method constructor <init>(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$8;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 528
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 531
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$8;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    #getter for: Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->mStartUpload:Z
    invoke-static {v0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->access$100(Lcom/motorola/blur/quickupload/OnlineAlbumUpload;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumUpload$8;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumUpload;

    invoke-virtual {v0}, Lcom/motorola/blur/quickupload/OnlineAlbumUpload;->startUpload()V

    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

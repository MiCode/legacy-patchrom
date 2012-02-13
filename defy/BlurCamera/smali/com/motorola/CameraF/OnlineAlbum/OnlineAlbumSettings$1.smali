.class Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$1;
.super Landroid/os/Handler;
.source "OnlineAlbumSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$1;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 77
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    invoke-static {}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "handling message of INITSOCIALSHARE_FINISH "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$1;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    #getter for: Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->onlineAlbumAdapter:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;
    invoke-static {v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$100(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$1;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    #getter for: Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->initEntryList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$200(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$1;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    #getter for: Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->socialEntryList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$300(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$1;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    #getter for: Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->initEntryList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$200(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$1;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    #getter for: Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->onlineAlbumAdapter:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;
    invoke-static {v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$100(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumAdapter;->notifyDataSetChanged()V

    .line 90
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings$1;->this$0:Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;

    #calls: Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->loadPreferences()V
    invoke-static {v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;->access$400(Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumSettings;)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

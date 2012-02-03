.class Landroid/sec/clipboard/ClipboardExManager$2;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/ClipboardExManager;

.field final synthetic val$clipData:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 234
    :try_start_0
    #calls: Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->access$100()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v4

    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager$2;->val$clipData:Landroid/sec/clipboard/data/ClipboardData;

    invoke-interface {v3, v4, v5}, Landroid/sec/clipboard/IClipboardService;->SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 236
    .local v0, Result:Z
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/sec/clipboard/ClipboardExManager;->access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 238
    .local v2, msg:Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 239
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 243
    :goto_0
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager$2;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    #getter for: Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/sec/clipboard/ClipboardExManager;->access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 248
    .end local v0           #Result:Z
    .end local v2           #msg:Landroid/os/Message;
    :goto_1
    return-void

    .line 241
    .restart local v0       #Result:Z
    .restart local v2       #msg:Landroid/os/Message;
    :cond_0
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v0           #Result:Z
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 246
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "ClipboardExManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setData(ClipboardData)(RemoteException): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

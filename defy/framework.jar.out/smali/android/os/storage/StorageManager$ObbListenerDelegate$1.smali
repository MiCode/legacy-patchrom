.class Landroid/os/storage/StorageManager$ObbListenerDelegate$1;
.super Landroid/os/Handler;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/storage/StorageManager$ObbListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/OnObbStateChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/storage/StorageManager$ObbListenerDelegate;

.field final synthetic val$this$0:Landroid/os/storage/StorageManager;


# direct methods
.method constructor <init>(Landroid/os/storage/StorageManager$ObbListenerDelegate;Landroid/os/Looper;Landroid/os/storage/StorageManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ObbListenerDelegate;

    iput-object p3, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;->val$this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    iget-object v4, p0, Landroid/os/storage/StorageManager$ObbListenerDelegate$1;->this$1:Landroid/os/storage/StorageManager$ObbListenerDelegate;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->getListener()Landroid/os/storage/OnObbStateChangeListener;

    move-result-object v3

    .local v3, listener:Landroid/os/storage/OnObbStateChangeListener;
    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/storage/StorageManager$StorageEvent;

    .local v1, e:Landroid/os/storage/StorageManager$StorageEvent;
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;

    move-object v2, v0

    .local v2, ev:Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;
    iget-object v4, v2, Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;->path:Ljava/lang/String;

    iget v5, v2, Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;->state:I

    invoke-virtual {v3, v4, v5}, Landroid/os/storage/OnObbStateChangeListener;->onObbStateChange(Ljava/lang/String;I)V

    goto :goto_0

    .end local v2           #ev:Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;
    :cond_1
    const-string v4, "StorageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

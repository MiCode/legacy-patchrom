.class Landroid/content/SyncManager$InitializerServiceConnection$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/SyncManager$InitializerServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager$InitializerServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/SyncManager$InitializerServiceConnection;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/content/SyncManager$InitializerServiceConnection$1;->this$0:Landroid/content/SyncManager$InitializerServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/content/SyncManager$InitializerServiceConnection$1;->this$0:Landroid/content/SyncManager$InitializerServiceConnection;

    #getter for: Landroid/content/SyncManager$InitializerServiceConnection;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/content/SyncManager$InitializerServiceConnection;->access$600(Landroid/content/SyncManager$InitializerServiceConnection;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncManager$InitializerServiceConnection$1;->this$0:Landroid/content/SyncManager$InitializerServiceConnection;

    #getter for: Landroid/content/SyncManager$InitializerServiceConnection;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/content/SyncManager$InitializerServiceConnection;->access$600(Landroid/content/SyncManager$InitializerServiceConnection;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/content/SyncManager$InitializerServiceConnection$1;->this$0:Landroid/content/SyncManager$InitializerServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Landroid/content/SyncManager$InitializerServiceConnection$1;->this$0:Landroid/content/SyncManager$InitializerServiceConnection;

    const/4 v1, 0x0

    #setter for: Landroid/content/SyncManager$InitializerServiceConnection;->mContext:Landroid/content/Context;
    invoke-static {v0, v1}, Landroid/content/SyncManager$InitializerServiceConnection;->access$602(Landroid/content/SyncManager$InitializerServiceConnection;Landroid/content/Context;)Landroid/content/Context;

    :cond_0
    return-void
.end method

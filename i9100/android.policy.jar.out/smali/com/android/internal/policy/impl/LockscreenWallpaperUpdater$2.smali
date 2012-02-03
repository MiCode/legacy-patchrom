.class Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$2;
.super Landroid/content/BroadcastReceiver;
.source "LockscreenWallpaperUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$2;->this$0:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    const-string v2, "isChanged"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 111
    .local v1, mode:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$2;->this$0:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    #getter for: Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->access$300(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$2;->this$0:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    #getter for: Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->access$300(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x136

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    .end local v1           #mode:I
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$2;->this$0:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    #getter for: Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->access$300(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater$2;->this$0:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    #getter for: Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->access$300(Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x140

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

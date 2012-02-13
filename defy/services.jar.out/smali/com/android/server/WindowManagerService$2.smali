.class Lcom/android/server/WindowManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/WindowManagerService$2;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Lcom/android/server/WindowManagerService$2;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->enableKeyguard(Z)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$2;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService$2;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v2, -0x1

    #setter for: Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I
    invoke-static {v1, v2}, Lcom/android/server/WindowManagerService;->access$202(Lcom/android/server/WindowManagerService;I)I

    iget-object v1, p0, Lcom/android/server/WindowManagerService$2;->this$0:Lcom/android/server/WindowManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Z
    invoke-static {v1, v2}, Lcom/android/server/WindowManagerService;->access$102(Lcom/android/server/WindowManagerService;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

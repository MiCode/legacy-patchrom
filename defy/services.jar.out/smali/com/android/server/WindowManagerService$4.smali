.class Lcom/android/server/WindowManagerService$4;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WindowManagerService;->watchRotation(Landroid/view/IRotationWatcher;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WindowManagerService;

.field final synthetic val$watcherBinder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/WindowManagerService$4;->this$0:Lcom/android/server/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/WindowManagerService$4;->val$watcherBinder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/WindowManagerService$4;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService$4;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v4, p0, Lcom/android/server/WindowManagerService$4;->val$watcherBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/WindowManagerService$4;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IRotationWatcher;

    invoke-interface {v2}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v4, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/WindowManagerService$4;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IRotationWatcher;

    .local v1, removed:Landroid/view/IRotationWatcher;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .end local v1           #removed:Landroid/view/IRotationWatcher;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

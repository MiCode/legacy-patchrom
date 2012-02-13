.class Lcom/android/server/StatusBarManagerService$H;
.super Landroid/os/Handler;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ICON_CHANGED:I = 0x0

.field public static final ICON_VISIBILITY_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/StatusBarManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$H;->this$0:Lcom/android/server/StatusBarManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/StatusBarManagerService;Lcom/android/server/StatusBarManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/StatusBarManagerService$H;-><init>(Lcom/android/server/StatusBarManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .local v2, info:Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/server/StatusBarManagerService$H;->this$0:Lcom/android/server/StatusBarManagerService;

    #getter for: Lcom/android/server/StatusBarManagerService;->mStatusIconUpdateInfo:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v4}, Lcom/android/server/StatusBarManagerService;->access$400(Lcom/android/server/StatusBarManagerService;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2           #info:Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;
    check-cast v2, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;

    .restart local v2       #info:Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;
    iget-object v4, p0, Lcom/android/server/StatusBarManagerService$H;->this$0:Lcom/android/server/StatusBarManagerService;

    #getter for: Lcom/android/server/StatusBarManagerService;->mStatusIconCallbacks:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/StatusBarManagerService;->access$200(Lcom/android/server/StatusBarManagerService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService$H;->this$0:Lcom/android/server/StatusBarManagerService;

    #getter for: Lcom/android/server/StatusBarManagerService;->mStatusIconCallbacks:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/StatusBarManagerService;->access$200(Lcom/android/server/StatusBarManagerService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;Landroid/os/IBinder$DeathRecipient;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, n:Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;
    :try_start_1
    iget-object v5, v2, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;->slot:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;->iconPackage:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;->iconId:I

    iget v8, v2, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;->iconLevel:I

    invoke-interface {v3, v5, v6, v7, v8}, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;->onIconChanged(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;Landroid/os/IBinder$DeathRecipient;>;"
    .end local v3           #n:Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;
    :cond_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2           #info:Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;
    check-cast v2, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;

    .restart local v2       #info:Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;
    iget-object v4, p0, Lcom/android/server/StatusBarManagerService$H;->this$0:Lcom/android/server/StatusBarManagerService;

    #getter for: Lcom/android/server/StatusBarManagerService;->mStatusIconCallbacks:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/StatusBarManagerService;->access$200(Lcom/android/server/StatusBarManagerService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    :try_start_3
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService$H;->this$0:Lcom/android/server/StatusBarManagerService;

    #getter for: Lcom/android/server/StatusBarManagerService;->mStatusIconCallbacks:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/StatusBarManagerService;->access$200(Lcom/android/server/StatusBarManagerService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;Landroid/os/IBinder$DeathRecipient;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v3       #n:Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;
    :try_start_4
    iget-object v5, v2, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;->slot:Ljava/lang/String;

    iget-boolean v6, v2, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;->visible:Z

    invoke-interface {v3, v5, v6}, Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;->onIconVisibilityChanged(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_2

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;Landroid/os/IBinder$DeathRecipient;>;"
    .end local v3           #n:Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;
    :cond_2
    :try_start_5
    monitor-exit v4

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

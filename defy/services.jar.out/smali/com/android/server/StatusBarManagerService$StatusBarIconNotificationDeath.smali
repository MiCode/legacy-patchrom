.class Lcom/android/server/StatusBarManagerService$StatusBarIconNotificationDeath;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarIconNotificationDeath"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;

.field token:Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;


# direct methods
.method private constructor <init>(Lcom/android/server/StatusBarManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$StatusBarIconNotificationDeath;->this$0:Lcom/android/server/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/StatusBarManagerService;Lcom/android/server/StatusBarManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/StatusBarManagerService$StatusBarIconNotificationDeath;-><init>(Lcom/android/server/StatusBarManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$StatusBarIconNotificationDeath;->this$0:Lcom/android/server/StatusBarManagerService;

    #getter for: Lcom/android/server/StatusBarManagerService;->mStatusIconCallbacks:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/StatusBarManagerService;->access$200(Lcom/android/server/StatusBarManagerService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService$StatusBarIconNotificationDeath;->this$0:Lcom/android/server/StatusBarManagerService;

    #getter for: Lcom/android/server/StatusBarManagerService;->mStatusIconCallbacks:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/StatusBarManagerService;->access$200(Lcom/android/server/StatusBarManagerService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StatusBarManagerService$StatusBarIconNotificationDeath;->token:Lcom/motorola/internal/android/statusbar/IStatusBarIconNotification;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

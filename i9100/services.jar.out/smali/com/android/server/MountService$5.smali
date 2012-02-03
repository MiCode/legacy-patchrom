.class Lcom/android/server/MountService$5;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "MountService"

    .line 1081
    iget-object v1, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->isVolumeStateShared()Z
    invoke-static {v1}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1083
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 1084
    const-string v1, "MountService"

    const-string v2, "waiting the finished process to unshare..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v1, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    const-string v3, "ums"

    const/4 v4, 0x0

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1086
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1087
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MountService"

    const-string v1, "failed ... "

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

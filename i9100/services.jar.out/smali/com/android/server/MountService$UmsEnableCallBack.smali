.class Lcom/android/server/MountService$UmsEnableCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UmsEnableCallBack"
.end annotation


# instance fields
.field final force:Z

.field final method:Ljava/lang/String;

.field final path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "method"
    .parameter "force"

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    .line 495
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    .line 496
    iput-object p3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    .line 497
    iput-object p2, p0, Lcom/android/server/MountService$UmsEnableCallBack;->path:Ljava/lang/String;

    .line 498
    iput-boolean p4, p0, Lcom/android/server/MountService$UmsEnableCallBack;->force:Z

    .line 499
    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v4, "MountService"

    .line 503
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFinished :: UmsEnableCallBack -> path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v0, 0x0

    .line 507
    .local v0, rc:I
    iget-object v2, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;Z)I
    invoke-static {v2, v3, v5}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;Ljava/lang/String;Z)I

    move-result v0

    .line 508
    if-eqz v0, :cond_0

    .line 509
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 510
    iget-object v2, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, status:Ljava/lang/String;
    const-string v2, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFinished :: UmsEnableCallBack -> ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    iget-object v2, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;Z)I
    invoke-static {v2, v3, v5}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;Ljava/lang/String;Z)I

    move-result v0

    .line 522
    .end local v1           #status:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->path:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 523
    :goto_0
    return-void

    .line 516
    .restart local v1       #status:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v3, 0x0

    #calls: Lcom/android/server/MountService;->setUmsEnabling(Z)V
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Z)V

    .line 517
    iget-object v2, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;)I

    goto :goto_0
.end method

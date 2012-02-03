.class Lcom/android/server/MountService$7;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 3484
    iput-object p1, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3486
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3487
    .local v0, action:Ljava/lang/String;
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPolicyReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->GetCurrentPolicy()Z
    invoke-static {v3}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    iget-object v1, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->GetCurrentPolicy()Z
    invoke-static {v2}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;)Z

    move-result v2

    #calls: Lcom/android/server/MountService;->ApplyCurrentSdCardPolicy(Z)V
    invoke-static {v1, v2}, Lcom/android/server/MountService;->access$3800(Lcom/android/server/MountService;Z)V

    .line 3489
    return-void
.end method

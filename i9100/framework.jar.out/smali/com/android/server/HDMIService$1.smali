.class Lcom/android/server/HDMIService$1;
.super Landroid/content/BroadcastReceiver;
.source "HDMIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HDMIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HDMIService;


# direct methods
.method constructor <init>(Lcom/android/server/HDMIService;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/server/HDMIService$1;->this$0:Lcom/android/server/HDMIService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v3, "ro.product.device"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, targetDevice:Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    const-string/jumbo v3, "msm7630"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "msm8660"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SHV-E110S"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SGH-I727"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SGH-T989"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/server/HDMIService$1;->this$0:Lcom/android/server/HDMIService;

    #getter for: Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;
    invoke-static {v3}, Lcom/android/server/HDMIService;->access$000(Lcom/android/server/HDMIService;)Lcom/android/server/HDMIListener;

    move-result-object v3

    const-class v4, Lcom/android/server/HDMIListener;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 147
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 149
    .end local v2           #thread:Ljava/lang/Thread;
    :cond_1
    return-void
.end method

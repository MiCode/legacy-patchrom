.class Lcom/android/server/ThrottleService$1;
.super Landroid/content/BroadcastReceiver;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ThrottleService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThrottleService;


# direct methods
.method constructor <init>(Lcom/android/server/ThrottleService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/ThrottleService$1;->this$0:Lcom/android/server/ThrottleService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    iget-object v0, p0, Lcom/android/server/ThrottleService$1;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ThrottleService;->access$000(Lcom/android/server/ThrottleService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

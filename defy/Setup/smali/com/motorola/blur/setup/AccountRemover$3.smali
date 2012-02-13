.class Lcom/motorola/blur/setup/AccountRemover$3;
.super Landroid/content/BroadcastReceiver;
.source "AccountRemover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/AccountRemover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/AccountRemover;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/AccountRemover;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountRemover$3;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 225
    iget-object v1, p0, Lcom/motorola/blur/setup/AccountRemover$3;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    #getter for: Lcom/motorola/blur/setup/AccountRemover;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/blur/setup/AccountRemover;->access$1100(Lcom/motorola/blur/setup/AccountRemover;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 226
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/motorola/blur/setup/AccountRemover$3;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    #getter for: Lcom/motorola/blur/setup/AccountRemover;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/blur/setup/AccountRemover;->access$1100(Lcom/motorola/blur/setup/AccountRemover;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 228
    return-void
.end method

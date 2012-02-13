.class Landroid/widget/ZoomButtonsController$1;
.super Landroid/content/BroadcastReceiver;
.source "ZoomButtonsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ZoomButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method constructor <init>(Landroid/widget/ZoomButtonsController;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x2

    iget-object v0, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    #getter for: Landroid/widget/ZoomButtonsController;->mIsVisible:Z
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->access$000(Landroid/widget/ZoomButtonsController;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    #getter for: Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->access$100(Landroid/widget/ZoomButtonsController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/widget/ZoomButtonsController$1;->this$0:Landroid/widget/ZoomButtonsController;

    #getter for: Landroid/widget/ZoomButtonsController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/ZoomButtonsController;->access$100(Landroid/widget/ZoomButtonsController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

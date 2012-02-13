.class Landroid/widget/ViewFlipper$1;
.super Landroid/content/BroadcastReceiver;
.source "ViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ViewFlipper;


# direct methods
.method constructor <init>(Landroid/widget/ViewFlipper;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    const/4 v2, 0x0

    #setter for: Landroid/widget/ViewFlipper;->mUserPresent:Z
    invoke-static {v1, v2}, Landroid/widget/ViewFlipper;->access$002(Landroid/widget/ViewFlipper;Z)Z

    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    #calls: Landroid/widget/ViewFlipper;->updateRunning()V
    invoke-static {v1}, Landroid/widget/ViewFlipper;->access$100(Landroid/widget/ViewFlipper;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    const/4 v2, 0x1

    #setter for: Landroid/widget/ViewFlipper;->mUserPresent:Z
    invoke-static {v1, v2}, Landroid/widget/ViewFlipper;->access$002(Landroid/widget/ViewFlipper;Z)Z

    iget-object v1, p0, Landroid/widget/ViewFlipper$1;->this$0:Landroid/widget/ViewFlipper;

    #calls: Landroid/widget/ViewFlipper;->updateRunning()V
    invoke-static {v1}, Landroid/widget/ViewFlipper;->access$100(Landroid/widget/ViewFlipper;)V

    goto :goto_0
.end method

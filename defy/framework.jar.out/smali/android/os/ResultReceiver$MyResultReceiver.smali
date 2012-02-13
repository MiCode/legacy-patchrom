.class Landroid/os/ResultReceiver$MyResultReceiver;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "ResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/os/ResultReceiver;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    iget-object v0, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    iget-object v0, v0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    iget-object v0, v0, Landroid/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/ResultReceiver$MyRunnable;

    iget-object v2, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    invoke-direct {v1, v2, p1, p2}, Landroid/os/ResultReceiver$MyRunnable;-><init>(Landroid/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/os/ResultReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.class Lcom/android/server/HeadsetObserver$1;
.super Landroid/os/Handler;
.source "HeadsetObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HeadsetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HeadsetObserver;


# direct methods
.method constructor <init>(Lcom/android/server/HeadsetObserver;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/HeadsetObserver$1;->this$0:Lcom/android/server/HeadsetObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget-object v1, p0, Lcom/android/server/HeadsetObserver$1;->this$0:Lcom/android/server/HeadsetObserver;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/server/HeadsetObserver;->sendIntents(IILjava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/HeadsetObserver;->access$000(Lcom/android/server/HeadsetObserver;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/HeadsetObserver$1;->this$0:Lcom/android/server/HeadsetObserver;

    #getter for: Lcom/android/server/HeadsetObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/HeadsetObserver;->access$100(Lcom/android/server/HeadsetObserver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.class Landroid/os/MessageQueue$2;
.super Ljava/lang/Object;
.source "MessageQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/MessageQueue;->enqueueMessage(Landroid/os/Message;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/MessageQueue;

.field final synthetic val$nativePtr:I


# direct methods
.method constructor <init>(Landroid/os/MessageQueue;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/os/MessageQueue$2;->this$0:Landroid/os/MessageQueue;

    iput p2, p0, Landroid/os/MessageQueue$2;->val$nativePtr:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    :goto_0
    iget-object v0, p0, Landroid/os/MessageQueue$2;->this$0:Landroid/os/MessageQueue;

    iget v1, p0, Landroid/os/MessageQueue$2;->val$nativePtr:I

    #calls: Landroid/os/MessageQueue;->nativeWake(I)I
    invoke-static {v0, v1}, Landroid/os/MessageQueue;->access$000(Landroid/os/MessageQueue;I)I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method

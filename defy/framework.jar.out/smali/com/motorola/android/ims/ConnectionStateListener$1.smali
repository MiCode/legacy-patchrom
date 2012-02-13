.class Lcom/motorola/android/ims/ConnectionStateListener$1;
.super Lcom/motorola/android/ims/IConnectionStateListener$Stub;
.source "ConnectionStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/ims/ConnectionStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/ims/ConnectionStateListener;


# direct methods
.method constructor <init>(Lcom/motorola/android/ims/ConnectionStateListener;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/ims/ConnectionStateListener$1;->this$0:Lcom/motorola/android/ims/ConnectionStateListener;

    invoke-direct {p0}, Lcom/motorola/android/ims/IConnectionStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChanged(IZ)V
    .locals 5
    .parameter "connectionState"
    .parameter "isLimited"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/motorola/android/ims/ConnectionStateListener$1;->this$0:Lcom/motorola/android/ims/ConnectionStateListener;

    iget-object v0, v0, Lcom/motorola/android/ims/ConnectionStateListener;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    move v1, v4

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v4, v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.class Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport$1;
.super Landroid/os/Handler;
.source "LocationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;


# direct methods
.method constructor <init>(Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport$1;->this$1:Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport$1;->this$1:Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;

    #getter for: Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;->mListener:Lcom/motorola/android/locationproxy/MtlrListener;
    invoke-static {v0}, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;->access$000(Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;)Lcom/motorola/android/locationproxy/MtlrListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/motorola/android/locationproxy/MtlrListener;->onMtlrStatusChanged(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

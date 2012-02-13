.class Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;
.super Lcom/motorola/android/locationproxy/IMtlrListener$Stub;
.source "LocationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/LocationProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtlrListenerTransport"
.end annotation


# static fields
.field private static final MTLR_TIMEOUT:I


# instance fields
.field private mListener:Lcom/motorola/android/locationproxy/MtlrListener;

.field private final mMtlrHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/motorola/android/locationproxy/LocationProxy;


# direct methods
.method constructor <init>(Lcom/motorola/android/locationproxy/LocationProxy;Lcom/motorola/android/locationproxy/MtlrListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;->this$0:Lcom/motorola/android/locationproxy/LocationProxy;

    invoke-direct {p0}, Lcom/motorola/android/locationproxy/IMtlrListener$Stub;-><init>()V

    new-instance v0, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport$1;-><init>(Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;)V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;->mMtlrHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;->mListener:Lcom/motorola/android/locationproxy/MtlrListener;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;)Lcom/motorola/android/locationproxy/MtlrListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;->mListener:Lcom/motorola/android/locationproxy/MtlrListener;

    return-object v0
.end method


# virtual methods
.method public onMtlrStatusChanged(II)V
    .locals 2
    .parameter "reqId"
    .parameter "reason"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/motorola/android/locationproxy/LocationProxy$MtlrListenerTransport;->mMtlrHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

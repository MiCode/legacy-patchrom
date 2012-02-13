.class Lcom/android/phone/NetworkQueryService$1;
.super Landroid/os/Handler;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkQueryService;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    .end local p0
    :goto_0
    return-void

    .line 92
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/NetworkQueryService;->broadcastQueryResults(Landroid/os/AsyncResult;)V
    invoke-static {v0, p0}, Lcom/android/phone/NetworkQueryService;->access$100(Lcom/android/phone/NetworkQueryService;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

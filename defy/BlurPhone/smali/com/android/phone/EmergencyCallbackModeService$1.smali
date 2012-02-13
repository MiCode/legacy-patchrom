.class Lcom/android/phone/EmergencyCallbackModeService$1;
.super Landroid/os/Handler;
.source "EmergencyCallbackModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyCallbackModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackModeService;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackModeService;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeService$1;->this$0:Lcom/android/phone/EmergencyCallbackModeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    .end local p0
    :goto_0
    return-void

    .line 65
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService$1;->this$0:Lcom/android/phone/EmergencyCallbackModeService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/EmergencyCallbackModeService;->resetEcmTimer(Landroid/os/AsyncResult;)V
    invoke-static {v0, p0}, Lcom/android/phone/EmergencyCallbackModeService;->access$000(Lcom/android/phone/EmergencyCallbackModeService;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

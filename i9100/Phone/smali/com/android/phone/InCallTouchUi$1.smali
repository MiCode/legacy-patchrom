.class Lcom/android/phone/InCallTouchUi$1;
.super Landroid/os/Handler;
.source "InCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallTouchUi;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/InCallTouchUi;->mIsEndButtonBlankDone:Z
    invoke-static {v0, v1}, Lcom/android/phone/InCallTouchUi;->access$002(Lcom/android/phone/InCallTouchUi;Z)Z

    .line 74
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$1;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/phone/InCallTouchUi;->updateEndCallButton(Lcom/android/internal/telephony/CallManager;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallTouchUi;->access$100(Lcom/android/phone/InCallTouchUi;Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

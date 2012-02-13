.class Lcom/android/phone/AirplaneModeHandler$1;
.super Landroid/os/Handler;
.source "AirplaneModeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AirplaneModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AirplaneModeHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/AirplaneModeHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 67
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v4, "mHandler()..."

    #calls: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 68
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 109
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 70
    :pswitch_1
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v4, "mHandler()-> rcvd: EVENT_SERVICE_STATE_CHANGED"

    #calls: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 72
    :cond_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v2, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ServiceState;

    .line 74
    .local v2, state:Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_1

    .line 75
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v4, "mHandler()-> state is STATE_IN_SERVICE"

    #calls: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 77
    :cond_3
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    #getter for: Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$200(Lcom/android/phone/AirplaneModeHandler;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 78
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "voicemail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 79
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v4, "call to voice mail delaying call orig"

    #calls: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 83
    :cond_4
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    #getter for: Lcom/android/phone/AirplaneModeHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$300(Lcom/android/phone/AirplaneModeHandler;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x66

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 84
    .local v1, msgDelayed:Landroid/os/Message;
    const-wide/16 v3, 0xfa0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/phone/AirplaneModeHandler$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 87
    .end local v1           #msgDelayed:Landroid/os/Message;
    :cond_5
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    #getter for: Lcom/android/phone/AirplaneModeHandler;->mApplication:Landroid/app/Application;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$400(Lcom/android/phone/AirplaneModeHandler;)Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    #getter for: Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/phone/AirplaneModeHandler;->access$200(Lcom/android/phone/AirplaneModeHandler;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 88
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    #getter for: Lcom/android/phone/AirplaneModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$500(Lcom/android/phone/AirplaneModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 90
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    #getter for: Lcom/android/phone/AirplaneModeHandler;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$600(Lcom/android/phone/AirplaneModeHandler;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 96
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    invoke-virtual {v3}, Lcom/android/phone/AirplaneModeHandler;->finish()V

    goto/16 :goto_0

    .line 101
    .end local v0           #data:Landroid/net/Uri;
    .end local v2           #state:Landroid/telephony/ServiceState;
    :pswitch_2
    invoke-static {}, Lcom/android/phone/AirplaneModeHandler;->access$000()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    const-string v4, "mHandler()->rcvd: EVENT_DELAY_CALL_ORIGINATION"

    #calls: Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/AirplaneModeHandler;->access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V

    .line 102
    :cond_6
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    #getter for: Lcom/android/phone/AirplaneModeHandler;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$600(Lcom/android/phone/AirplaneModeHandler;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 103
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    #getter for: Lcom/android/phone/AirplaneModeHandler;->mApplication:Landroid/app/Application;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$400(Lcom/android/phone/AirplaneModeHandler;)Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    #getter for: Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/phone/AirplaneModeHandler;->access$200(Lcom/android/phone/AirplaneModeHandler;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 104
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    #getter for: Lcom/android/phone/AirplaneModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/AirplaneModeHandler;->access$500(Lcom/android/phone/AirplaneModeHandler;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 105
    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler$1;->this$0:Lcom/android/phone/AirplaneModeHandler;

    invoke-virtual {v3}, Lcom/android/phone/AirplaneModeHandler;->finish()V

    goto/16 :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

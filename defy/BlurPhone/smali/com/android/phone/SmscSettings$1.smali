.class Lcom/android/phone/SmscSettings$1;
.super Landroid/os/Handler;
.source "SmscSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SmscSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SmscSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/SmscSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/phone/SmscSettings$1;->this$0:Lcom/android/phone/SmscSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 48
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 51
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "GETSMSC_ERROR"

    const-string v2, "Do not get smsc"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/android/phone/SmscSettings$1;->this$0:Lcom/android/phone/SmscSettings;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/phone/SmscSettings;->SMSC:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/phone/SmscSettings;->access$002(Lcom/android/phone/SmscSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/android/phone/SmscSettings$1;->this$0:Lcom/android/phone/SmscSettings;

    #getter for: Lcom/android/phone/SmscSettings;->smsc_number:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/SmscSettings;->access$100(Lcom/android/phone/SmscSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SmscSettings$1;->this$0:Lcom/android/phone/SmscSettings;

    #getter for: Lcom/android/phone/SmscSettings;->SMSC:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/SmscSettings;->access$000(Lcom/android/phone/SmscSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 62
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 63
    const-string v1, "SETSMSC_ERROR"

    const-string v2, "update error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SmscSettings$1;->this$0:Lcom/android/phone/SmscSettings;

    #calls: Lcom/android/phone/SmscSettings;->smsc_get()V
    invoke-static {v1}, Lcom/android/phone/SmscSettings;->access$200(Lcom/android/phone/SmscSettings;)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

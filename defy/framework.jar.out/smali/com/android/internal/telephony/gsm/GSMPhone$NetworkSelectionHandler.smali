.class Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectionHandler;
.super Landroid/os/Handler;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkSelectionHandler"
.end annotation


# static fields
.field static final EVENT_GET_NETWORK_SELECTION_MODE_DONE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectionHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v8, "GSM"

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    .local v5, response:Landroid/os/Message;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_4

    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v0, v6

    check-cast v0, [I

    move-object v2, v0

    .local v2, ints:[I
    aget v6, v2, v7

    if-ne v6, v9, :cond_1

    move v3, v9

    .local v3, manual:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectionHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #calls: Lcom/android/internal/telephony/gsm/GSMPhone;->getSavedNetworkSelection()Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$200(Lcom/android/internal/telephony/gsm/GSMPhone;)Ljava/lang/String;

    move-result-object v4

    .local v4, networkSelection:Ljava/lang/String;
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current network selection mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_2

    const-string v7, "manual"

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; networkSelection is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_0

    const-string v6, "GSM"

    const-string v6, "set to automatic mode"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectionHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto :goto_0

    .end local v3           #manual:Z
    .end local v4           #networkSelection:Ljava/lang/String;
    :cond_1
    move v3, v7

    goto :goto_1

    .restart local v3       #manual:Z
    .restart local v4       #networkSelection:Ljava/lang/String;
    :cond_2
    const-string v7, "auto"

    goto :goto_2

    :cond_3
    if-nez v3, :cond_0

    const-string v6, "GSM"

    const-string v6, "set to manual mode"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectionHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .end local v2           #ints:[I
    .end local v3           #manual:Z
    .end local v4           #networkSelection:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectionHandler;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    #calls: Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V
    invoke-static {v6, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$301(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

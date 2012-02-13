.class Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;
.super Ljava/lang/Object;
.source "SimPinUnlockPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 376
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    #getter for: Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mEntry:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->access$000(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, code:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 383
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 384
    .local v3, simCardInterface:Lcom/android/internal/telephony/IccCard;
    if-eqz v3, :cond_0

    .line 385
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    #getter for: Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->access$300(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x64

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 388
    .local v1, callBack:Landroid/os/Message;
    sget-object v4, Lcom/android/phone/SimPinUnlockPanel$2;->$SwitchMap$com$android$phone$SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState:[I

    iget-object v5, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    #getter for: Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mState:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;
    invoke-static {v5}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->access$400(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 390
    :pswitch_0
    invoke-static {}, Lcom/android/phone/SimPinUnlockPanel;->access$200()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unlock attempt: PIN code entered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/SimPinUnlockPanel;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/SimPinUnlockPanel;->access$100(Ljava/lang/String;)V

    .line 392
    :cond_2
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    invoke-virtual {v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->showUnlockInProgress()V

    .line 393
    invoke-virtual {v3, v2, v1}, Lcom/android/internal/telephony/IccCard;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 397
    :pswitch_1
    invoke-static {}, Lcom/android/phone/SimPinUnlockPanel;->access$200()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "puk code entered, request for new pin"

    #calls: Lcom/android/phone/SimPinUnlockPanel;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/SimPinUnlockPanel;->access$100(Ljava/lang/String;)V

    .line 398
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 399
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    #getter for: Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mFailure:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->access$500(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    invoke-virtual {v5}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b01bd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    #getter for: Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mFailure:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->access$500(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 403
    :cond_4
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    #setter for: Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mPUKCode:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->access$602(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    sget-object v5, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    invoke-virtual {v4, v5}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->setState(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;)V

    .line 405
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    invoke-virtual {v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->updateView()V

    goto/16 :goto_0

    .line 409
    :pswitch_2
    invoke-static {}, Lcom/android/phone/SimPinUnlockPanel;->access$200()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "new pin code entered, verify pin"

    #calls: Lcom/android/phone/SimPinUnlockPanel;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/SimPinUnlockPanel;->access$100(Ljava/lang/String;)V

    .line 410
    :cond_5
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    #setter for: Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mNewPinCode:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->access$702(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    sget-object v5, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->VERIFY_NEW_PIN:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    invoke-virtual {v4, v5}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->setState(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;)V

    .line 412
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    invoke-virtual {v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->updateView()V

    goto/16 :goto_0

    .line 416
    :pswitch_3
    invoke-static {}, Lcom/android/phone/SimPinUnlockPanel;->access$200()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "new pin code re-entered"

    #calls: Lcom/android/phone/SimPinUnlockPanel;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/SimPinUnlockPanel;->access$100(Ljava/lang/String;)V

    .line 418
    :cond_6
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    #calls: Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->verifyNewPin(Ljava/lang/String;)Z
    invoke-static {v4, v2}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->access$800(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 420
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    invoke-virtual {v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->showUnlockInProgress()V

    .line 421
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    #getter for: Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mPUKCode:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->access$600(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    #getter for: Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->mNewPinCode:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->access$700(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 424
    :cond_7
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    sget-object v5, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;

    invoke-virtual {v4, v5}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->setState(Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$SimLockState;)V

    .line 425
    iget-object v4, p0, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog$3;->this$0:Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;

    invoke-virtual {v4}, Lcom/android/phone/SimPinUnlockPanel$SimPinUnlockPanelDialog;->updateView()V

    goto/16 :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

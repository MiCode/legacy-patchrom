.class Lcom/android/phone/ChangeSimPinScreen$2;
.super Ljava/lang/Object;
.source "ChangeSimPinScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ChangeSimPinScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ChangeSimPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/ChangeSimPinScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/16 v12, 0x64

    .line 219
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mOldPin:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$100(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    if-ne p1, v8, :cond_1

    .line 220
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$200(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$200(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    if-ne p1, v8, :cond_2

    .line 222
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mNewPin2:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$300(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 223
    :cond_2
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mNewPin2:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$300(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    if-ne p1, v8, :cond_3

    .line 224
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$400(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 225
    :cond_3
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$400(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_6

    .line 226
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$500(Lcom/android/phone/ChangeSimPinScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    .line 227
    .local v6, simCardInterface:Lcom/android/internal/telephony/IccCard;
    if-eqz v6, :cond_0

    .line 228
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mOldPin:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$100(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, oldPin:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$200(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, newPin1:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mNewPin2:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$300(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, newPin2:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #calls: Lcom/android/phone/ChangeSimPinScreen;->validateNewPin(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v8, v2, v3}, Lcom/android/phone/ChangeSimPinScreen;->access$600(Lcom/android/phone/ChangeSimPinScreen;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 234
    .local v1, error:I
    packed-switch v1, :pswitch_data_0

    .line 254
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$800(Lcom/android/phone/ChangeSimPinScreen;)Landroid/os/Handler;

    move-result-object v8

    invoke-static {v8, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, callBack:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #calls: Lcom/android/phone/ChangeSimPinScreen;->reset()V
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$900(Lcom/android/phone/ChangeSimPinScreen;)V

    .line 262
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mChangePin2:Z
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$1000(Lcom/android/phone/ChangeSimPinScreen;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 263
    invoke-virtual {v6, v4, v2, v0}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 237
    .end local v0           #callBack:Landroid/os/Message;
    :pswitch_0
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$200(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    .line 238
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mNewPin2:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$300(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    .line 239
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mMismatchError:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$700(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    invoke-virtual {v8}, Lcom/android/phone/ChangeSimPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 244
    .local v5, r:Landroid/content/res/Resources;
    const/4 v8, 0x1

    if-ne v1, v8, :cond_4

    .line 245
    const v8, 0x7f0b02d9

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, text:Ljava/lang/CharSequence;
    :goto_1
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mMismatchError:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$700(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 247
    .end local v7           #text:Ljava/lang/CharSequence;
    :cond_4
    const v8, 0x7f0b02da

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #text:Ljava/lang/CharSequence;
    goto :goto_1

    .line 266
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v7           #text:Ljava/lang/CharSequence;
    .restart local v0       #callBack:Landroid/os/Message;
    :cond_5
    invoke-virtual {v6, v4, v2, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 273
    .end local v0           #callBack:Landroid/os/Message;
    .end local v1           #error:I
    .end local v2           #newPin1:Ljava/lang/String;
    .end local v3           #newPin2:Ljava/lang/String;
    .end local v4           #oldPin:Ljava/lang/String;
    .end local v6           #simCardInterface:Lcom/android/internal/telephony/IccCard;
    :cond_6
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mPUKCode:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$1100(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;

    move-result-object v8

    if-ne p1, v8, :cond_7

    .line 274
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mPUKSubmit:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$1200(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_0

    .line 275
    :cond_7
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mPUKSubmit:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$1200(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/Button;

    move-result-object v8

    if-ne p1, v8, :cond_0

    .line 276
    iget-object v8, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/ChangeSimPinScreen;->access$500(Lcom/android/phone/ChangeSimPinScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mPUKCode:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/android/phone/ChangeSimPinScreen;->access$1100(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/phone/ChangeSimPinScreen;->access$200(Lcom/android/phone/ChangeSimPinScreen;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/ChangeSimPinScreen$2;->this$0:Lcom/android/phone/ChangeSimPinScreen;

    #getter for: Lcom/android/phone/ChangeSimPinScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/ChangeSimPinScreen;->access$800(Lcom/android/phone/ChangeSimPinScreen;)Landroid/os/Handler;

    move-result-object v11

    invoke-static {v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/android/phone/FdnSetting$1;
.super Landroid/os/Handler;
.source "FdnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const v13, 0x7f0b02ef

    const v10, 0x7f0b015d

    const/4 v9, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 239
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 244
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 245
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_1

    .line 247
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 249
    .local v2, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_2

    .line 250
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v8, 0x7f0b02ce

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v7, v8}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    .line 251
    const-string v7, "FDNSetting"

    const-string v8, "fdn not support!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v7}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)V

    .line 275
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v7}, Lcom/android/phone/FdnSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 277
    .local v3, isNeedRebootMessage:Z
    if-ne v3, v11, :cond_0

    .line 278
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->noticeMessage()V
    invoke-static {v7}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)V

    goto :goto_0

    .line 254
    .end local v3           #isNeedRebootMessage:Z
    .restart local v2       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_3

    .line 257
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v7}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 258
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v8, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v9, 0x7f0b03df

    invoke-virtual {v8, v9}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :cond_3
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getRetryLeftSimPin(Landroid/os/AsyncResult;)I

    move-result v4

    .line 262
    .local v4, numRetries:I
    if-lez v4, :cond_1

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v5, sb:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v8, 0x7f0b035c

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/FdnSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    goto :goto_1

    .line 288
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v4           #numRetries:I
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 289
    .restart local v1       #ar:Landroid/os/AsyncResult;
    const/4 v4, 0x0

    .line 290
    .restart local v4       #numRetries:I
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getRetryLeftSimPin(Landroid/os/AsyncResult;)I

    move-result v4

    .line 291
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_8

    .line 292
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 293
    .restart local v2       #ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_4

    .line 297
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/phone/FdnSetting$1$1;

    invoke-direct {v8, p0}, Lcom/android/phone/FdnSetting$1$1;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 306
    .local v0, a:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/Window;->addFlags(I)V

    .line 308
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 310
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v7, v11}, Lcom/android/phone/FdnSetting;->access$502(Lcom/android/phone/FdnSetting;Z)Z

    goto/16 :goto_0

    .line 314
    .end local v0           #a:Landroid/app/AlertDialog;
    :cond_4
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v7}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v6, sbPuk:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v8, 0x7f0b03e0

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/FdnSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    .line 348
    .end local v6           #sbPuk:Ljava/lang/StringBuilder;
    :goto_2
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v7}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 349
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v7}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 321
    :cond_5
    if-lez v4, :cond_6

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v8, 0x7f0b035b

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/FdnSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    goto :goto_2

    .line 327
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_6
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/phone/FdnSetting$1$2;

    invoke-direct {v8, p0}, Lcom/android/phone/FdnSetting$1$2;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 336
    .restart local v0       #a:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/Window;->addFlags(I)V

    .line 338
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 340
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v7, v11}, Lcom/android/phone/FdnSetting;->access$502(Lcom/android/phone/FdnSetting;Z)Z

    goto :goto_2

    .line 351
    .end local v0           #a:Landroid/app/AlertDialog;
    :cond_7
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v7}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 357
    .end local v2           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_8
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v7}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 358
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v8, 0x7f0b02ec

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v7, v8}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    .line 362
    :goto_3
    const-string v7, "gsm.mot.sim.update.error"

    const-string v8, "-1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v7, v12}, Lcom/android/phone/FdnSetting;->access$502(Lcom/android/phone/FdnSetting;Z)Z

    .line 366
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v7}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v7

    const v8, 0x7f0b02e3

    invoke-virtual {v7, v8}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    .line 367
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v7}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 360
    :cond_9
    iget-object v7, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v8, 0x7f0b02eb

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v7, v8}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;I)V

    goto :goto_3

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

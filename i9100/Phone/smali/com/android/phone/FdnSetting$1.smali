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
    .line 271
    iput-object p1, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const v9, 0x7f0d012e

    const v8, 0x7f0d012a

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "puk2_state"

    .line 274
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 450
    :goto_0
    return-void

    .line 279
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v4

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    .line 281
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 282
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 284
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 285
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_0

    .line 290
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    .local v2, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 293
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 294
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d029a

    invoke-virtual {v3, v4}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 296
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d016b

    invoke-virtual {v3, v4}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 298
    const v3, 0x7f0d003e

    new-instance v4, Lcom/android/phone/FdnSetting$1$1;

    invoke-direct {v4, p0}, Lcom/android/phone/FdnSetting$1$1;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 307
    new-instance v3, Lcom/android/phone/FdnSetting$1$2;

    invoke-direct {v3, p0}, Lcom/android/phone/FdnSetting$1$2;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 316
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 318
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 319
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 320
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    const v4, 0x7f0d029d

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 321
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    const v4, 0x7f0d029e

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 324
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3, v5}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 325
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 340
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    :goto_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 327
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_0
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d0148

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;I)V

    goto :goto_1

    .line 331
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 332
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 333
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 334
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 336
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v3}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "puk2_state"

    invoke-static {v3, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 348
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v4

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    .line 350
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 351
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 352
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 353
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_2

    .line 357
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 359
    .restart local v2       #err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 360
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 361
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d029a

    invoke-virtual {v3, v4}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 363
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d016b

    invoke-virtual {v3, v4}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 365
    const v3, 0x7f0d003e

    new-instance v4, Lcom/android/phone/FdnSetting$1$3;

    invoke-direct {v4, p0}, Lcom/android/phone/FdnSetting$1$3;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 374
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 375
    new-instance v3, Lcom/android/phone/FdnSetting$1$4;

    invoke-direct {v3, p0}, Lcom/android/phone/FdnSetting$1$4;-><init>(Lcom/android/phone/FdnSetting$1;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 384
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 386
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3, v5}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 388
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 389
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 390
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    const v4, 0x7f0d029d

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 391
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    const v4, 0x7f0d029e

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 393
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 394
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3, v5}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 395
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v3}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "puk2_state"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 401
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 402
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d0164

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;I)V

    .line 410
    :goto_2
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 411
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mPinChangeState:I
    invoke-static {v3, v5}, Lcom/android/phone/FdnSetting;->access$802(Lcom/android/phone/FdnSetting;I)I

    .line 413
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)V

    .line 414
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)V

    .line 415
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 416
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 417
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 418
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 421
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v3}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "puk2_state"

    invoke-static {v3, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 404
    :cond_3
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d0165

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;I)V

    .line 405
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v4

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    goto :goto_2

    .line 426
    :cond_4
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 431
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_5
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0d0169

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;I)V

    .line 432
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Lcom/android/phone/FdnSetting;->getPIN2retry()I

    move-result v4

    #setter for: Lcom/android/phone/FdnSetting;->mAttempt:I
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$002(Lcom/android/phone/FdnSetting;I)I

    .line 433
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3, v6}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 435
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 436
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonFDNList:Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 437
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/phone/EditPinPreference;->setTitle(I)V

    .line 438
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 440
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v3}, Lcom/android/phone/FdnSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "puk2_state"

    invoke-static {v3, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mPinChangeState:I
    invoke-static {v3, v5}, Lcom/android/phone/FdnSetting;->access$802(Lcom/android/phone/FdnSetting;I)I

    .line 444
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)V

    .line 445
    iget-object v3, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 274
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

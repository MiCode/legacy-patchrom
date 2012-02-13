.class Lcom/motorola/blur/settings/EditAccountActivity$2;
.super Landroid/os/Handler;
.source "EditAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/EditAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditAccountActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 290
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v14, v0

    packed-switch v14, :pswitch_data_0

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v15, v0

    const v16, 0x7f0c00f3

    invoke-virtual/range {v15 .. v16}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->access$600(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V

    .line 561
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 292
    .restart local p1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->access$700(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->access$700(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v14

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v15, v0

    invoke-virtual {v14, v15}, Lcom/motorola/blur/setup/SetupProgressDialog;->goToProgressPoint(I)V

    goto :goto_0

    .line 297
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->dismissProgressDialog()V
    invoke-static {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->access$800(Lcom/motorola/blur/settings/EditAccountActivity;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->finish()V

    goto :goto_0

    .line 302
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/motorola/blur/settings/EditAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c00d7

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->access$600(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :pswitch_3
    const/4 v6, 0x0

    .line 307
    .local v6, resp:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    if-eqz v14, :cond_1

    .line 308
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    .end local v6           #resp:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;
    check-cast v6, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;

    .line 310
    .restart local v6       #resp:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;
    :cond_1
    if-eqz v6, :cond_0

    .line 311
    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v2

    .line 312
    .local v2, errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;->getSNPResponse()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v10

    .line 313
    .local v10, snpResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    sget-object v14, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v14, v2}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 314
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaToken()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    const/4 v15, 0x1

    #setter for: Lcom/motorola/blur/settings/EditAccountActivity;->mShouldAddUserAgain:Z
    invoke-static {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->access$902(Lcom/motorola/blur/settings/EditAccountActivity;Z)Z

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->processCaptchaForSN(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)I
    invoke-static {v14, v10}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1000(Lcom/motorola/blur/settings/EditAccountActivity;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)I

    move-result v14

    if-nez v14, :cond_0

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    sget-object v15, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    sget-object v16, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual/range {v14 .. v16}, Lcom/motorola/blur/settings/EditAccountActivity;->buildAndShowError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)V

    goto/16 :goto_0

    .line 321
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    const/4 v15, 0x1

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->save(Z)Z
    invoke-static {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1100(Lcom/motorola/blur/settings/EditAccountActivity;Z)Z

    move-result v8

    .line 322
    .local v8, saved:Z
    if-nez v8, :cond_3

    .line 323
    const-string v14, "Error saving credentials to the DB"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    if-eqz v8, :cond_4

    const/4 v15, 0x0

    :goto_1
    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->access$600(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v15, v0

    const v16, 0x7f0c00d7

    invoke-virtual/range {v15 .. v16}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    .line 329
    .end local v8           #saved:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    const/4 v15, 0x1

    #setter for: Lcom/motorola/blur/settings/EditAccountActivity;->mShouldAddUserAgain:Z
    invoke-static {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->access$902(Lcom/motorola/blur/settings/EditAccountActivity;Z)Z

    .line 331
    const/4 v3, 0x0

    .line 332
    .local v3, errorString:Ljava/lang/String;
    sget-object v9, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 335
    .local v9, snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    if-eqz v10, :cond_7

    .line 340
    sget-object v14, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SNPError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v14, v2}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 342
    invoke-virtual {v10}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getSnpExtendedError()I

    move-result v14

    invoke-static {v14}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->valueOf(I)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    move-result-object v9

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v15, v0

    iget-object v15, v15, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v15}, Lcom/motorola/blur/settings/AccountSettings;->getProviderPrettyName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v9, v15}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->constructSNPError(Landroid/content/Context;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    :cond_6
    invoke-virtual {v10}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaToken()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    const/4 v15, 0x1

    #setter for: Lcom/motorola/blur/settings/EditAccountActivity;->mShouldAddUserAgain:Z
    invoke-static {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->access$902(Lcom/motorola/blur/settings/EditAccountActivity;Z)Z

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->processCaptchaForSN(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)I
    invoke-static {v14, v10}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1000(Lcom/motorola/blur/settings/EditAccountActivity;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)I

    move-result v14

    if-nez v14, :cond_0

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    sget-object v15, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    sget-object v16, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual/range {v14 .. v16}, Lcom/motorola/blur/settings/EditAccountActivity;->buildAndShowError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)V

    goto/16 :goto_0

    .line 364
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v15, v0

    invoke-static {v15, v2}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 367
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    iget-object v14, v14, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v14}, Lcom/motorola/blur/settings/AccountSettings;->revertDataInDB()V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V
    invoke-static {v14, v3}, Lcom/motorola/blur/settings/EditAccountActivity;->access$600(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 375
    .end local v2           #errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .end local v3           #errorString:Ljava/lang/String;
    .end local v6           #resp:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentialsWS$Response;
    .end local v9           #snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    .end local v10           #snpResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->access$700(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->access$700(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/motorola/blur/setup/SetupProgressDialog;->goToProgressPoint(I)V

    .line 378
    :cond_9
    const/4 v6, 0x0

    .line 379
    .local v6, resp:Lcom/motorola/blur/service/blur/devicesetup/UpdatePasswordProviderCredentialsWS$Response;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    if-eqz v14, :cond_a

    .line 380
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    .end local v6           #resp:Lcom/motorola/blur/service/blur/devicesetup/UpdatePasswordProviderCredentialsWS$Response;
    check-cast v6, Lcom/motorola/blur/service/blur/devicesetup/UpdatePasswordProviderCredentialsWS$Response;

    .line 382
    .restart local v6       #resp:Lcom/motorola/blur/service/blur/devicesetup/UpdatePasswordProviderCredentialsWS$Response;
    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/devicesetup/UpdatePasswordProviderCredentialsWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v14

    sget-object v15, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v14, v15, :cond_f

    .line 386
    :cond_b
    if-eqz v6, :cond_c

    .line 387
    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/devicesetup/UpdatePasswordProviderCredentialsWS$Response;->getSNPResponse()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v10

    .line 388
    .restart local v10       #snpResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaToken()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->processCaptchaForSN(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)I
    invoke-static {v14, v10}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1000(Lcom/motorola/blur/settings/EditAccountActivity;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)I

    move-result v14

    if-nez v14, :cond_0

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    sget-object v15, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    sget-object v16, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual/range {v14 .. v16}, Lcom/motorola/blur/settings/EditAccountActivity;->buildAndShowError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)V

    goto/16 :goto_0

    .line 397
    .end local v10           #snpResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    const/4 v15, 0x1

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->save(Z)Z
    invoke-static {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1100(Lcom/motorola/blur/settings/EditAccountActivity;Z)Z

    move-result v8

    .line 398
    .restart local v8       #saved:Z
    if-nez v8, :cond_d

    .line 399
    const-string v14, "Error saving credentials to the DB"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->isOneActive()Z
    invoke-static {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1200(Lcom/motorola/blur/settings/EditAccountActivity;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    if-eqz v8, :cond_e

    const/4 v15, 0x0

    :goto_2
    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->access$600(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v15, v0

    const v16, 0x7f0c00d7

    invoke-virtual/range {v15 .. v16}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    .line 404
    .end local v8           #saved:Z
    :cond_f
    if-eqz v6, :cond_0

    .line 405
    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/devicesetup/UpdatePasswordProviderCredentialsWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v2

    .line 406
    .restart local v2       #errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    sget-object v9, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 407
    .restart local v9       #snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    const/4 v3, 0x0

    .line 408
    .restart local v3       #errorString:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/devicesetup/UpdatePasswordProviderCredentialsWS$Response;->getSNPResponse()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;

    move-result-object v10

    .line 410
    .restart local v10       #snpResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    if-eqz v10, :cond_12

    .line 411
    sget-object v14, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SNPError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v14, v2}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 413
    invoke-virtual {v10}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->getSnpExtendedError()I

    move-result v14

    invoke-static {v14}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->valueOf(I)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    move-result-object v9

    .line 414
    sget-object v14, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ACCOUNT_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v14, v9}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->addAccountAgain()V

    goto/16 :goto_0

    .line 418
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v15, v0

    iget-object v15, v15, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v15}, Lcom/motorola/blur/settings/AccountSettings;->getProviderPrettyName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v9, v15}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->constructSNPError(Landroid/content/Context;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 427
    :cond_11
    invoke-virtual {v10}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;->hasCaptchaToken()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->processCaptchaForSN(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)I
    invoke-static {v14, v10}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1000(Lcom/motorola/blur/settings/EditAccountActivity;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;)I

    move-result v14

    if-nez v14, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    sget-object v15, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    sget-object v16, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual/range {v14 .. v16}, Lcom/motorola/blur/settings/EditAccountActivity;->buildAndShowError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)V

    goto/16 :goto_0

    .line 438
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v15, v0

    invoke-static {v15, v2}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 441
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    iget-object v14, v14, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v14}, Lcom/motorola/blur/settings/AccountSettings;->revertDataInDB()V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V
    invoke-static {v14, v3}, Lcom/motorola/blur/settings/EditAccountActivity;->access$600(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    .end local v2           #errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .end local v3           #errorString:Ljava/lang/String;
    .end local v6           #resp:Lcom/motorola/blur/service/blur/devicesetup/UpdatePasswordProviderCredentialsWS$Response;
    .end local v9           #snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    .end local v10           #snpResp:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->access$700(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v14

    if-eqz v14, :cond_14

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->access$700(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/motorola/blur/setup/SetupProgressDialog;->goToProgressPoint(I)V

    .line 451
    :cond_14
    const/4 v7, 0x0

    .line 452
    .local v7, response:Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    if-eqz v14, :cond_15

    .line 453
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    .end local v7           #response:Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;
    check-cast v7, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;

    .line 454
    .restart local v7       #response:Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;
    :cond_15
    if-eqz v7, :cond_16

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v14

    sget-object v15, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v14, v15, :cond_17

    .line 455
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    iget-object v14, v14, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v14}, Lcom/motorola/blur/settings/AccountSettings;->revertDataInDB()V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    const/4 v15, 0x0

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->access$600(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 458
    :cond_17
    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v2

    .line 459
    .restart local v2       #errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    invoke-static {v14, v2}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v4

    .line 461
    .local v4, errorStringId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->access$600(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 466
    .end local v2           #errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .end local v4           #errorStringId:I
    .end local v7           #response:Lcom/motorola/blur/service/blur/devicesetup/NewPasswordWS$Response;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    if-eqz v14, :cond_18

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    move-object v0, v14

    move-object/from16 v1, p1

    #setter for: Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaImageDecoded:[B
    invoke-static {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1302(Lcom/motorola/blur/settings/EditAccountActivity;[B)[B

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->showCaptchaActivity()V
    invoke-static {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1400(Lcom/motorola/blur/settings/EditAccountActivity;)V

    goto/16 :goto_0

    .line 470
    .restart local p1
    :cond_18
    const-string v14, "EAA"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, " it was not possible to GET the captcha url image"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    sget-object v15, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidCredsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-static {v14, v15}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v4

    .line 472
    .restart local v4       #errorStringId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v15, v0

    invoke-virtual {v15, v4}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->access$600(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    .end local v4           #errorStringId:I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    instance-of v14, v14, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;

    if-eqz v14, :cond_0

    .line 478
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;

    .line 479
    .local v5, oAuthUrlResp:Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;
    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 480
    .restart local v2       #errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    iget-object v2, v5, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;->error:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 481
    iget-object v14, v5, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;->url:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 482
    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 484
    :cond_19
    sget-object v14, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v2, v14, :cond_1b

    .line 488
    iget-object v12, v5, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;->url:Ljava/lang/String;

    .line 490
    .local v12, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090003

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 491
    .local v11, supportedQzone:Z
    if-nez v11, :cond_1a

    .line 493
    const-string v14, "http://m."

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1a

    .line 494
    iget-object v14, v5, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;->url:Ljava/lang/String;

    const-string v15, "http://"

    const-string v16, "http://m."

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 500
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    iget-object v15, v5, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;->callback:Ljava/lang/String;

    iput-object v15, v14, Lcom/motorola/blur/settings/EditAccountActivity;->mCallbackUrl:Ljava/lang/String;

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    move-object v0, v14

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/motorola/blur/settings/OAuthAccountSettings;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/OAuthAccountSettings;->setGotUrl(Ljava/lang/Boolean;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    const v15, 0x7f0b005e

    invoke-virtual {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/webkit/WebView;

    .line 503
    .local v13, wv:Landroid/webkit/WebView;
    invoke-virtual {v13, v12}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 504
    new-instance v14, Lcom/motorola/blur/settings/EditAccountActivity$EditWebViewClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v15, v0

    invoke-direct {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity$EditWebViewClient;-><init>(Lcom/motorola/blur/settings/EditAccountActivity;)V

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 505
    invoke-virtual {v13}, Landroid/webkit/WebView;->requestFocus()Z

    .line 506
    invoke-virtual {v13}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 507
    invoke-virtual {v13}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 508
    invoke-virtual {v13}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 509
    new-instance v14, Lcom/motorola/blur/settings/EditAccountActivity$2$1;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/motorola/blur/settings/EditAccountActivity$2$1;-><init>(Lcom/motorola/blur/settings/EditAccountActivity$2;)V

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto/16 :goto_0

    .line 522
    .end local v11           #supportedQzone:Z
    .end local v12           #url:Ljava/lang/String;
    .end local v13           #wv:Landroid/webkit/WebView;
    .restart local p1
    :cond_1b
    iget-object v9, v5, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;->snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 523
    .restart local v9       #snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    sget-object v14, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SNPError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v2, v14, :cond_1d

    if-eqz v9, :cond_1d

    .line 524
    sget-object v14, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ACCOUNT_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v14, v9}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->addAccountAgain()V

    goto/16 :goto_0

    .line 528
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    invoke-virtual {v14, v2, v9}, Lcom/motorola/blur/settings/EditAccountActivity;->buildAndShowError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)V

    goto/16 :goto_0

    .line 530
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->access$600(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 537
    .end local v2           #errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .end local v5           #oAuthUrlResp:Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$OAuthUrlResp;
    .end local v9           #snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    instance-of v14, v14, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;

    if-eqz v14, :cond_0

    .line 538
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;

    .line 539
    .local v6, resp:Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;
    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 540
    .restart local v2       #errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    iget-object v2, v6, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;->error:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 541
    sget-object v14, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v2, v14, :cond_1e

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    const/4 v15, 0x0

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->access$600(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 544
    :cond_1e
    iget-object v9, v6, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient$InvokeCallbackUrlResp;->snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 545
    .restart local v9       #snpError:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    sget-object v14, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SNPError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v2, v14, :cond_20

    if-eqz v9, :cond_20

    .line 546
    sget-object v14, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ACCOUNT_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v14, v9}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/motorola/blur/settings/EditAccountActivity;->addAccountAgain()V

    goto/16 :goto_0

    .line 550
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    invoke-virtual {v14, v2, v9}, Lcom/motorola/blur/settings/EditAccountActivity;->buildAndShowError(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)V

    .line 554
    :goto_3
    const-string v14, "EAA"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, " Error recieved:"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v2, v15, v16

    invoke-static {v14, v15}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 552
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/EditAccountActivity$2;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/motorola/blur/settings/EditAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/motorola/blur/settings/EditAccountActivity;->access$600(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V

    goto :goto_3

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

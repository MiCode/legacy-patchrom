.class Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimSwapAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/SimSwapAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlurMotherReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;


# direct methods
.method private constructor <init>(Lcom/motorola/blur/setup/SimSwapAuthActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/setup/SimSwapAuthActivity;Lcom/motorola/blur/setup/SimSwapAuthActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;-><init>(Lcom/motorola/blur/setup/SimSwapAuthActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const v11, 0x7f0c012f

    const v10, 0x7f0c012d

    const/4 v9, 0x0

    const-string v7, "com.motorola.blur.service.ws.key.responsedata"

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, action:Ljava/lang/String;
    const-string v6, "com.motorola.blur.service.blur.Actions.MOTHER_PASSWORD_ANSWER"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 108
    const-string v6, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_PASSWORD_CORRECT"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 109
    .local v2, ans:Z
    if-eqz v2, :cond_1

    .line 110
    iget-object v6, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    #calls: Lcom/motorola/blur/setup/SimSwapAuthActivity;->validatedBlurAcct()V
    invoke-static {v6}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->access$100(Lcom/motorola/blur/setup/SimSwapAuthActivity;)V

    .line 137
    .end local v2           #ans:Z
    :cond_0
    :goto_0
    return-void

    .line 112
    .restart local v2       #ans:Z
    :cond_1
    const-string v6, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_ERROR"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->fromValue(I)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    .line 113
    .local v3, err:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    iget-object v6, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    iget-object v7, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    #getter for: Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->access$200(Lcom/motorola/blur/setup/SimSwapAuthActivity;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0058

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    #getter for: Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->access$200(Lcom/motorola/blur/setup/SimSwapAuthActivity;)Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    invoke-static {v9, v3}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/motorola/blur/setup/SimSwapAuthActivity;->showErrorMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->access$300(Lcom/motorola/blur/setup/SimSwapAuthActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v2           #ans:Z
    .end local v3           #err:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :cond_2
    const-string v6, "com.motorola.blur.service.blur.devicesetup.resetpassword.resp"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    const/4 v4, 0x0

    .line 118
    .local v4, p:Landroid/os/Parcelable;
    const-string v6, "com.motorola.blur.service.ws.key.responsedata"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 119
    const-string v6, "com.motorola.blur.service.ws.key.responsedata"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 120
    instance-of v6, v4, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;

    if-eqz v6, :cond_4

    .line 121
    move-object v0, v4

    check-cast v0, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;

    move-object v5, v0

    .line 122
    .local v5, resp:Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;
    invoke-virtual {v5}, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v6

    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v6, v7, :cond_3

    .line 123
    iget-object v6, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    iget-object v7, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    #getter for: Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->access$200(Lcom/motorola/blur/setup/SimSwapAuthActivity;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0095

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/motorola/blur/setup/SimSwapAuthActivity;->showSuccessMsg(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->access$400(Lcom/motorola/blur/setup/SimSwapAuthActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v6, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    iget-object v7, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    #getter for: Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->access$200(Lcom/motorola/blur/setup/SimSwapAuthActivity;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    #getter for: Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->access$200(Lcom/motorola/blur/setup/SimSwapAuthActivity;)Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    invoke-virtual {v5}, Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/motorola/blur/setup/SimSwapAuthActivity;->showErrorMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->access$300(Lcom/motorola/blur/setup/SimSwapAuthActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    .end local v5           #resp:Lcom/motorola/blur/service/blur/devicesetup/ResetPasswordWS$Response;
    :cond_4
    const-string v6, "SimSwapUnlockActivity"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    #getter for: Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->access$200(Lcom/motorola/blur/setup/SimSwapAuthActivity;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v6, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    iget-object v7, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    #getter for: Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->access$200(Lcom/motorola/blur/setup/SimSwapAuthActivity;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/blur/setup/SimSwapAuthActivity$BlurMotherReceiver;->this$0:Lcom/motorola/blur/setup/SimSwapAuthActivity;

    #getter for: Lcom/motorola/blur/setup/SimSwapAuthActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->access$200(Lcom/motorola/blur/setup/SimSwapAuthActivity;)Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/motorola/blur/setup/SimSwapAuthActivity;->showErrorMsg(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/motorola/blur/setup/SimSwapAuthActivity;->access$300(Lcom/motorola/blur/setup/SimSwapAuthActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

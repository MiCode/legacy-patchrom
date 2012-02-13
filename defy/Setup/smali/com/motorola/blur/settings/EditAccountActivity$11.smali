.class Lcom/motorola/blur/settings/EditAccountActivity$11;
.super Ljava/lang/Object;
.source "EditAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/EditAccountActivity;->saveToService(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditAccountActivity;

.field final synthetic val$oldPass:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 990
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iput-object p2, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->val$oldPass:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const v10, 0x7f0b0074

    const v9, 0x7f0b0072

    const/4 v8, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x3

    .line 992
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v1, v4, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    .line 994
    .local v1, model:Lcom/motorola/blur/settings/AccountSettings;
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 995
    .local v2, msg:Landroid/os/Message;
    iput v8, v2, Landroid/os/Message;->arg1:I

    .line 996
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 998
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mType:I
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$400(Lcom/motorola/blur/settings/EditAccountActivity;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1089
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1000
    :pswitch_1
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->isOneActive()Z
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1200(Lcom/motorola/blur/settings/EditAccountActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1001
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;
    invoke-static {v4, v9}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1600(Lcom/motorola/blur/settings/EditAccountActivity;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/blur/settings/AccountSettings;->setAccountPrettyName(Ljava/lang/String;)V

    .line 1002
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1600(Lcom/motorola/blur/settings/EditAccountActivity;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/blur/settings/AccountSettings;->setUserPrettyName(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountSettings;->isAuthRequired()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1004
    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountSettings;->saveForAuthentication()Z

    .line 1005
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$200(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/util/authentication/Authentication;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1006
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$200(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/util/authentication/Authentication;

    move-result-object v4

    invoke-interface {v4}, Lcom/motorola/blur/util/authentication/Authentication;->close()V

    .line 1008
    :cond_1
    new-instance v0, Lcom/motorola/blur/service/email/provider/EmailAuthenticationFactory;

    invoke-direct {v0}, Lcom/motorola/blur/service/email/provider/EmailAuthenticationFactory;-><init>()V

    .line 1009
    .local v0, factory:Lcom/motorola/blur/util/authentication/AuthenticationFactory;
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v5, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mAuthObserver:Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;
    invoke-static {v5}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1700(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;

    move-result-object v5

    const-string v6, "IMAP_PROTOCOL"

    invoke-interface {v0, v4, v5, v6}, Lcom/motorola/blur/util/authentication/AuthenticationFactory;->getAuthenticator(Landroid/content/Context;Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1011
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1014
    .end local v0           #factory:Lcom/motorola/blur/util/authentication/AuthenticationFactory;
    :cond_2
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->save(Z)Z
    invoke-static {v4, v8}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1100(Lcom/motorola/blur/settings/EditAccountActivity;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v6

    .line 1015
    .local v3, savedWhat:I
    :goto_1
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    .end local v3           #savedWhat:I
    :cond_3
    move v3, v7

    .line 1014
    goto :goto_1

    .line 1022
    :pswitch_2
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;
    invoke-static {v4, v9}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1600(Lcom/motorola/blur/settings/EditAccountActivity;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/blur/settings/AccountSettings;->setAccountPrettyName(Ljava/lang/String;)V

    .line 1023
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1600(Lcom/motorola/blur/settings/EditAccountActivity;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/blur/settings/AccountSettings;->setUserPrettyName(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountSettings;->isAuthRequired()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1025
    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountSettings;->saveForAuthentication()Z

    .line 1026
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$200(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/util/authentication/Authentication;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1027
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$200(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/util/authentication/Authentication;

    move-result-object v4

    invoke-interface {v4}, Lcom/motorola/blur/util/authentication/Authentication;->close()V

    .line 1029
    :cond_4
    new-instance v0, Lcom/motorola/blur/service/email/provider/EmailAuthenticationFactory;

    invoke-direct {v0}, Lcom/motorola/blur/service/email/provider/EmailAuthenticationFactory;-><init>()V

    .line 1030
    .restart local v0       #factory:Lcom/motorola/blur/util/authentication/AuthenticationFactory;
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v5, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mAuthObserver:Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;
    invoke-static {v5}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1700(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;

    move-result-object v5

    const-string v6, "IMAP_PROTOCOL"

    invoke-interface {v0, v4, v5, v6}, Lcom/motorola/blur/util/authentication/AuthenticationFactory;->getAuthenticator(Landroid/content/Context;Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1032
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1035
    .end local v0           #factory:Lcom/motorola/blur/util/authentication/AuthenticationFactory;
    :cond_5
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->save(Z)Z
    invoke-static {v4, v8}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1100(Lcom/motorola/blur/settings/EditAccountActivity;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    move v3, v6

    .line 1036
    .restart local v3       #savedWhat:I
    :goto_2
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v3           #savedWhat:I
    :cond_6
    move v3, v7

    .line 1035
    goto :goto_2

    .line 1042
    :pswitch_3
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaToken:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1800(Lcom/motorola/blur/settings/EditAccountActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mCaptchaUserText:Ljava/lang/String;
    invoke-static {v5}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1900(Lcom/motorola/blur/settings/EditAccountActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/motorola/blur/settings/AccountSettings;->setCaptchaInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mShouldAddUserAgain:Z
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$900(Lcom/motorola/blur/settings/EditAccountActivity;)Z

    move-result v4

    if-ne v4, v8, :cond_7

    .line 1044
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    invoke-virtual {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->addAccountAgain()V

    goto/16 :goto_0

    .line 1045
    :cond_7
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->val$oldPass:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/motorola/blur/settings/AccountSettings;->authenticateFromService(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1046
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1053
    :pswitch_4
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    const v5, 0x7f0b0061

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1600(Lcom/motorola/blur/settings/EditAccountActivity;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/blur/settings/AccountSettings;->setUsername(Ljava/lang/String;)V

    .line 1054
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    const v5, 0x7f0b006a

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->getEditText(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1600(Lcom/motorola/blur/settings/EditAccountActivity;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/blur/settings/AccountSettings;->setServerAddress(Ljava/lang/String;)V

    .line 1055
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    const v5, 0x7f0b006d

    invoke-virtual {v4, v5}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/motorola/blur/settings/AccountSettings;->setSecure(Z)V

    .line 1057
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    const v5, 0x7f0b006e

    invoke-virtual {v4, v5}, Lcom/motorola/blur/settings/EditAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/motorola/blur/settings/AccountSettings;->setVerifyCA(Z)V

    .line 1059
    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountSettings;->saveForAuthentication()Z

    .line 1061
    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountSettings;->isAuthRequired()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1062
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$200(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/util/authentication/Authentication;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1063
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$200(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/util/authentication/Authentication;

    move-result-object v4

    invoke-interface {v4}, Lcom/motorola/blur/util/authentication/Authentication;->close()V

    .line 1065
    :cond_8
    new-instance v0, Lcom/motorola/blur/service/email/provider/EmailAuthenticationFactory;

    invoke-direct {v0}, Lcom/motorola/blur/service/email/provider/EmailAuthenticationFactory;-><init>()V

    .line 1066
    .restart local v0       #factory:Lcom/motorola/blur/util/authentication/AuthenticationFactory;
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v5, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mAuthObserver:Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;
    invoke-static {v5}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1700(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;

    move-result-object v5

    const-string v6, "ACTIVESYNC_PROTOCOL"

    invoke-interface {v0, v4, v5, v6}, Lcom/motorola/blur/util/authentication/AuthenticationFactory;->getAuthenticator(Landroid/content/Context;Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1068
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1071
    .end local v0           #factory:Lcom/motorola/blur/util/authentication/AuthenticationFactory;
    :cond_9
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->isOneActive()Z
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1200(Lcom/motorola/blur/settings/EditAccountActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1072
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    const/4 v5, 0x0

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->save(Z)Z
    invoke-static {v4, v5}, Lcom/motorola/blur/settings/EditAccountActivity;->access$1100(Lcom/motorola/blur/settings/EditAccountActivity;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    move v3, v6

    .line 1073
    .restart local v3       #savedWhat:I
    :goto_3
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountSettings;->isResetRequired()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1074
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->sendAccountBroadcast()V
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$500(Lcom/motorola/blur/settings/EditAccountActivity;)V

    .line 1076
    :cond_a
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v3           #savedWhat:I
    :cond_b
    move v3, v7

    .line 1072
    goto :goto_3

    .line 1083
    :pswitch_5
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/motorola/blur/settings/AccountSettings;->authenticateFromService(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1084
    iget-object v4, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/settings/EditAccountActivity$11;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 998
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

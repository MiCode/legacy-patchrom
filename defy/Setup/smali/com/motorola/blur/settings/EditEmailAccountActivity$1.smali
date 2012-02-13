.class Lcom/motorola/blur/settings/EditEmailAccountActivity$1;
.super Ljava/lang/Object;
.source "EditEmailAccountActivity.java"

# interfaces
.implements Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/EditEmailAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditEmailAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/motorola/blur/util/authentication/Authentication;)V
    .locals 10
    .parameter "authenticator"

    .prologue
    const/4 v9, 0x0

    .line 133
    iget-object v4, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    #setter for: Lcom/motorola/blur/settings/EditEmailAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;
    invoke-static {v4, p1}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->access$002(Lcom/motorola/blur/settings/EditEmailAccountActivity;Lcom/motorola/blur/util/authentication/Authentication;)Lcom/motorola/blur/util/authentication/Authentication;

    .line 134
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    .line 135
    .local v3, token:[Ljava/lang/String;
    const/4 v2, 0x2

    .line 138
    .local v2, responseError:I
    :try_start_0
    iget-object v4, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditEmailAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->access$000(Lcom/motorola/blur/settings/EditEmailAccountActivity;)Lcom/motorola/blur/util/authentication/Authentication;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 139
    iget-object v4, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    iget-object v4, v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v4}, Lcom/motorola/blur/settings/EmailSettingsModel;->isYahooAccount()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    iget-object v4, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditEmailAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->access$000(Lcom/motorola/blur/settings/EditEmailAccountActivity;)Lcom/motorola/blur/util/authentication/Authentication;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    iget-object v5, v5, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v5}, Lcom/motorola/blur/settings/EmailSettingsModel;->getAccountId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    iget-object v7, v7, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/motorola/blur/settings/EmailSettingsModel;->getPassword(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7, v3}, Lcom/motorola/blur/util/authentication/Authentication;->authenticateWithCredential(JLjava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 151
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 152
    iget-object v4, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    iget-object v4, v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v4}, Lcom/motorola/blur/settings/EmailSettingsModel;->isYahooAccount()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    iget-object v4, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    iget-object v4, v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    aget-object v5, v3, v9

    invoke-virtual {v4, v9, v5}, Lcom/motorola/blur/settings/EmailSettingsModel;->setPassword(ILjava/lang/String;)V

    .line 156
    :cond_1
    iget-object v4, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    iget-object v5, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    iget-object v5, v5, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v5}, Lcom/motorola/blur/settings/EmailSettingsModel;->getAccountId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/motorola/blur/setup/ValidateIntentUtility;->sendBroadcastSingleAccount(Landroid/content/Context;J)V

    .line 158
    :cond_2
    iget-object v4, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditEmailAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->access$100(Lcom/motorola/blur/settings/EditEmailAccountActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 159
    .local v1, msg:Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 160
    iget-object v4, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditEmailAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditEmailAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->access$100(Lcom/motorola/blur/settings/EditEmailAccountActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 161
    return-void

    .line 143
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 144
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "EEAA"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Auth exception"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

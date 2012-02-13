.class Landroid/accounts/AccountManagerService$2;
.super Landroid/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManagerService;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callerUid:I

.field final synthetic val$customTokens:Z

.field final synthetic val$loginOptions:Landroid/os/Bundle;

.field final synthetic val$notifyOnAuthFailure:Z

.field final synthetic val$permissionGranted:Z


# direct methods
.method constructor <init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/accounts/AccountManagerService$2;->this$0:Landroid/accounts/AccountManagerService;

    iput-object p6, p0, Landroid/accounts/AccountManagerService$2;->val$loginOptions:Landroid/os/Bundle;

    iput-object p7, p0, Landroid/accounts/AccountManagerService$2;->val$account:Landroid/accounts/Account;

    iput-object p8, p0, Landroid/accounts/AccountManagerService$2;->val$authTokenType:Ljava/lang/String;

    iput-boolean p9, p0, Landroid/accounts/AccountManagerService$2;->val$notifyOnAuthFailure:Z

    iput-boolean p10, p0, Landroid/accounts/AccountManagerService$2;->val$permissionGranted:Z

    iput p11, p0, Landroid/accounts/AccountManagerService$2;->val$callerUid:I

    iput-boolean p12, p0, Landroid/accounts/AccountManagerService$2;->val$customTokens:Z

    invoke-direct/range {p0 .. p5}, Landroid/accounts/AccountManagerService$Session;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 13
    .parameter "result"

    .prologue
    const-string v12, "intent"

    const-string v11, "authTokenLabelKey"

    if-eqz p1, :cond_4

    const-string v0, "authTokenLabelKey"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accounts/AccountManagerService$2;->this$0:Landroid/accounts/AccountManagerService;

    iget-object v1, p0, Landroid/accounts/AccountManagerService$2;->val$account:Landroid/accounts/Account;

    iget v2, p0, Landroid/accounts/AccountManagerService$2;->val$callerUid:I

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    iget-object v4, p0, Landroid/accounts/AccountManagerService$2;->val$authTokenType:Ljava/lang/String;

    const-string v5, "authTokenLabelKey"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Landroid/accounts/AccountManagerService;->access$100(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .local v8, intent:Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "intent"

    invoke-virtual {v7, v12, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v7}, Landroid/accounts/AccountManagerService$2;->onResult(Landroid/os/Bundle;)V

    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v8           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    :cond_0
    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, authToken:Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, name:Ljava/lang/String;
    const-string v0, "accountType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, type:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x5

    const-string v1, "the type and name should not be empty"

    invoke-virtual {p0, v0, v1}, Landroid/accounts/AccountManagerService$2;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/accounts/AccountManagerService$2;->val$customTokens:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/accounts/AccountManagerService$2;->this$0:Landroid/accounts/AccountManagerService;

    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/accounts/AccountManagerService$2;->val$authTokenType:Ljava/lang/String;

    #calls: Landroid/accounts/AccountManagerService;->saveAuthTokenToDatabase(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v6}, Landroid/accounts/AccountManagerService;->access$200(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    .end local v9           #name:Ljava/lang/String;
    .end local v10           #type:Ljava/lang/String;
    :cond_3
    const-string v0, "intent"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .restart local v8       #intent:Landroid/content/Intent;
    if-eqz v8, :cond_4

    iget-boolean v0, p0, Landroid/accounts/AccountManagerService$2;->val$notifyOnAuthFailure:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/accounts/AccountManagerService$2;->val$customTokens:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/accounts/AccountManagerService$2;->this$0:Landroid/accounts/AccountManagerService;

    iget-object v1, p0, Landroid/accounts/AccountManagerService$2;->val$account:Landroid/accounts/Account;

    const-string v2, "authFailedMessage"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/accounts/AccountManagerService;->doNotification(Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    invoke-static {v0, v1, v2, v8}, Landroid/accounts/AccountManagerService;->access$300(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .end local v6           #authToken:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_4
    invoke-super {p0, p1}, Landroid/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Landroid/accounts/AccountManagerService$2;->val$permissionGranted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Landroid/accounts/AccountManagerService$2;->val$authTokenType:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Landroid/accounts/AccountManagerService$2;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Landroid/accounts/AccountManagerService$2;->val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, Landroid/accounts/AccountManagerService$2;->val$loginOptions:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 2
    .parameter "now"

    .prologue
    iget-object v0, p0, Landroid/accounts/AccountManagerService$2;->val$loginOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/accounts/AccountManagerService$2;->val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Landroid/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getAuthToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManagerService$2;->val$account:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authTokenType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManagerService$2;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loginOptions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManagerService$2;->val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notifyOnAuthFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/accounts/AccountManagerService$2;->val$notifyOnAuthFailure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Landroid/accounts/AccountManagerService$RemoveAccountSession;
.super Landroid/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAccountSession"
.end annotation


# instance fields
.field final mAccount:Landroid/accounts/Account;

.field final synthetic this$0:Landroid/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V
    .locals 6
    .parameter
    .parameter "response"
    .parameter "account"

    .prologue
    iput-object p1, p0, Landroid/accounts/AccountManagerService$RemoveAccountSession;->this$0:Landroid/accounts/AccountManagerService;

    iget-object v3, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManagerService$Session;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V

    iput-object p3, p0, Landroid/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 6
    .parameter "result"

    .prologue
    const-string v5, "booleanResult"

    if-eqz p1, :cond_1

    const-string v3, "booleanResult"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "intent"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "booleanResult"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, removalAllowed:Z
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/accounts/AccountManagerService$RemoveAccountSession;->this$0:Landroid/accounts/AccountManagerService;

    iget-object v4, p0, Landroid/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    #calls: Landroid/accounts/AccountManagerService;->removeAccount(Landroid/accounts/Account;)V
    invoke-static {v3, v4}, Landroid/accounts/AccountManagerService;->access$000(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;)V

    :cond_0
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService$RemoveAccountSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .local v1, response:Landroid/accounts/IAccountManagerResponse;
    if-eqz v1, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, result2:Landroid/os/Bundle;
    const-string v3, "booleanResult"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    invoke-interface {v1, v2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #removalAllowed:Z
    .end local v1           #response:Landroid/accounts/IAccountManagerResponse;
    .end local v2           #result2:Landroid/os/Bundle;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    return-void

    .restart local v0       #removalAllowed:Z
    .restart local v1       #response:Landroid/accounts/IAccountManagerResponse;
    .restart local v2       #result2:Landroid/os/Bundle;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Landroid/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    return-void
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 2
    .parameter "now"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Landroid/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removeAccount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", account "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManagerService$RemoveAccountSession;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

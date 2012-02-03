.class Landroid/accounts/AbstractAccountAuthenticator$Transport;
.super Landroid/accounts/IAccountAuthenticator$Stub;
.source "AbstractAccountAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AbstractAccountAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AbstractAccountAuthenticator;


# direct methods
.method private constructor <init>(Landroid/accounts/AbstractAccountAuthenticator;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticator$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/accounts/AbstractAccountAuthenticator;Landroid/accounts/AbstractAccountAuthenticator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator$Transport;-><init>(Landroid/accounts/AbstractAccountAuthenticator;)V

    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .parameter "response"
    .parameter "accountType"
    .parameter "authTokenType"
    .parameter "features"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "AccountAuthenticator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAccount: accountType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", authTokenType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", features "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p4, :cond_3

    const-string v2, "[]"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #calls: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v0}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 129
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v1, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AbstractAccountAuthenticator;->addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 132
    .local v7, result:Landroid/os/Bundle;
    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 134
    const-string v0, "AccountAuthenticator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAccount: result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1
    if-eqz v7, :cond_2

    .line 137
    invoke-interface {p1, v7}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/accounts/NetworkErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    .end local v7           #result:Landroid/os/Bundle;
    :cond_2
    :goto_1
    return-void

    .line 123
    :cond_3
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 140
    .local v6, e:Landroid/accounts/NetworkErrorException;
    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    const-string v0, "AccountAuthenticator"

    const-string v1, "addAccount"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v6}, Landroid/accounts/NetworkErrorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_1

    .line 144
    .end local v6           #e:Landroid/accounts/NetworkErrorException;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 145
    .local v6, e:Ljava/lang/UnsupportedOperationException;
    const-string v0, "AccountAuthenticator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    const-string v0, "AccountAuthenticator"

    const-string v1, "addAccount"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :cond_5
    const/4 v0, 0x6

    const-string v1, "addAccount not supported"

    invoke-interface {p1, v0, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public confirmCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 8
    .parameter "response"
    .parameter "account"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const-string v7, "confirmCredentials"

    const-string v5, "AccountAuthenticator"

    .line 155
    const-string v2, "AccountAuthenticator"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const-string v2, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmCredentials: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #calls: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 160
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 162
    .local v1, result:Landroid/os/Bundle;
    const-string v2, "AccountAuthenticator"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 164
    const-string v2, "AccountAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmCredentials: result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    if-eqz v1, :cond_2

    .line 168
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/accounts/NetworkErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    .end local v1           #result:Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 171
    .local v0, e:Landroid/accounts/NetworkErrorException;
    const-string v2, "AccountAuthenticator"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    const-string v2, "AccountAuthenticator"

    const-string v2, "confirmCredentials"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    :cond_3
    const/4 v2, 0x3

    invoke-virtual {v0}, Landroid/accounts/NetworkErrorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v0           #e:Landroid/accounts/NetworkErrorException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 176
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v2, "AccountAuthenticator"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    const-string v2, "AccountAuthenticator"

    const-string v2, "confirmCredentials"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    :cond_4
    const/4 v2, 0x6

    const-string v3, "confirmCredentials not supported"

    invoke-interface {p1, v2, v3}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public editProperties(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V
    .locals 4
    .parameter "response"
    .parameter "accountType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #calls: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 288
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2}, Landroid/accounts/AbstractAccountAuthenticator;->editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 290
    .local v1, result:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 291
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v1           #result:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 294
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const/4 v2, 0x6

    const-string v3, "editProperties not supported"

    invoke-interface {p1, v2, v3}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V
    .locals 4
    .parameter "response"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #calls: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 320
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v1

    .line 322
    .local v1, result:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 323
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/NetworkErrorException; {:try_start_0 .. :try_end_0} :catch_1

    .line 331
    .end local v1           #result:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 326
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const/4 v2, 0x6

    const-string v3, "getAccountRemovalAllowed not supported"

    invoke-interface {p1, v2, v3}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 328
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 329
    .local v0, e:Landroid/accounts/NetworkErrorException;
    const/4 v2, 0x3

    invoke-virtual {v0}, Landroid/accounts/NetworkErrorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const-string v7, "getAuthToken"

    const-string v5, "AccountAuthenticator"

    .line 221
    const-string v2, "AccountAuthenticator"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const-string v2, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #calls: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 227
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/accounts/AbstractAccountAuthenticator;->getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 230
    .local v1, result:Landroid/os/Bundle;
    const-string v2, "AccountAuthenticator"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 232
    const-string v2, "AccountAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthToken: result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    if-eqz v1, :cond_2

    .line 235
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/NetworkErrorException; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    .end local v1           #result:Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 238
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v2, "AccountAuthenticator"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    const-string v2, "AccountAuthenticator"

    const-string v2, "getAuthToken"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :cond_3
    const/4 v2, 0x6

    const-string v3, "getAuthToken not supported"

    invoke-interface {p1, v2, v3}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 243
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 244
    .local v0, e:Landroid/accounts/NetworkErrorException;
    const-string v2, "AccountAuthenticator"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    const-string v2, "AccountAuthenticator"

    const-string v2, "getAuthToken"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    :cond_4
    const/4 v2, 0x3

    invoke-virtual {v0}, Landroid/accounts/NetworkErrorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V
    .locals 8
    .parameter "response"
    .parameter "authTokenType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const-string v7, "getAuthTokenLabel"

    const-string v5, "AccountAuthenticator"

    .line 187
    const-string v2, "AccountAuthenticator"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const-string v2, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthTokenLabel: authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #calls: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 192
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v1, result:Landroid/os/Bundle;
    const-string v2, "authTokenLabelKey"

    iget-object v3, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    invoke-virtual {v3, p2}, Landroid/accounts/AbstractAccountAuthenticator;->getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "AccountAuthenticator"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 197
    const-string v2, "AccountAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthTokenLabel: result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    if-eqz v1, :cond_2

    .line 201
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    .end local v1           #result:Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 204
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "AccountAuthenticator"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    const-string v2, "AccountAuthenticator"

    const-string v2, "getAuthTokenLabel"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :cond_3
    const/4 v2, 0x7

    const-string/jumbo v3, "unknown authTokenType"

    invoke-interface {p1, v2, v3}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 209
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 210
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v2, "AccountAuthenticator"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 211
    const-string v2, "AccountAuthenticator"

    const-string v2, "getAuthTokenLabel"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    :cond_4
    const/4 v2, 0x6

    const-string v3, "getAuthTokenTypeLabel not supported"

    invoke-interface {p1, v2, v3}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 4
    .parameter "response"
    .parameter "account"
    .parameter "features"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #calls: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 303
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2, p3}, Landroid/accounts/AbstractAccountAuthenticator;->hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 305
    .local v1, result:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 306
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/NetworkErrorException; {:try_start_0 .. :try_end_0} :catch_1

    .line 314
    .end local v1           #result:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 309
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const/4 v2, 0x6

    const-string v3, "hasFeatures not supported"

    invoke-interface {p1, v2, v3}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 311
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 312
    .local v0, e:Landroid/accounts/NetworkErrorException;
    const/4 v2, 0x3

    invoke-virtual {v0}, Landroid/accounts/NetworkErrorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public updateCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const-string/jumbo v7, "updateCredentials"

    const-string v5, "AccountAuthenticator"

    .line 253
    const-string v2, "AccountAuthenticator"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    const-string v2, "AccountAuthenticator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCredentials: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    #calls: Landroid/accounts/AbstractAccountAuthenticator;->checkBinderPermission()V
    invoke-static {v2}, Landroid/accounts/AbstractAccountAuthenticator;->access$000(Landroid/accounts/AbstractAccountAuthenticator;)V

    .line 259
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AbstractAccountAuthenticator$Transport;->this$0:Landroid/accounts/AbstractAccountAuthenticator;

    new-instance v3, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v3, p1}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/accounts/AbstractAccountAuthenticator;->updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 262
    .local v1, result:Landroid/os/Bundle;
    const-string v2, "AccountAuthenticator"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 264
    const-string v2, "AccountAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCredentials: result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/accounts/AccountManager;->sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    if-eqz v1, :cond_2

    .line 268
    invoke-interface {p1, v1}, Landroid/accounts/IAccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/accounts/NetworkErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    .end local v1           #result:Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 271
    .local v0, e:Landroid/accounts/NetworkErrorException;
    const-string v2, "AccountAuthenticator"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 272
    const-string v2, "AccountAuthenticator"

    const-string/jumbo v2, "updateCredentials"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    :cond_3
    const/4 v2, 0x3

    invoke-virtual {v0}, Landroid/accounts/NetworkErrorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 275
    .end local v0           #e:Landroid/accounts/NetworkErrorException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 276
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v2, "AccountAuthenticator"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 277
    const-string v2, "AccountAuthenticator"

    const-string/jumbo v2, "updateCredentials"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    :cond_4
    const/4 v2, 0x6

    const-string/jumbo v3, "updateCredentials not supported"

    invoke-interface {p1, v2, v3}, Landroid/accounts/IAccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

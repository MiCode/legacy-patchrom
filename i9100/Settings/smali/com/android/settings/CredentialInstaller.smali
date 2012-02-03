.class public Lcom/android/settings/CredentialInstaller;
.super Landroid/app/Activity;
.source "CredentialInstaller.java"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mUnlocking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CredentialInstaller;->mKeyStore:Landroid/security/KeyStore;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CredentialInstaller;->mUnlocking:Z

    return-void
.end method

.method private install()V
    .locals 9

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/CredentialInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 70
    .local v3, intent:Landroid/content/Intent;
    if-nez v3, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 71
    .local v0, bundle:Landroid/os/Bundle;
    :goto_0
    if-nez v0, :cond_1

    .line 80
    :goto_1
    return-void

    .line 70
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 72
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 73
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 74
    .local v1, data:[B
    if-eqz v1, :cond_2

    .line 75
    iget-object v6, p0, Lcom/android/settings/CredentialInstaller;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/security/KeyStore;->put([B[B)Z

    move-result v5

    .line 76
    .local v5, success:Z
    const-string v6, "CredentialInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "install "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  success? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-nez v5, :cond_2

    goto :goto_1

    .line 79
    .end local v1           #data:[B
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #success:Z
    :cond_3
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/CredentialInstaller;->setResult(I)V

    goto :goto_1
.end method

.method private isKeyStoreUnlocked()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 83
    iget-object v0, p0, Lcom/android/settings/CredentialInstaller;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedStates"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 65
    const-string v0, "ulck"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/CredentialInstaller;->mUnlocking:Z

    .line 66
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 44
    const-string v0, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/settings/CredentialInstaller;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/CredentialInstaller;->finish()V

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CredentialInstaller;->isKeyStoreUnlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-direct {p0}, Lcom/android/settings/CredentialInstaller;->install()V

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CredentialInstaller;->finish()V

    .line 54
    :goto_0
    return-void

    .line 48
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/CredentialInstaller;->mUnlocking:Z

    if-nez v0, :cond_1

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CredentialInstaller;->mUnlocking:Z

    .line 50
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outStates"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 59
    const-string v0, "ulck"

    iget-boolean v1, p0, Lcom/android/settings/CredentialInstaller;->mUnlocking:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.class public Lcom/android/settings/PrivacySettings;
.super Landroid/preference/PreferenceActivity;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAutoRestore:Landroid/preference/CheckBoxPreference;

.field private mBackup:Landroid/preference/CheckBoxPreference;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDialogType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setBackupEnabled(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 158
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 160
    .local v0, bm:Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_0

    .line 162
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 171
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_2

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 164
    goto :goto_1

    :cond_2
    move v3, v4

    .line 165
    goto :goto_2
.end method

.method private showEraseBackupDialog()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 112
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08050d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 114
    .local v0, msg:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08050c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 120
    return-void
.end method

.method private updateToggles()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 128
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "backup_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    move v0, v4

    .line 130
    .local v0, backupEnabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    const-string v3, "backup_auto_restore"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    iget-object v2, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 135
    return-void

    .end local v0           #backupEnabled:Z
    :cond_0
    move v0, v5

    .line 128
    goto :goto_0

    .restart local v0       #backupEnabled:Z
    :cond_1
    move v3, v5

    .line 132
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 140
    iget v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    if-ne v0, v3, :cond_0

    .line 141
    invoke-direct {p0, v1}, Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    .line 149
    :cond_0
    :goto_0
    iput v1, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 150
    return-void

    .line 144
    :cond_1
    iget v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    if-ne v0, v3, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v1, 0x7f04001d

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 63
    .local v0, screen:Landroid/preference/PreferenceScreen;
    const-string v1, "backup_data"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v1, "auto_restore"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 71
    return-void

    .line 68
    :cond_0
    const-string v1, "backup_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 86
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->showEraseBackupDialog()V

    .line 106
    :cond_0
    :goto_0
    return v5

    .line 90
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 95
    .local v0, bm:Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_0

    .line 97
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 99
    .local v1, curState:Z
    :try_start_0
    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v2

    .line 101
    .local v2, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_3

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 78
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/PrivacySettings;->mDialogType:I

    .line 80
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 81
    return-void
.end method

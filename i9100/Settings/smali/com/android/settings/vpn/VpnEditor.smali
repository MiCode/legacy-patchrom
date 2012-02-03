.class public Lcom/android/settings/vpn/VpnEditor;
.super Landroid/preference/PreferenceActivity;
.source "VpnEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn/VpnEditor$3;
    }
.end annotation


# instance fields
.field private mAddingProfile:Z

.field private mOriginalProfileData:[B

.field private mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 184
    return-void
.end method

.method private getEditor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileEditor;
    .locals 2
    .parameter "p"

    .prologue
    .line 170
    sget-object v0, Lcom/android/settings/vpn/VpnEditor$3;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 184
    new-instance v0, Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-direct {v0, p1}, Lcom/android/settings/vpn/VpnProfileEditor;-><init>(Landroid/net/vpn/VpnProfile;)V

    .end local p1
    :goto_0
    return-object v0

    .line 172
    .restart local p1
    :pswitch_0
    new-instance v0, Lcom/android/settings/vpn/L2tpIpsecEditor;

    check-cast p1, Landroid/net/vpn/L2tpIpsecProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/L2tpIpsecEditor;-><init>(Landroid/net/vpn/L2tpIpsecProfile;)V

    goto :goto_0

    .line 175
    .restart local p1
    :pswitch_1
    new-instance v0, Lcom/android/settings/vpn/L2tpIpsecPskEditor;

    check-cast p1, Landroid/net/vpn/L2tpIpsecPskProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/L2tpIpsecPskEditor;-><init>(Landroid/net/vpn/L2tpIpsecPskProfile;)V

    goto :goto_0

    .line 178
    .restart local p1
    :pswitch_2
    new-instance v0, Lcom/android/settings/vpn/L2tpEditor;

    check-cast p1, Landroid/net/vpn/L2tpProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/L2tpEditor;-><init>(Landroid/net/vpn/L2tpProfile;)V

    goto :goto_0

    .line 181
    .restart local p1
    :pswitch_3
    new-instance v0, Lcom/android/settings/vpn/PptpEditor;

    check-cast p1, Landroid/net/vpn/PptpProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/PptpEditor;-><init>(Landroid/net/vpn/PptpProfile;)V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getProfile()Landroid/net/vpn/VpnProfile;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-virtual {v0}, Lcom/android/settings/vpn/VpnProfileEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v0

    return-object v0
.end method

.method private initViewFor(Landroid/net/vpn/VpnProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnEditor;->setTitle(Landroid/net/vpn/VpnProfile;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn/VpnProfileEditor;->loadPreferencesTo(Landroid/preference/PreferenceGroup;)V

    .line 127
    return-void
.end method

.method private profileChanged()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 211
    .local v3, newParcel:Landroid/os/Parcel;
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/net/vpn/VpnProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 212
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 213
    .local v2, newData:[B
    iget-object v4, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    array-length v4, v4

    array-length v5, v2

    if-ne v4, v5, :cond_2

    .line 214
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    array-length v1, v4

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 215
    iget-object v4, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    aget-byte v4, v4, v0

    aget-byte v5, v2, v0

    if-eq v4, v5, :cond_0

    move v4, v7

    .line 219
    .end local v0           #i:I
    .end local v1           #n:I
    :goto_1
    return v4

    .line 214
    .restart local v0       #i:I
    .restart local v1       #n:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    .line 217
    goto :goto_1

    .end local v0           #i:I
    .end local v1           #n:I
    :cond_2
    move v4, v7

    .line 219
    goto :goto_1
.end method

.method private setResult(Landroid/net/vpn/VpnProfile;)V
    .locals 2
    .parameter

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    const-string v1, "vpn_profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/vpn/VpnEditor;->setResult(ILandroid/content/Intent;)V

    .line 167
    return-void
.end method

.method private setTitle(Landroid/net/vpn/VpnProfile;)V
    .locals 4
    .parameter "profile"

    .prologue
    .line 130
    iget-boolean v1, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0804b2

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 133
    .local v0, formatString:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/vpn/VpnType;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    return-void

    .line 130
    .end local v0           #formatString:Ljava/lang/String;
    :cond_0
    const v1, 0x7f0804b3

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private showCancellationConfirmDialog()V
    .locals 3

    .prologue
    .line 189
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0804a5

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080496

    new-instance v2, Lcom/android/settings/vpn/VpnEditor$2;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnEditor$2;-><init>(Lcom/android/settings/vpn/VpnEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080499

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 203
    return-void

    .line 189
    :cond_0
    const v1, 0x7f0804a6

    goto :goto_0
.end method

.method private validateAndSetResult()Z
    .locals 2

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-virtual {v1}, Lcom/android/settings/vpn/VpnProfileEditor;->validate()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, errorMsg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 148
    new-instance v1, Lcom/android/settings/vpn/VpnEditor$1;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnEditor$1;-><init>(Lcom/android/settings/vpn/VpnEditor;)V

    invoke-static {p0, v0, v1}, Lcom/android/settings/vpn/Util;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 154
    const/4 v1, 0x0

    .line 160
    :goto_0
    return v1

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnEditor;->setResult(Landroid/net/vpn/VpnProfile;)V

    .line 160
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "vpn_profile"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v0, v2

    :goto_0
    check-cast v0, Landroid/net/vpn/VpnProfile;

    .line 60
    .local v0, p:Landroid/net/vpn/VpnProfile;
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnEditor;->getEditor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileEditor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    .line 61
    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    .line 64
    const v2, 0x7f040030

    invoke-virtual {p0, v2}, Lcom/android/settings/vpn/VpnEditor;->addPreferencesFromResource(I)V

    .line 66
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnEditor;->initViewFor(Landroid/net/vpn/VpnProfile;)V

    .line 68
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 69
    .local v1, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/vpn/VpnProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    .line 71
    return-void

    .line 57
    .end local v0           #p:Landroid/net/vpn/VpnProfile;
    .end local v1           #parcel:Landroid/os/Parcel;
    :cond_0
    const-string v2, "profile"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 83
    const v0, 0x7f08049a

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 85
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    if-eqz v1, :cond_0

    const v1, 0x7f08049b

    :goto_0
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 89
    return v3

    .line 85
    :cond_0
    const v1, 0x7f08049c

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 114
    packed-switch p1, :pswitch_data_0

    .line 121
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 116
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->validateAndSetResult()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->finish()V

    .line 117
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 96
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->validateAndSetResult()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->finish()V

    :cond_0
    move v0, v1

    .line 97
    goto :goto_0

    .line 100
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->profileChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->showCancellationConfirmDialog()V

    :goto_1
    move v0, v1

    .line 105
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->finish()V

    goto :goto_1

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :cond_0
    :try_start_1
    const-string v0, "profile"

    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

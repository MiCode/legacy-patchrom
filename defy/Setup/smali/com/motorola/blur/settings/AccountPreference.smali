.class public Lcom/motorola/blur/settings/AccountPreference;
.super Landroid/preference/Preference;
.source "AccountPreference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/Preference;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountPreference"

.field private static VVM_ACCOUNT_AUTHENTICATOR_TYPE:Ljava/lang/String;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mLockIconView:Landroid/widget/ImageView;

.field private mLockIconVisible:Z

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderIconView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "Visual Voice Mail"

    sput-object v0, Lcom/motorola/blur/settings/AccountPreference;->VVM_ACCOUNT_AUTHENTICATOR_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/motorola/blur/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    .line 40
    invoke-static {p2}, Lcom/motorola/blur/settings/AccountPreference;->getLayout(Landroid/accounts/Account;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setLayoutResource(I)V

    .line 41
    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 43
    invoke-static {p1, p2}, Lcom/motorola/blur/settings/AccountPreference;->createIntent(Landroid/content/Context;Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.motorola.android.buacontactadapter"

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/blur/settings/AccountPreference;->VVM_ACCOUNT_AUTHENTICATOR_TYPE:Ljava/lang/String;

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/AccountPreference;->setIntent(Landroid/content/Intent;)V

    .line 50
    :cond_0
    return-void
.end method

.method public static final createIntent(Landroid/content/Context;Landroid/accounts/Account;)Landroid/content/Intent;
    .locals 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 75
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 77
    .local v0, accountType:Ljava/lang/String;
    const-string v2, "com.motorola.blur.provider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/motorola/blur/provider/GAMSHelper;->getAccountId(Landroid/content/Context;Landroid/accounts/Account;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 93
    :goto_0
    return-object v1

    .line 80
    :cond_0
    const-string v2, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    const-string v2, "com.motorola.blur.setup.MANAGE_BLUR_ACCOUNT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 82
    :cond_1
    sget-object v2, Lcom/motorola/blur/settings/AccountPreference;->VVM_ACCOUNT_AUTHENTICATOR_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    const-string v2, "com.motorola.vvm.VVM_ACCOUNT_RECEIVER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 90
    :cond_2
    const-string v2, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v2, "account"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static final getLayout(Landroid/accounts/Account;)I
    .locals 2
    .parameter "account"

    .prologue
    .line 53
    const-string v0, "com.motorola.blur.provider"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    const v0, 0x7f030003

    .line 57
    :goto_0
    return v0

    :cond_1
    const v0, 0x7f030033

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/motorola/blur/settings/AccountPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, str1:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, str2:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/blur/settings/AccountPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 99
    const v0, 0x7f0b0012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/motorola/blur/settings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :cond_0
    const v0, 0x7f0b0013

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mLockIconView:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mLockIconView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/motorola/blur/settings/AccountPreference;->mLockIconVisible:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    return-void

    .line 104
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 63
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 65
    const-string v2, "com.motorola.android.buacontactadapter"

    iget-object v3, p0, Lcom/motorola/blur/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.BackupAssistanceClient.ACTION_PROVISION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/motorola/blur/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    sget-object v2, Lcom/motorola/blur/settings/AccountPreference;->VVM_ACCOUNT_AUTHENTICATOR_TYPE:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.vvm.VVM_ACCOUNT_RECEIVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/motorola/blur/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setLockVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/motorola/blur/settings/AccountPreference;->mLockIconVisible:Z

    .line 134
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mLockIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mLockIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    :cond_0
    return-void

    .line 135
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setProviderIcon(I)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/motorola/blur/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    :cond_0
    return-void
.end method

.method public setProviderIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 119
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/motorola/blur/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    :cond_0
    return-void
.end method

.method public setProviderIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/motorola/blur/settings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 113
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_0
    return-void
.end method

.method public unbindIcon()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 151
    :cond_0
    return-void
.end method

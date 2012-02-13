.class public Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "AccountsAndServicesPreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/motorola/blur/setup/AccountRemovalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;
    }
.end annotation


# static fields
.field private static final BLUR_ACCOUNTS_CATEGORY_KEY:Ljava/lang/String; = "blurAccountsCategory"

.field private static final DELETE_ACCOUNT_MENU_ID:I = 0x1

.field private static final NEW_ACCOUNT_MENU_ID:I = 0x0

.field private static final OPEN_ACCOUNT_MENU_ID:I = 0x2

.field private static final OTHER_ACCOUNTS_CATEGORY_KEY:Ljava/lang/String; = "otherAccountsCategory"

.field private static final SETUP_SYNC_APP_ID:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BlurAASPA"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAddAccountButton:Landroid/widget/Button;

.field private mAuthTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mBlurAccountsCategory:Landroid/preference/PreferenceCategory;

.field private mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

.field private mErrorCode:I

.field private mHandler:Landroid/os/Handler;

.field private mOtherAccountsCategory:Landroid/preference/PreferenceCategory;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSilentBlur:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mSilentBlur:Z

    .line 84
    iput v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mErrorCode:I

    .line 86
    new-instance v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$1;-><init>(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 101
    new-instance v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$2;-><init>(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->updateIcons()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Lcom/motorola/blur/util/cache/ProviderIconCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Landroid/accounts/AccountManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mSilentBlur:Z

    return v0
.end method

.method static synthetic access$400(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAuthTypes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mBlurAccountsCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$600(Landroid/preference/PreferenceCategory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->unbindPreferenceIcons(Landroid/preference/PreferenceCategory;)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mOtherAccountsCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;Landroid/preference/PreferenceCategory;)Landroid/preference/PreferenceCategory;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mOtherAccountsCategory:Landroid/preference/PreferenceCategory;

    return-object p1
.end method

.method static synthetic access$800(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->hasOtherAccounts()Z

    move-result v0

    return v0
.end method

.method private confirmDeleteAccount(Landroid/accounts/Account;)V
    .locals 8
    .parameter "account"

    .prologue
    .line 570
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.motorola.blur.provider"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 571
    invoke-static {p0, p1}, Lcom/motorola/blur/provider/GAMSHelper;->getAccountId(Landroid/content/Context;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 572
    .local v0, accountId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 573
    new-instance v3, Lcom/motorola/blur/setup/AccountRemover;

    invoke-direct {v3, p0, p0}, Lcom/motorola/blur/setup/AccountRemover;-><init>(Landroid/content/Context;Lcom/motorola/blur/setup/AccountRemovalListener;)V

    .line 574
    .local v3, r:Lcom/motorola/blur/setup/AccountRemover;
    invoke-virtual {v3, v0, v1}, Lcom/motorola/blur/setup/AccountRemover;->remove(J)V

    .line 591
    .end local v0           #accountId:J
    .end local v3           #r:Lcom/motorola/blur/setup/AccountRemover;
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    const-string v4, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 577
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 578
    .local v2, dialog:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c0057

    invoke-virtual {p0, v4}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 579
    const v4, 0x7f0c0059

    invoke-virtual {p0, v4}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$3;

    invoke-direct {v5, p0, p1}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$3;-><init>(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;Landroid/accounts/Account;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 587
    const v4, 0x7f0c005c

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0034

    invoke-virtual {p0, v5}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "{0}"

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private getAccountPreferenceFromContextMenu(I)Lcom/motorola/blur/settings/AccountPreference;
    .locals 4
    .parameter "position"

    .prologue
    .line 490
    iget-object v1, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mBlurAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 491
    .local v0, blurAccountNumber:I
    if-le p1, v0, :cond_1

    .line 493
    iget-object v1, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mOtherAccountsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mOtherAccountsCategory:Landroid/preference/PreferenceCategory;

    sub-int v2, p1, v0

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/blur/settings/AccountPreference;

    move-object v1, p0

    .line 501
    :goto_0
    return-object v1

    .line 496
    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 497
    :cond_1
    if-lez p1, :cond_2

    .line 499
    iget-object v1, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mBlurAccountsCategory:Landroid/preference/PreferenceCategory;

    const/4 v2, 0x1

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/blur/settings/AccountPreference;

    move-object v1, p0

    goto :goto_0

    .line 501
    .restart local p0
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mBlurAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/blur/settings/AccountPreference;

    move-object v1, p0

    goto :goto_0
.end method

.method private hasOtherAccounts()Z
    .locals 4

    .prologue
    .line 132
    iget-object v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 133
    .local v1, accounts:[Landroid/accounts/Account;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 134
    aget-object v3, v1, v2

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 135
    .local v0, accountType:Ljava/lang/String;
    const-string v3, "com.motorola.blur.provider"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->isHidden(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    const/4 v3, 0x1

    .line 140
    .end local v0           #accountType:Ljava/lang/String;
    :goto_1
    return v3

    .line 133
    .restart local v0       #accountType:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v0           #accountType:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static final unbindPreferenceIcons(Landroid/preference/PreferenceCategory;)V
    .locals 3
    .parameter "category"

    .prologue
    .line 218
    if-eqz p0, :cond_0

    .line 219
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .local v0, cnt:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 220
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/motorola/blur/settings/AccountPreference;

    invoke-virtual {v2}, Lcom/motorola/blur/settings/AccountPreference;->unbindIcon()V

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v0           #cnt:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private updateIcons()V
    .locals 9

    .prologue
    .line 113
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v7, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mBlurAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .local v3, cnt:I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 114
    iget-object v7, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mBlurAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/settings/AccountPreference;

    .line 115
    .local v1, accountPreference:Lcom/motorola/blur/settings/AccountPreference;
    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 116
    .local v0, account:Landroid/accounts/Account;
    const-wide/16 v5, -0x1

    .line 117
    .local v5, providerId:J
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "com.motorola.blur.provider"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 118
    invoke-static {p0, v0}, Lcom/motorola/blur/provider/GAMSHelper;->getProviderId(Landroid/content/Context;Landroid/accounts/Account;)J

    move-result-wide v5

    .line 122
    :cond_0
    :goto_1
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1

    .line 123
    iget-object v7, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    const-string v8, "_thumb.png"

    invoke-virtual {v7, v5, v6, v8}, Lcom/motorola/blur/util/cache/ProviderIconCache;->getIcon(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 124
    .local v2, bm:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/AccountPreference;->setProviderIcon(Landroid/graphics/Bitmap;)V

    .line 113
    .end local v2           #bm:Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    :cond_2
    const-string v7, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "blur"

    invoke-static {v7, v8}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_1

    .line 129
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountPreference:Lcom/motorola/blur/settings/AccountPreference;
    .end local v5           #providerId:J
    :cond_3
    return-void
.end method


# virtual methods
.method public createNewAccount()V
    .locals 2

    .prologue
    .line 466
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 467
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 3
    .parameter "accounts"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mBlurAccountsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mBlurAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 451
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mSilentBlur:Z

    if-nez v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mOtherAccountsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mOtherAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 458
    :cond_1
    new-instance v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;-><init>(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [[Landroid/accounts/Account;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 459
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->createNewAccount()V

    .line 463
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 532
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 533
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v4}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->getAccountPreferenceFromContextMenu(I)Lcom/motorola/blur/settings/AccountPreference;

    move-result-object v1

    .line 534
    .local v1, accountPreference:Lcom/motorola/blur/settings/AccountPreference;
    if-nez v1, :cond_0

    .line 535
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    .line 553
    :goto_0
    return v4

    .line 537
    :cond_0
    invoke-virtual {v1}, Lcom/motorola/blur/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 538
    .local v0, account:Landroid/accounts/Account;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 553
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0

    .line 540
    :pswitch_0
    invoke-static {p0, v0}, Lcom/motorola/blur/settings/AccountPreference;->createIntent(Landroid/content/Context;Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object v3

    .line 541
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "Visual Voice Mail"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 542
    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    move v4, v6

    .line 546
    goto :goto_0

    .line 544
    :cond_1
    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 549
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->confirmDeleteAccount(Landroid/accounts/Account;)V

    move v4, v6

    .line 550
    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 145
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const v3, 0x7f03002a

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->setContentView(I)V

    .line 149
    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 150
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v3, 0x7f0c005b

    const v4, 0x7f0b000a

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAddAccountButton:Landroid/widget/Button;

    .line 151
    iget-object v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 152
    invoke-static {}, Lcom/motorola/blur/util/os/MyLooper;->singleton()Landroid/os/Looper;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/motorola/blur/util/cache/ProviderIconCache;->singleton(Landroid/content/Context;Landroid/os/Looper;)Lcom/motorola/blur/util/cache/ProviderIconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    .line 153
    iget-object v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    invoke-virtual {v3, v6}, Lcom/motorola/blur/util/cache/ProviderIconCache;->setMaxPhotoLengthPixels(I)V

    .line 154
    iget-object v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    iget-object v4, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/motorola/blur/util/cache/ProviderIconCache;->addOnCacheChangedListener(Landroid/os/Handler;)V

    .line 156
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAccountManager:Landroid/accounts/AccountManager;

    .line 157
    const v3, 0x7f050002

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->addPreferencesFromResource(I)V

    .line 158
    const-string v3, "blurAccountsCategory"

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mBlurAccountsCategory:Landroid/preference/PreferenceCategory;

    .line 160
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isSilentRegistrationRequired(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mSilentBlur:Z

    .line 161
    iget-boolean v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mSilentBlur:Z

    if-nez v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mBlurAccountsCategory:Landroid/preference/PreferenceCategory;

    const v4, 0x7f0c0127

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 166
    :goto_0
    iget-object v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAuthTypes:Ljava/util/HashMap;

    .line 169
    iget-object v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 170
    .local v2, types:[Landroid/accounts/AuthenticatorDescription;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAuthTypes:Ljava/util/HashMap;

    aget-object v4, v2, v1

    iget-object v4, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 164
    .end local v1           #i:I
    .end local v2           #types:[Landroid/accounts/AuthenticatorDescription;
    :cond_0
    iget-object v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mBlurAccountsCategory:Landroid/preference/PreferenceCategory;

    const v4, 0x7f030002

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    goto :goto_0

    .line 176
    .restart local v1       #i:I
    .restart local v2       #types:[Landroid/accounts/AuthenticatorDescription;
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, p0, v4, v5}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 178
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v3, v4, v6}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 179
    invoke-virtual {p0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 180
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 508
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 509
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 510
    .local v2, listPosition:I
    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->getAccountPreferenceFromContextMenu(I)Lcom/motorola/blur/settings/AccountPreference;

    move-result-object v0

    .line 511
    .local v0, accountPreference:Lcom/motorola/blur/settings/AccountPreference;
    if-nez v0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    invoke-virtual {v0}, Lcom/motorola/blur/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v1, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 516
    .local v1, accountType:Ljava/lang/String;
    const-string v3, "com.motorola.android.buacontactadapter"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 521
    invoke-virtual {v0}, Lcom/motorola/blur/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.motorola.nabsync.MyPhonebook"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 522
    const/4 v3, 0x2

    const v4, 0x7f0c005a

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 525
    :cond_2
    const-string v3, "com.motorola.blur.provider"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    const v3, 0x7f0c005c

    invoke-interface {p1, v6, v6, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 472
    const v1, 0x7f0c005b

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 473
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 474
    const/4 v1, 0x1

    return v1
.end method

.method public onDeleteFinished(ZI)V
    .locals 1
    .parameter "deleted"
    .parameter "error"

    .prologue
    .line 189
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mErrorCode:I

    .line 190
    return-void

    :cond_0
    move v0, p2

    .line 189
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 210
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;

    iget-object v1, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/util/cache/ProviderIconCache;->removeOnCacheChangedDataListener(Landroid/os/Handler;)V

    .line 211
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 212
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mBlurAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-static {v0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->unbindPreferenceIcons(Landroid/preference/PreferenceCategory;)V

    .line 213
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mOtherAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-static {v0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->unbindPreferenceIcons(Landroid/preference/PreferenceCategory;)V

    .line 214
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 215
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 480
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 486
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 482
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->createNewAccount()V

    .line 483
    const/4 v0, 0x1

    goto :goto_0

    .line 480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 204
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 205
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onWindowFocusChanged(Z)V

    .line 195
    iget v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mErrorCode:I

    if-eqz v0, :cond_0

    .line 196
    iget v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mErrorCode:I

    invoke-static {p0, v0}, Lcom/motorola/blur/setup/SilentBlurUtility;->showErrorDialog(Landroid/content/Context;I)V

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mErrorCode:I

    .line 199
    :cond_0
    return-void
.end method

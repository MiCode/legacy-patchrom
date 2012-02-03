.class public Landroid/accounts/ChooseAccountActivity;
.super Landroid/app/ListActivity;
.source "ChooseAccountActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountManager"


# instance fields
.field private mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

.field private mAccounts:[Landroid/os/Parcelable;

.field private mResult:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 31
    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    .line 32
    iput-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    iget-object v1, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManagerResponse;->onResult(Landroid/os/Bundle;)V

    .line 80
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    .line 81
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManagerResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "accounts"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    .line 40
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "accountManagerResponse"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManagerResponse;

    iput-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mAccountManagerResponse:Landroid/accounts/AccountManagerResponse;

    .line 44
    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    if-nez v2, :cond_0

    .line 45
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/accounts/ChooseAccountActivity;->setResult(I)V

    .line 46
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->finish()V

    .line 60
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 51
    .local v1, mAccountNames:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 52
    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v2, v2, v0

    check-cast v2, Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/accounts/ChooseAccountActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 63
    iget-object v2, p0, Landroid/accounts/ChooseAccountActivity;->mAccounts:[Landroid/os/Parcelable;

    aget-object v0, v2, p3

    check-cast v0, Landroid/accounts/Account;

    .line 64
    .local v0, account:Landroid/accounts/Account;
    const-string v2, "AccountManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selected account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "authAccount"

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "accountType"

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object v1, p0, Landroid/accounts/ChooseAccountActivity;->mResult:Landroid/os/Bundle;

    .line 69
    invoke-virtual {p0}, Landroid/accounts/ChooseAccountActivity;->finish()V

    .line 70
    return-void
.end method

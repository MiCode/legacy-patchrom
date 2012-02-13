.class public Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "EmailAccountsListSyncActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/EmailAccountsListSyncActivity$ExtSimpleCursorAdapter;
    }
.end annotation


# instance fields
.field private mBackground:I

.field private mExistingAccount:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 87
    iput-boolean v0, p0, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->mExistingAccount:Z

    .line 88
    iput v0, p0, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->mBackground:I

    .line 135
    return-void
.end method

.method private final setButtons()V
    .locals 5

    .prologue
    .line 64
    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 66
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v3, 0x7f0c0004

    const/high16 v4, 0x7f0b

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 67
    .local v1, backButton:Landroid/widget/Button;
    const v3, 0x7f0c0003

    const v4, 0x7f0b0001

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 68
    .local v2, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 69
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 71
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method private final setupAccountsWiFiSync()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 100
    const v1, 0x7f0b00b3

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 101
    .local v6, list:Landroid/widget/ListView;
    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->EMAIL_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 102
    .local v3, c:Landroid/database/Cursor;
    new-instance v0, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity$ExtSimpleCursorAdapter;

    const v2, 0x7f030022

    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "email_address"

    aput-object v1, v4, v7

    new-array v5, v8, [I

    const v1, 0x7f0b00b6

    aput v1, v5, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity$ExtSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 107
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 109
    new-instance v1, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity$1;

    invoke-direct {v1, p0}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity$1;-><init>(Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected final goNext()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "existing"

    iget-boolean v2, p0, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->mExistingAccount:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget v2, p0, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->mBackground:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-class v1, Lcom/motorola/blur/setup/CongratsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 79
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->goNext()V

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->goBack()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x7f0b0000
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 47
    const-string v1, "existing"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->mExistingAccount:Z

    .line 48
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->mBackground:I

    .line 51
    :cond_0
    const v1, 0x7f030021

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->setButtons()V

    .line 53
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onStart()V

    .line 59
    invoke-direct {p0}, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;->setupAccountsWiFiSync()V

    .line 60
    return-void
.end method

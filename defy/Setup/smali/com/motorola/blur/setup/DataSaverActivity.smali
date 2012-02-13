.class public Lcom/motorola/blur/setup/DataSaverActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "DataSaverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DSM_SETTING_NAME:Ljava/lang/String; = "data_saver_mode"

.field private static final MOTOROLA_SETTINGS_COL_ID:Ljava/lang/String; = "_id"

.field private static final MOTOROLA_SETTINGS_COL_NAME:Ljava/lang/String; = "name"

.field private static final MOTOROLA_SETTINGS_COL_VALUE:Ljava/lang/String; = "value"

.field private static final MOTOROLA_SETTINGS_CONTENT_URI:Landroid/net/Uri; = null

.field private static final WHERE_DSM_SETTING:Ljava/lang/String; = "name == \'data_saver_mode\'"


# instance fields
.field private mBackground:I

.field private mExistingAccount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "content://com.motorola.android.providers.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/setup/DataSaverActivity;->MOTOROLA_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/motorola/blur/setup/DataSaverActivity;->mExistingAccount:Z

    .line 76
    iput v0, p0, Lcom/motorola/blur/setup/DataSaverActivity;->mBackground:I

    return-void
.end method

.method private static getDSMStatus(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/setup/DataSaverActivity;->MOTOROLA_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "name == \'data_saver_mode\'"

    const-string v5, "_id"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 115
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v9

    .line 126
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 121
    .local v8, valueColumn:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_1

    move v7, v10

    .line 125
    .end local v8           #valueColumn:I
    .local v7, isDSMEnabled:Z
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 126
    goto :goto_0

    .end local v7           #isDSMEnabled:Z
    .restart local v8       #valueColumn:I
    :cond_1
    move v7, v9

    .line 121
    goto :goto_1

    .line 123
    .end local v8           #valueColumn:I
    :cond_2
    const/4 v7, 0x0

    .restart local v7       #isDSMEnabled:Z
    goto :goto_1
.end method

.method private final goNext()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "existing"

    iget-boolean v2, p0, Lcom/motorola/blur/setup/DataSaverActivity;->mExistingAccount:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget v2, p0, Lcom/motorola/blur/setup/DataSaverActivity;->mBackground:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    iget-boolean v1, p0, Lcom/motorola/blur/setup/DataSaverActivity;->mExistingAccount:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/motorola/blur/setup/DataSaverActivity;->getDSMStatus(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/motorola/blur/setup/DataSaverActivity;->haveEmailAccounts(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-class v1, Lcom/motorola/blur/setup/EmailAccountsListSyncActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/DataSaverActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void

    .line 89
    :cond_0
    const-class v1, Lcom/motorola/blur/setup/CongratsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private final setButtons()V
    .locals 4

    .prologue
    .line 59
    const v2, 0x7f0b0011

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/DataSaverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 60
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v2, 0x7f0c0003

    const v3, 0x7f0b0001

    invoke-static {p0, v2, v3}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 61
    .local v1, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 62
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 70
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/DataSaverActivity;->goNext()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x7f0b0001
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/motorola/blur/setup/DataSaverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 42
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 43
    const-string v4, "existing"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/motorola/blur/setup/DataSaverActivity;->mExistingAccount:Z

    .line 44
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/motorola/blur/setup/DataSaverActivity;->mBackground:I

    .line 47
    :cond_0
    const v4, 0x7f03001c

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/DataSaverActivity;->setContentView(I)V

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.motorola.blur.datamanager.app.START_DATA_SAVER_MODE_ACTIVITY"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, i:Landroid/content/Intent;
    const-string v4, "DisableBackKey"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0}, Lcom/motorola/blur/setup/DataSaverActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v4

    const-string v5, "DataSaverMode"

    invoke-virtual {v4, v5, v0}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v3

    .line 51
    .local v3, win:Landroid/view/Window;
    const v4, 0x7f0b0059

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/DataSaverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 52
    .local v2, view:Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    invoke-direct {p0}, Lcom/motorola/blur/setup/DataSaverActivity;->setButtons()V

    .line 55
    return-void
.end method

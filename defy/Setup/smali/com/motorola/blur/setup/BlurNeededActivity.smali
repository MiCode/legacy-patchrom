.class public Lcom/motorola/blur/setup/BlurNeededActivity;
.super Landroid/app/Activity;
.source "BlurNeededActivity.java"


# instance fields
.field private mSilentSetup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/BlurNeededActivity;->mSilentSetup:Z

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/BlurNeededActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/BlurNeededActivity;->launchSetup(Landroid/app/Activity;)V

    return-void
.end method

.method private final launchSetup(Landroid/app/Activity;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 112
    iget-boolean v1, p0, Lcom/motorola/blur/setup/BlurNeededActivity;->mSilentSetup:Z

    if-nez v1, :cond_0

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/setup/SetupInfoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v0, in:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 118
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    .line 119
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 120
    return-void

    .line 115
    .end local v0           #in:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #in:Landroid/content/Intent;
    goto :goto_0
.end method

.method private final showDialogAndRunSetup(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 85
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x30a006d

    new-instance v3, Lcom/motorola/blur/setup/BlurNeededActivity$3;

    invoke-direct {v3, p0, p1}, Lcom/motorola/blur/setup/BlurNeededActivity$3;-><init>(Lcom/motorola/blur/setup/BlurNeededActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x30a007a

    new-instance v3, Lcom/motorola/blur/setup/BlurNeededActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/motorola/blur/setup/BlurNeededActivity$2;-><init>(Lcom/motorola/blur/setup/BlurNeededActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/motorola/blur/setup/BlurNeededActivity$1;

    invoke-direct {v2, p0}, Lcom/motorola/blur/setup/BlurNeededActivity$1;-><init>(Lcom/motorola/blur/setup/BlurNeededActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 108
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {p0}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->hasBlurAccount(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 38
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/BlurNeededActivity;->setResult(I)V

    .line 39
    invoke-virtual {p0}, Lcom/motorola/blur/setup/BlurNeededActivity;->finish()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/BlurNeededActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 44
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 45
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isSilentRegistrationRequired(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/motorola/blur/setup/BlurNeededActivity;->mSilentSetup:Z

    .line 46
    const-string v6, "app_name"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, appName:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 52
    iget-boolean v6, p0, Lcom/motorola/blur/setup/BlurNeededActivity;->mSilentSetup:Z

    if-eqz v6, :cond_4

    .line 53
    const-string v6, "com.android.settings.deviceinfo.CheckUpdate"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 54
    const-string v6, "DeviceSetup"

    invoke-virtual {p0, v6, v8}, Lcom/motorola/blur/setup/BlurNeededActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 55
    .local v4, settings:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 56
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "BlurServiceSlientRegistrationSystemUpdateRequest"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    const v6, 0x7f0c0144

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/BlurNeededActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, title:Ljava/lang/String;
    const v6, 0x7f0c0145

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/BlurNeededActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #settings:Landroid/content/SharedPreferences;
    .local v3, message:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-direct {p0, p0, v5, v3}, Lcom/motorola/blur/setup/BlurNeededActivity;->showDialogAndRunSetup(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_3
    const v6, 0x7f0c0146

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/BlurNeededActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 63
    .restart local v5       #title:Ljava/lang/String;
    const v6, 0x7f0c0148

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/BlurNeededActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #message:Ljava/lang/String;
    goto :goto_1

    .line 66
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_4
    const-string v6, "title"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .restart local v5       #title:Ljava/lang/String;
    const-string v6, "message"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .restart local v3       #message:Ljava/lang/String;
    if-nez v3, :cond_5

    .line 70
    const v6, 0x30a009d

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/BlurNeededActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 72
    :cond_5
    if-nez v5, :cond_2

    .line 73
    const v6, 0x30a009c

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/BlurNeededActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 79
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_6
    invoke-direct {p0, p0}, Lcom/motorola/blur/setup/BlurNeededActivity;->launchSetup(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

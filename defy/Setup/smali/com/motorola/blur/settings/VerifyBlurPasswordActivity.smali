.class public Lcom/motorola/blur/settings/VerifyBlurPasswordActivity;
.super Landroid/app/Activity;
.source "VerifyBlurPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CARRIER_CONTACT_INFO:Ljava/lang/String; = "carrier_contact_info"

.field private static final TAG:Ljava/lang/String; = "SettingsVBPA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkPasswordFromGAM()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, error:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 87
    .local v2, validPswd:Ljava/lang/Boolean;
    const v3, 0x7f0b011c

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/VerifyBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, password:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->verifyBlurPasswordFromGAM(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    if-nez v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    const v3, 0x7f0c008f

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/VerifyBlurPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/motorola/blur/settings/VerifyBlurPasswordActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    :cond_1
    move v3, v4

    .line 90
    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 77
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 82
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const-string v4, "motoblurId"

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 72
    invoke-virtual {p0}, Lcom/motorola/blur/settings/VerifyBlurPasswordActivity;->onBackPressed()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 57
    :sswitch_0
    invoke-static {p0}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->getForgotPasswordDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    .local v0, d:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 61
    .end local v0           #d:Landroid/app/AlertDialog$Builder;
    :sswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/settings/VerifyBlurPasswordActivity;->checkPasswordFromGAM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/blur/settings/ChangeBlurEmailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "motoblurId"

    invoke-virtual {p0}, Lcom/motorola/blur/settings/VerifyBlurPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "motoblurId"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/VerifyBlurPasswordActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lcom/motorola/blur/settings/VerifyBlurPasswordActivity;->finish()V

    goto :goto_0

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0003 -> :sswitch_1
        0x7f0b007f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v3, 0x7f03004a

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/VerifyBlurPasswordActivity;->setContentView(I)V

    .line 42
    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/VerifyBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 43
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v3, 0x7f0c007f

    const v4, 0x7f0b0003

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 44
    .local v2, okButton:Landroid/widget/Button;
    const v3, 0x7f0c0057

    const v4, 0x7f0b0004

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 45
    .local v1, cancelButton:Landroid/widget/Button;
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 49
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v3, 0x7f0b007f

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/VerifyBlurPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

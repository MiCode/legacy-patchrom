.class public Lcom/motorola/blur/settings/EditBlurAccountActivity;
.super Landroid/app/Activity;
.source "EditBlurAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsEBAA"


# instance fields
.field private mMotoblurId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/settings/EditBlurAccountActivity;->mMotoblurId:Ljava/lang/String;

    return-void
.end method

.method private launchChangePswdScreen(Ljava/lang/String;)V
    .locals 3
    .parameter "error"

    .prologue
    const-class v2, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditBlurAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    sget-object v0, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->good:Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;

    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/settings/ChangeBlurPasswordActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.motorola.blur.service.bsutils.MOTHER_USER_ACCOUNT_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditBlurAccountActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setMotoblurId()V
    .locals 2

    .prologue
    .line 107
    invoke-static {p0}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->getMotoBlurId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/EditBlurAccountActivity;->mMotoblurId:Ljava/lang/String;

    .line 108
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditBlurAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/blur/settings/EditBlurAccountActivity;->mMotoblurId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 77
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditBlurAccountActivity;->onBackPressed()V

    .line 79
    :goto_0
    return-void

    .line 60
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/motorola/blur/settings/VerifyBlurPasswordActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "motoblurId"

    iget-object v3, p0, Lcom/motorola/blur/settings/EditBlurAccountActivity;->mMotoblurId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EditBlurAccountActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    :sswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/motorola/blur/settings/EditBlurAccountActivity;->launchChangePswdScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :sswitch_2
    invoke-static {p0}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->getForgotPasswordDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 71
    .local v0, d:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 58
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0078 -> :sswitch_0
        0x7f0b007d -> :sswitch_1
        0x7f0b007f -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v3, 0x7f03001f

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/EditBlurAccountActivity;->setContentView(I)V

    .line 43
    const v3, 0x7f0b0078

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/EditBlurAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v3, 0x7f0b007d

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/EditBlurAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v3, 0x7f0b007f

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/EditBlurAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/EditBlurAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 48
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v3, 0x7f0c0080

    const v4, 0x7f0b0002

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 49
    .local v1, closeButton:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 52
    invoke-static {p0}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->getMotoBlurError(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, error:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/EditBlurAccountActivity;->launchChangePswdScreen(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditBlurAccountActivity;->setMotoblurId()V

    .line 55
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditBlurAccountActivity;->setMotoblurId()V

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    return-void
.end method

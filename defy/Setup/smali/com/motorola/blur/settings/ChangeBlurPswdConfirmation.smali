.class public Lcom/motorola/blur/settings/ChangeBlurPswdConfirmation;
.super Landroid/app/Activity;
.source "ChangeBlurPswdConfirmation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v2, 0x7f030014

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/ChangeBlurPswdConfirmation;->setContentView(I)V

    .line 35
    const v2, 0x7f0b0011

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/ChangeBlurPswdConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 36
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v2, 0x7f0c007f

    const v3, 0x7f0b0003

    invoke-static {p0, v2, v3}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 37
    .local v1, okButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 39
    new-instance v2, Lcom/motorola/blur/settings/ChangeBlurPswdConfirmation$1;

    invoke-direct {v2, p0}, Lcom/motorola/blur/settings/ChangeBlurPswdConfirmation$1;-><init>(Lcom/motorola/blur/settings/ChangeBlurPswdConfirmation;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

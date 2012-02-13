.class public Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;
.super Landroid/app/Activity;
.source "ChangeBlurIdConfirmation.java"


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
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v3, 0x7f030012

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 36
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 37
    const v3, 0x7f0b003b

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "motoblurId"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const-string v3, "motoblurIdVerified"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 41
    const v3, 0x7f0b003c

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c0046

    invoke-virtual {p0, v5}, Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c0047

    invoke-virtual {p0, v5}, Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 49
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v3, 0x7f0c007f

    const v4, 0x7f0b0003

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 50
    .local v2, okButton:Landroid/widget/Button;
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 52
    new-instance v3, Lcom/motorola/blur/settings/ChangeBlurIdConfirmation$1;

    invoke-direct {v3, p0}, Lcom/motorola/blur/settings/ChangeBlurIdConfirmation$1;-><init>(Lcom/motorola/blur/settings/ChangeBlurIdConfirmation;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

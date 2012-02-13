.class public Lcom/motorola/blur/setup/AccountCreationTimeout;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "AccountCreationTimeout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 41
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/motorola/blur/setup/SkipSetupActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/AccountCreationTimeout;->startActivity(Landroid/content/Intent;)V

    .line 44
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/AccountCreationTimeout;->setResult(I)V

    .line 45
    invoke-virtual {p0}, Lcom/motorola/blur/setup/AccountCreationTimeout;->finish()V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0003
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/AccountCreationTimeout;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lcom/motorola/blur/setup/AccountCreationTimeout;->setButtonsToListener()V

    .line 22
    return-void
.end method

.method public setButtonsToListener()V
    .locals 4

    .prologue
    .line 29
    const v2, 0x7f0b0011

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/AccountCreationTimeout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 31
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v2, 0x7f0c007f

    const v3, 0x7f0b0003

    invoke-static {p0, v2, v3}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 32
    .local v1, okButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 34
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

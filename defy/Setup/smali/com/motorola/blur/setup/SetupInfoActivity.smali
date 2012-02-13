.class public Lcom/motorola/blur/setup/SetupInfoActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "SetupInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupInfoActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    return-void
.end method

.method private final setButtons()V
    .locals 5

    .prologue
    .line 26
    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/SetupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 28
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v3, 0x7f0c0120

    const/high16 v4, 0x7f0b

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 29
    .local v1, backButton:Landroid/widget/Button;
    const v3, 0x7f0c0057

    const v4, 0x7f0b0001

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 30
    .local v2, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 31
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 33
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected final goNext()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SetupInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 40
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupInfoActivity;->goNext()V

    goto :goto_0

    .line 43
    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupInfoActivity;->goBack()V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x7f0b0000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SetupInfoActivity;->setContentView(I)V

    .line 21
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupInfoActivity;->setButtons()V

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/blur/setup/SetupInfoActivity;->sBlurDeferredSetup:Z

    .line 23
    return-void
.end method

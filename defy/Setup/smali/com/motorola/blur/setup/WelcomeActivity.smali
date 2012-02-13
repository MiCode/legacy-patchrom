.class public Lcom/motorola/blur/setup/WelcomeActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final UPDATE_REQUEST_ID:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 41
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/WelcomeActivity;->setResult(I)V

    .line 42
    invoke-virtual {p0}, Lcom/motorola/blur/setup/WelcomeActivity;->finish()V

    goto :goto_0

    .line 46
    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/WelcomeActivity;->goBack()V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x7f0b0000
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 23
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v3, 0x7f03004c

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/WelcomeActivity;->setContentView(I)V

    .line 25
    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 27
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v3, 0x7f0c0004

    const/high16 v4, 0x7f0b

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 28
    .local v1, backButton:Landroid/widget/Button;
    const v3, 0x7f0c0003

    const v4, 0x7f0b0001

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 29
    .local v2, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 30
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 32
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-static {p0, v5, v5}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilMethods;->sendCheckForUpdate(Landroid/content/Context;ZI)V

    .line 36
    return-void
.end method

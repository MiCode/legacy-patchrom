.class public Lcom/motorola/blur/setup/ConnectionFailed;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "ConnectionFailed.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    return-void
.end method

.method private continueToNext()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    const-class v4, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    const v2, 0x7f0b004d

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/ConnectionFailed;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 59
    .local v1, radios:Landroid/widget/RadioGroup;
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 81
    const-class v2, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/ConnectionFailed;->startActivity(Landroid/content/Intent;)V

    .line 83
    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/ConnectionFailed;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ConnectionFailed;->finish()V

    .line 87
    :goto_0
    return-void

    .line 61
    :pswitch_0
    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/ConnectionFailed;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/ConnectionFailed;->setResult(I)V

    goto :goto_0

    .line 67
    :pswitch_1
    const-class v2, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/ConnectionFailed;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/ConnectionFailed;->setResult(I)V

    .line 70
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ConnectionFailed;->finish()V

    goto :goto_0

    .line 74
    :pswitch_2
    const-class v2, Lcom/motorola/blur/setup/SkipSetupActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/ConnectionFailed;->startActivity(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/ConnectionFailed;->setResult(I)V

    .line 77
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ConnectionFailed;->finish()V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b004e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected goBack()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 47
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ConnectionFailed;->goBack()V

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionFailed;->continueToNext()V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x7f0b0000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/ConnectionFailed;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ConnectionFailed;->setButtonsToListener()V

    .line 23
    return-void
.end method

.method public setButtonsToListener()V
    .locals 5

    .prologue
    .line 30
    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/ConnectionFailed;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 32
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v3, 0x7f0c0004

    const/high16 v4, 0x7f0b

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 33
    .local v1, backButton:Landroid/widget/Button;
    const v3, 0x7f0c0003

    const v4, 0x7f0b0001

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 34
    .local v2, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 35
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 37
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 41
    return-void
.end method

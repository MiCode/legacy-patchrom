.class public Lcom/motorola/blur/setup/ConnectionChooserActivity;
.super Lcom/motorola/blur/setup/ConnectionSetupActivity;
.source "ConnectionChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/ConnectionChooserActivity$Choice;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupCCA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionSetupActivity;-><init>()V

    .line 35
    return-void
.end method

.method private final doRetry()V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Lcom/motorola/blur/setup/ConnectionChooserActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ConnectionChooserActivity$2;-><init>(Lcom/motorola/blur/setup/ConnectionChooserActivity;)V

    .line 174
    .local v0, onConnection:Ljava/lang/Runnable;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->checkConnection(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method private final goNext()V
    .locals 7

    .prologue
    .line 126
    const v3, 0x7f0b004a

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 127
    .local v2, spinner:Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/setup/ConnectionChooserActivity$Choice;

    .line 128
    .local v1, selected:Lcom/motorola/blur/setup/ConnectionChooserActivity$Choice;
    if-nez v1, :cond_0

    .line 129
    const-string v3, "SetupCCA"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "No choice!"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :goto_0
    return-void

    .line 132
    :cond_0
    iget v3, v1, Lcom/motorola/blur/setup/ConnectionChooserActivity$Choice;->choice:I

    packed-switch v3, :pswitch_data_0

    .line 153
    :goto_1
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->setResult(I)V

    goto :goto_0

    .line 134
    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/motorola/blur/setup/WiFiSettingsActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 137
    :pswitch_1
    new-instance v0, Lcom/motorola/blur/setup/ConnectionChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/ConnectionChooserActivity$1;-><init>(Lcom/motorola/blur/setup/ConnectionChooserActivity;)V

    .line 147
    .local v0, onConnection:Ljava/lang/Runnable;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->checkConnection(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 150
    .end local v0           #onConnection:Ljava/lang/Runnable;
    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->setUpCancel()V

    goto :goto_1

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final hasCellDataOnly()Z
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Lcom/motorola/blur/setup/ConnectionChooserActivity;->mShowSkipSetupMenu:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->hasWiFiSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final setButtons()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 65
    const v5, 0x7f0b0011

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 67
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v5, 0x7f0c0004

    const/high16 v6, 0x7f0b

    invoke-static {p0, v5, v6}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 68
    .local v2, backButton:Landroid/widget/Button;
    const v5, 0x7f0c0003

    const v6, 0x7f0b0001

    invoke-static {p0, v5, v6}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v3

    .line 69
    .local v3, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 70
    invoke-virtual {v0, v3}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 72
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v5, 0x7f0b004a

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 76
    .local v4, spinner:Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v1, p0, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 77
    .local v1, arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/motorola/blur/setup/ConnectionChooserActivity$Choice;>;"
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->hasWiFiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    new-instance v5, Lcom/motorola/blur/setup/ConnectionChooserActivity$Choice;

    const v6, 0x7f0c014a

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v8}, Lcom/motorola/blur/setup/ConnectionChooserActivity$Choice;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 81
    :cond_0
    new-instance v5, Lcom/motorola/blur/setup/ConnectionChooserActivity$Choice;

    const v6, 0x7f0c0122

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/motorola/blur/setup/ConnectionChooserActivity$Choice;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 82
    sget-boolean v5, Lcom/motorola/blur/setup/ConnectionChooserActivity;->mShowSkipSetupMenu:Z

    if-eqz v5, :cond_1

    .line 83
    new-instance v5, Lcom/motorola/blur/setup/ConnectionChooserActivity$Choice;

    const v6, 0x7f0c0123

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lcom/motorola/blur/setup/ConnectionChooserActivity$Choice;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 86
    :cond_1
    const v5, 0x109000a

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 87
    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 88
    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 89
    return-void
.end method

.method private final setButtonsCellDataOnly()V
    .locals 6

    .prologue
    .line 93
    const v4, 0x7f0b0011

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 95
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v4, 0x7f0c0004

    const/high16 v5, 0x7f0b

    invoke-static {p0, v4, v5}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 96
    .local v1, backButton:Landroid/widget/Button;
    const v4, 0x7f0c0003

    const v5, 0x7f0b0001

    invoke-static {p0, v4, v5}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v3

    .line 97
    .local v3, nextButton:Landroid/widget/Button;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 99
    invoke-virtual {v0, v3}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 101
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v4, 0x7f0b0048

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 104
    .local v2, button:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 112
    :sswitch_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->goNext()V

    goto :goto_0

    .line 116
    :sswitch_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->goBack()V

    goto :goto_0

    .line 120
    :sswitch_2
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->doRetry()V

    goto :goto_0

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x7f0b0000 -> :sswitch_1
        0x7f0b0001 -> :sswitch_0
        0x7f0b0048 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->hasCellDataOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->setButtonsCellDataOnly()V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->setButtons()V

    goto :goto_0
.end method

.class public Lcom/android/settings/MediaFormatSd;
.super Landroid/app/Activity;
.source "MediaFormatSd.java"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Lcom/android/settings/MediaFormatSd$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormatSd$1;-><init>(Lcom/android/settings/MediaFormatSd;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 100
    new-instance v0, Lcom/android/settings/MediaFormatSd$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormatSd$2;-><init>(Lcom/android/settings/MediaFormatSd;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MediaFormatSd;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/MediaFormatSd;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MediaFormatSd;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/MediaFormatSd;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalView:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalView:Landroid/view/View;

    const v1, 0x7f0b009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalButton:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormatSd;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormatSd;->setContentView(Landroid/view/View;)V

    .line 120
    return-void
.end method

.method private establishInitialState()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitialView:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitiateButton:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormatSd;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormatSd;->setContentView(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 70
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0802ed

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormatSd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0802ef

    invoke-virtual {p0, v2}, Lcom/android/settings/MediaFormatSd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 80
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/android/settings/MediaFormatSd;->establishFinalConfirmationState()V

    goto :goto_0

    .line 88
    :cond_1
    if-nez p2, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/MediaFormatSd;->finish()V

    goto :goto_0

    .line 91
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MediaFormatSd;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitialView:Landroid/view/View;

    .line 150
    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalView:Landroid/view/View;

    .line 151
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInflater:Landroid/view/LayoutInflater;

    .line 153
    invoke-direct {p0}, Lcom/android/settings/MediaFormatSd;->establishInitialState()V

    .line 154
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/MediaFormatSd;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/android/settings/MediaFormatSd;->establishInitialState()V

    .line 167
    :cond_0
    return-void
.end method

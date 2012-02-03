.class public Lcom/android/settings/ConfirmLockPassword;
.super Landroid/app/Activity;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmLockPassword;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ConfirmLockPassword;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleNext()V
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, pin:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPassword;->setResult(I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->finish()V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const v1, 0x7f08033d

    invoke-direct {p0, v1}, Lcom/android/settings/ConfirmLockPassword;->showError(I)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 7

    .prologue
    const/high16 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 54
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 55
    .local v1, storedQuality:I
    const v2, 0x7f030018

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPassword;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 60
    const v2, 0x7f0b002c

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v2, 0x7f0b0026

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v2, 0x7f0b002a

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 64
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->showCursorController(Z)V

    .line 65
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v3, Lcom/android/settings/ConfirmLockPassword$1;

    invoke-direct {v3, p0}, Lcom/android/settings/ConfirmLockPassword$1;-><init>(Lcom/android/settings/ConfirmLockPassword;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 71
    const v2, 0x7f0b002b

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 72
    const v2, 0x7f0b0028

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    .line 73
    const/high16 v2, 0x4

    if-eq v2, v1, :cond_0

    const/high16 v2, 0x5

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v6

    .line 75
    .local v0, isAlpha:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const v3, 0x7f080331

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 77
    new-instance v2, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 78
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    if-eqz v0, :cond_3

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 80
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x1070017

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setVibratePattern(I)V

    .line 82
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v2}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 83
    return-void

    .end local v0           #isAlpha:Z
    :cond_1
    move v0, v5

    .line 73
    goto :goto_0

    .line 75
    .restart local v0       #isAlpha:Z
    :cond_2
    const v3, 0x7f080332

    goto :goto_1

    :cond_3
    move v3, v6

    .line 78
    goto :goto_2

    :cond_4
    move v3, v5

    .line 80
    goto :goto_3
.end method

.method private showError(I)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/ConfirmLockPassword$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmLockPassword$2;-><init>(Lcom/android/settings/ConfirmLockPassword;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 111
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->handleNext()V

    goto :goto_0

    .line 115
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPassword;->setResult(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->finish()V

    goto :goto_0

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x7f0b0026 -> :sswitch_0
        0x7f0b002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 50
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->initViews()V

    .line 51
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 139
    if-nez p2, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword;->handleNext()V

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 96
    return-void
.end method

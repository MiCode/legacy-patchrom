.class public Lcom/android/settings/ChooseLockPassword;
.super Landroid/app/Activity;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$Stage;
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;


# instance fields
.field isChangePwdRequired:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mFirstPin:Ljava/lang/String;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMinPasswordComplexChars:I

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/settings/ChooseLockPassword;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    .line 56
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    .line 58
    const/high16 v0, 0x2

    iput v0, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    .line 60
    sget-object v0, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 77
    iput v1, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 83
    return-void
.end method

.method private handleNext()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 347
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, pin:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    const/4 v1, 0x0

    .line 352
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v4, v5, :cond_3

    .line 353
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    if-nez v1, :cond_2

    .line 355
    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    .line 356
    sget-object v4, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 357
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 383
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-direct {p0, v1, v4}, Lcom/android/settings/ChooseLockPassword;->showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$Stage;)V

    goto :goto_0

    .line 359
    :cond_3
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v4, v5, :cond_2

    .line 360
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 361
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 362
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 364
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->setResult(I)V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 369
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 373
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->finish()V

    goto :goto_1

    .line 375
    :cond_5
    sget-object v4, Lcom/android/settings/ChooseLockPassword$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 376
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 377
    .local v3, tmp:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 378
    move-object v0, v3

    check-cast v0, Landroid/text/Spannable;

    move-object v4, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v6, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/high16 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->setContentView(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 164
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    .line 165
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    .line 167
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 170
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->showCursorController(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/ChooseLockPassword$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockPassword$1;-><init>(Lcom/android/settings/ChooseLockPassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 180
    const/high16 v0, 0x4

    iget v1, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x5

    iget v1, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    .line 182
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 183
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x1070017

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setVibratePattern(I)V

    .line 189
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    .line 190
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 192
    return-void

    :cond_1
    move v0, v3

    .line 180
    goto :goto_0

    :cond_2
    move v1, v4

    .line 183
    goto :goto_1

    :cond_3
    move v1, v3

    .line 186
    goto :goto_2
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/ChooseLockPassword$2;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/ChooseLockPassword$2;-><init>(Lcom/android/settings/ChooseLockPassword;Lcom/android/settings/ChooseLockPassword$Stage;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    return-void
.end method

.method private updateUi()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 436
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 437
    .local v4, password:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 439
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 440
    .local v2, length:I
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v6, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v5, v6, :cond_4

    if-lez v2, :cond_4

    .line 441
    iget v5, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    if-ge v2, v5, :cond_1

    .line 442
    iget-boolean v5, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v5, :cond_0

    const v5, 0x7f080117

    :goto_0
    new-array v6, v7, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, msg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 466
    .end local v3           #msg:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    iget v6, v6, Lcom/android/settings/ChooseLockPassword$Stage;->buttonText:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 467
    return-void

    .line 442
    :cond_0
    const v5, 0x7f080118

    goto :goto_0

    .line 447
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings/ChooseLockPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, error:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 449
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 453
    :cond_2
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 454
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f08011a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 459
    :goto_2
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 457
    :cond_3
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f080119

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 463
    .end local v1           #error:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    iget v6, v6, Lcom/android/settings/ChooseLockPassword$Stage;->alphaHint:I

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 464
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    if-lez v2, :cond_6

    move v6, v7

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 463
    :cond_5
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    iget v6, v6, Lcom/android/settings/ChooseLockPassword$Stage;->numericHint:I

    goto :goto_3

    :cond_6
    move v6, v8

    .line 464
    goto :goto_4
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "password"

    .prologue
    const v13, 0x7f080121

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    if-ge v9, v10, :cond_1

    .line 275
    iget-boolean v9, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v9, :cond_0

    const v9, 0x7f080117

    :goto_0
    new-array v10, v11, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 343
    :goto_1
    return-object v9

    .line 275
    :cond_0
    const v9, 0x7f080118

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    if-le v9, v10, :cond_3

    .line 280
    iget-boolean v9, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v9, :cond_2

    const v9, 0x7f08011c

    :goto_2
    new-array v10, v11, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    const v9, 0x7f08011d

    goto :goto_2

    .line 284
    :cond_3
    const/4 v4, 0x0

    .line 285
    .local v4, hasAlpha:Z
    const/4 v5, 0x0

    .line 286
    .local v5, hasDigit:Z
    const/4 v6, 0x0

    .line 287
    .local v6, hasSymbol:Z
    const/4 v3, 0x0

    .line 288
    .local v3, countComplex:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_a

    .line 289
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 291
    .local v2, c:C
    const/16 v9, 0x20

    if-le v2, v9, :cond_4

    const/16 v9, 0x7f

    if-le v2, v9, :cond_5

    .line 292
    :cond_4
    const v9, 0x7f08011f

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 294
    :cond_5
    const/16 v9, 0x30

    if-lt v2, v9, :cond_6

    const/16 v9, 0x39

    if-gt v2, v9, :cond_6

    .line 295
    const/4 v5, 0x1

    .line 296
    add-int/lit8 v3, v3, 0x1

    .line 288
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 297
    :cond_6
    const/16 v9, 0x41

    if-lt v2, v9, :cond_7

    const/16 v9, 0x5a

    if-le v2, v9, :cond_8

    :cond_7
    const/16 v9, 0x61

    if-lt v2, v9, :cond_9

    const/16 v9, 0x7a

    if-gt v2, v9, :cond_9

    .line 298
    :cond_8
    const/4 v4, 0x1

    goto :goto_4

    .line 300
    :cond_9
    const/4 v6, 0x1

    .line 301
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 304
    .end local v2           #c:C
    :cond_a
    const/high16 v9, 0x2

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v9, v10, :cond_b

    or-int v9, v4, v6

    if-eqz v9, :cond_b

    .line 307
    const v9, 0x7f08011e

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 309
    :cond_b
    const/high16 v9, 0x4

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v9, v10, :cond_d

    move v0, v11

    .line 311
    .local v0, alphabetic:Z
    :goto_5
    const/high16 v9, 0x5

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v9, v10, :cond_e

    move v1, v11

    .line 313
    .local v1, alphanumeric:Z
    :goto_6
    const/4 v8, 0x0

    .line 314
    .local v8, symbolic:Z
    if-nez v0, :cond_c

    if-eqz v1, :cond_f

    :cond_c
    if-nez v4, :cond_f

    .line 315
    const v9, 0x7f080120

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .end local v0           #alphabetic:Z
    .end local v1           #alphanumeric:Z
    .end local v8           #symbolic:Z
    :cond_d
    move v0, v12

    .line 309
    goto :goto_5

    .restart local v0       #alphabetic:Z
    :cond_e
    move v1, v12

    .line 311
    goto :goto_6

    .line 317
    .restart local v1       #alphanumeric:Z
    .restart local v8       #symbolic:Z
    :cond_f
    if-eqz v1, :cond_10

    if-nez v5, :cond_10

    .line 318
    invoke-virtual {p0, v13}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 329
    :cond_10
    if-eqz v1, :cond_11

    iget v9, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    if-lez v9, :cond_11

    if-nez v5, :cond_11

    .line 331
    invoke-virtual {p0, v13}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 332
    :cond_11
    if-eqz v1, :cond_12

    iget v9, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    if-le v9, v11, :cond_12

    if-nez v6, :cond_12

    .line 334
    const v9, 0x7f080122

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 335
    :cond_12
    if-eqz v1, :cond_13

    iget v9, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    if-ge v3, v9, :cond_13

    .line 337
    const v9, 0x7f0805ec

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 339
    :cond_13
    iget-object v9, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->verifyPasswordHistory(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 340
    const v9, 0x7f0805ed

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 343
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v0, v1, :cond_0

    .line 472
    sget-object v0, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->updateUi()V

    .line 475
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 479
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 250
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 251
    packed-switch p1, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 253
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 254
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->setResult(I)V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->finish()V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 388
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 390
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->handleNext()V

    goto :goto_0

    .line 395
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-nez v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->finish()V

    goto :goto_0

    .line 388
    :sswitch_data_0
    .sparse-switch
        0x7f0b0026 -> :sswitch_0
        0x7f0b002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.password_type"

    iget v6, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.password_min"

    iget v6, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.password_max"

    iget v6, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "confirm_credentials"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 120
    .local v0, confirmCredentials:Z
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    .line 121
    .local v2, minMode:I
    iget v4, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ge v4, v2, :cond_0

    .line 122
    iput v2, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    .line 124
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v1

    .line 125
    .local v1, minLength:I
    iget v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    if-ge v4, v1, :cond_1

    .line 126
    iput v1, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    .line 130
    :cond_1
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getMinPasswordComplexChars()I

    move-result v4

    iput v4, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_3

    .line 132
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/settings/ChooseLockPassword;->mMinPasswordComplexChars:I

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 139
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-ne v4, v7, :cond_5

    sget-object v4, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.password_old"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, oldPw:Ljava/lang/String;
    invoke-static {v3}, Landroid/deviceencryption/DeviceEncryptionManager;->checkPassword(Ljava/lang/String;)Z

    .line 147
    .end local v3           #oldPw:Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->initViews()V

    .line 148
    new-instance v4, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v4, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 149
    if-nez p1, :cond_6

    .line 150
    sget-object v4, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 151
    if-eqz v0, :cond_6

    .line 152
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5, v8, v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 156
    :cond_6
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 415
    if-nez p2, :cond_1

    .line 424
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->handleNext()V

    :cond_0
    move v0, v1

    .line 429
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 214
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 215
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v1, :cond_1

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->lockNow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 225
    :goto_0
    return v1

    .line 218
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 219
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ChooseLockPassword"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 221
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    move v1, v2

    goto :goto_0

    .line 225
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 239
    const-string v1, "ui_stage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, state:Ljava/lang/String;
    const-string v1, "first_pin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    .line 241
    if-eqz v0, :cond_0

    .line 242
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPassword$Stage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 243
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 245
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 197
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 200
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0805eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 202
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 232
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPassword$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 483
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 265
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->updateUi()V

    .line 266
    return-void
.end method

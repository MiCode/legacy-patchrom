.class public Lcom/android/settings/ConfirmLockPattern;
.super Landroid/app/Activity;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmLockPattern$4;,
        Lcom/android/settings/ConfirmLockPattern$Stage;
    }
.end annotation


# instance fields
.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFooterText:Ljava/lang/CharSequence;

.field private mFooterTextView:Landroid/widget/TextView;

.field private mFooterWrongText:Ljava/lang/CharSequence;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderWrongText:Ljava/lang/CharSequence;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNumWrongConfirmAttempts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 203
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$1;-><init>(Lcom/android/settings/ConfirmLockPattern;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 220
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$2;-><init>(Lcom/android/settings/ConfirmLockPattern;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmLockPattern;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ConfirmLockPattern;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ConfirmLockPattern;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/ConfirmLockPattern;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$304(Lcom/android/settings/ConfirmLockPattern;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ConfirmLockPattern;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ConfirmLockPattern;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/ConfirmLockPattern;Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPattern;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/ConfirmLockPattern;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern;->postClearPatternRunnable()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/ConfirmLockPattern;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/ConfirmLockPattern;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 253
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/ConfirmLockPattern;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 255
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ConfirmLockPattern$3;-><init>(Lcom/android/settings/ConfirmLockPattern;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 274
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 213
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    return-void
.end method

.method private updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .locals 3
    .parameter "stage"

    .prologue
    const/4 v2, 0x1

    .line 160
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$4;->$SwitchMap$com$android$settings$ConfirmLockPattern$Stage:[I

    invoke-virtual {p1}, Lcom/android/settings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :goto_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f08033b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f08033c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :goto_3
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :goto_4
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f08033d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f08033e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 193
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 196
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 85
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->requestWindowFeature(I)Z

    .line 86
    const v2, 0x7f030019

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->setContentView(I)V

    .line 88
    const v2, 0x7f0b0028

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    .line 89
    const v2, 0x7f0b002e

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView;

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 90
    const v2, 0x7f0b002f

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    .line 94
    const v2, 0x7f0b002d

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 97
    .local v1, topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 101
    const-string v2, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderText:Ljava/lang/CharSequence;

    .line 102
    const-string v2, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterText:Ljava/lang/CharSequence;

    .line 103
    const-string v2, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    .line 104
    const-string v2, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterWrongText:Ljava/lang/CharSequence;

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 108
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 109
    sget-object v2, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 111
    if-eqz p1, :cond_2

    .line 112
    const-string v2, "num_wrong_attempts"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->setResult(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 138
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 145
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 146
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 147
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 151
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 152
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 154
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern;->handleAttemptLockout(J)V

    .line 156
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 127
    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    return-void
.end method

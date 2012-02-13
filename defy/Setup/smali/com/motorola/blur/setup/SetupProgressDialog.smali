.class public Lcom/motorola/blur/setup/SetupProgressDialog;
.super Landroid/app/AlertDialog;
.source "SetupProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final DIALOG_SHOWING:Ljava/lang/String; = "dialog_showing"

.field public static final INCREMENT_PROGRESS_MESSAGE:I = 0x12

.field private static final MAX_PROGRESS:I = 0x2710

.field public static final NEXT_PROGRESS_MESSAGE:I = 0x13

.field public static final PROGRESS:Ljava/lang/String; = "progress"

.field public static final SET_PROGRESS_MESSAGE:I = 0x11

.field private static final TAG:Ljava/lang/String; = "SetupProgressDialog"

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final TIMEOUT_INTERVAL:J = 0x1d4c0L

.field public static final TIMER_INTERVAL:J = 0x1f4L

.field public static final TIMER_PROGRESS_MESSAGE:I = 0x14


# instance fields
.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mMax:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressPointPos:I

.field private mProgressPoints:[I

.field private mStartingProgress:I

.field private mTimeoutInterval:J

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    .line 46
    iput v1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPointPos:I

    .line 47
    iput-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mTimer:Ljava/util/Timer;

    .line 48
    iput-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 49
    iput v1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mStartingProgress:I

    .line 51
    const/16 v0, 0x2710

    iput v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mMax:I

    .line 52
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mTimeoutInterval:J

    .line 55
    new-instance v0, Lcom/motorola/blur/setup/SetupProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/SetupProgressDialog$1;-><init>(Lcom/motorola/blur/setup/SetupProgressDialog;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/SetupProgressDialog;->init(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    .line 46
    iput v1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPointPos:I

    .line 47
    iput-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mTimer:Ljava/util/Timer;

    .line 48
    iput-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 49
    iput v1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mStartingProgress:I

    .line 51
    const/16 v0, 0x2710

    iput v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mMax:I

    .line 52
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mTimeoutInterval:J

    .line 55
    new-instance v0, Lcom/motorola/blur/setup/SetupProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/SetupProgressDialog$1;-><init>(Lcom/motorola/blur/setup/SetupProgressDialog;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mHandler:Landroid/os/Handler;

    .line 72
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/SetupProgressDialog;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/SetupProgressDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupProgressDialog;->setIntervalProgress()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mContext:Landroid/content/Context;

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->setCancelable(Z)V

    .line 217
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mTimer:Ljava/util/Timer;

    .line 219
    :cond_0
    return-void
.end method

.method private setIntervalProgress()V
    .locals 8

    .prologue
    .line 172
    iget-object v3, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    if-eqz v3, :cond_0

    .line 175
    iget v3, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPointPos:I

    iget-object v4, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_1

    .line 176
    iget v2, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mMax:I

    .line 177
    .local v2, max:I
    iget v1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mMax:I

    .line 182
    .local v1, lastProgress:I
    :goto_0
    sub-int v3, v2, v1

    iget-wide v4, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mTimeoutInterval:J

    const-wide/16 v6, 0x1f4

    div-long/2addr v4, v6

    long-to-int v4, v4

    div-int v0, v3, v4

    .line 184
    .local v0, interimProgress:I
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupProgressDialog;->getProgress()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v3, v2, :cond_0

    .line 185
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->incrementProgressBy(I)V

    .line 188
    .end local v0           #interimProgress:I
    .end local v1           #lastProgress:I
    .end local v2           #max:I
    :cond_0
    return-void

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    iget v4, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPointPos:I

    add-int/lit8 v4, v4, 0x1

    aget v2, v3, v4

    .line 180
    .restart local v2       #max:I
    iget-object v3, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    iget v4, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPointPos:I

    aget v1, v3, v4

    .restart local v1       #lastProgress:I
    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupProgressDialog;->resetProgress()V

    .line 193
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 194
    return-void
.end method

.method public final getCurrentPoint()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPointPos:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 274
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mStartingProgress:I

    goto :goto_0
.end method

.method public getTimerInterval()J
    .locals 2

    .prologue
    .line 287
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public goToProgressPoint(I)V
    .locals 3
    .parameter "point"

    .prologue
    const/4 v2, 0x1

    .line 110
    iget-object v1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    array-length v1, v1

    sub-int v0, v1, v2

    .line 112
    .local v0, lastPoint:I
    if-le p1, v0, :cond_2

    .line 113
    move p1, v0

    .line 117
    :cond_0
    :goto_0
    iput p1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPointPos:I

    .line 119
    iget-object v1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    aget v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgress(I)V

    .line 120
    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/SetupProgressDialog;->setTimer(Z)V

    .line 122
    .end local v0           #lastPoint:I
    :cond_1
    return-void

    .line 114
    .restart local v0       #lastPoint:I
    :cond_2
    if-gez p1, :cond_0

    .line 115
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .parameter "increment"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mStartingProgress:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mStartingProgress:I

    goto :goto_0
.end method

.method public nextProgressPoint()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 95
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    if-eqz v0, :cond_0

    .line 96
    iget v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPointPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPointPos:I

    .line 97
    iget v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPointPos:I

    iget-object v1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 98
    iget v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mMax:I

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgress(I)V

    .line 99
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    array-length v0, v0

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPointPos:I

    .line 100
    const-string v0, "SetupProgressDialog"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Progress point limit exceeded."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :goto_0
    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/SetupProgressDialog;->setTimer(Z)V

    .line 107
    :cond_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    iget v1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPointPos:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgress(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "buttonId"

    .prologue
    .line 209
    const v0, 0x1020019

    if-ne p2, v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupProgressDialog;->cancel()V

    .line 212
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 226
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030038

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 228
    iget-object v2, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mMax:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 229
    iget-object v2, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mStartingProgress:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 230
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setView(Landroid/view/View;)V

    .line 231
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 233
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 243
    iget-object p0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 239
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 248
    invoke-virtual {p0, p2}, Lcom/motorola/blur/setup/SetupProgressDialog;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 253
    iget-object p0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public resetProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    if-eqz v0, :cond_1

    .line 126
    iput v1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPointPos:I

    .line 127
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgress(I)V

    .line 128
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgress(I)V

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 277
    iput p1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mMax:I

    .line 278
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 280
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iput p1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mStartingProgress:I

    goto :goto_0
.end method

.method public setProgressPoints([I)V
    .locals 2
    .parameter "points"

    .prologue
    const/4 v1, 0x0

    .line 144
    iput-object p1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    .line 145
    iput v1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPointPos:I

    .line 146
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mProgressPoints:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgress(I)V

    .line 147
    return-void
.end method

.method public setProgressText(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressText(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setProgressText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public setTimeoutInterval(J)V
    .locals 0
    .parameter "timeoutInterval"

    .prologue
    .line 283
    iput-wide p1, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mTimeoutInterval:J

    .line 284
    return-void
.end method

.method public setTimer(Z)V
    .locals 6
    .parameter "reset"

    .prologue
    const-wide/16 v2, 0x1f4

    .line 150
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 152
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mTimer:Ljava/util/Timer;

    .line 155
    :cond_0
    new-instance v1, Lcom/motorola/blur/setup/SetupProgressDialog$2;

    invoke-direct {v1, p0}, Lcom/motorola/blur/setup/SetupProgressDialog$2;-><init>(Lcom/motorola/blur/setup/SetupProgressDialog;)V

    .line 163
    .local v1, task:Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupProgressDialog;->mTimer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 164
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->setTimer(Z)V

    .line 199
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 200
    return-void
.end method

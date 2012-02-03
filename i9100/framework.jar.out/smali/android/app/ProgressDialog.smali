.class public Landroid/app/ProgressDialog;
.super Landroid/app/AlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    const v0, 0x10300a6

    invoke-direct {p0, p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 81
    return-void
.end method

.method static synthetic access$000(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/ProgressDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Landroid/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private onProgressChanged()V
    .locals 2

    .prologue
    .line 317
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 320
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"

    .prologue
    .line 90
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"

    .prologue
    .line 95
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 101
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 105
    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 106
    invoke-virtual {v0, p5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 107
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 108
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 227
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 213
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 220
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 240
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 242
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .parameter "diff"

    .prologue
    .line 249
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 251
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    iget v0, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 285
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const v4, 0x102000d

    .line 113
    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 114
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 119
    new-instance v2, Landroid/app/ProgressDialog$1;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog$1;-><init>(Landroid/app/ProgressDialog;)V

    iput-object v2, p0, Landroid/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 136
    const v2, 0x109001a

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 138
    const v2, 0x102019e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 139
    const-string v2, "%d/%d"

    iput-object v2, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 140
    const v2, 0x102019d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 141
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 142
    iget-object v2, p0, Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 143
    invoke-virtual {p0, v1}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 150
    :goto_0
    iget v2, p0, Landroid/app/ProgressDialog;->mMax:I

    if-lez v2, :cond_0

    .line 151
    iget v2, p0, Landroid/app/ProgressDialog;->mMax:I

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 153
    :cond_0
    iget v2, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    if-lez v2, :cond_1

    .line 154
    iget v2, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 156
    :cond_1
    iget v2, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v2, :cond_2

    .line 157
    iget v2, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 159
    :cond_2
    iget v2, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    if-lez v2, :cond_3

    .line 160
    iget v2, p0, Landroid/app/ProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 162
    :cond_3
    iget v2, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v2, :cond_4

    .line 163
    iget v2, p0, Landroid/app/ProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 165
    :cond_4
    iget-object v2, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 166
    iget-object v2, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_5
    iget-object v2, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 169
    iget-object v2, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_6
    iget-object v2, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 172
    iget-object v2, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 174
    :cond_7
    iget-boolean v2, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 175
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 176
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 177
    return-void

    .line 145
    .end local v1           #view:Landroid/view/View;
    :cond_8
    const v2, 0x1090053

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 146
    .restart local v1       #view:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 147
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 148
    invoke-virtual {p0, v1}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    .line 183
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    .line 189
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .parameter "indeterminate"

    .prologue
    .line 274
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iput-boolean p1, p0, Landroid/app/ProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 266
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iput-object p1, p0, Landroid/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 231
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 233
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 290
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 291
    iget v0, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 292
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 299
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Landroid/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    :cond_1
    iput-object p1, p0, Landroid/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/app/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 194
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 258
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 313
    iput-object p1, p0, Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 302
    iput p1, p0, Landroid/app/ProgressDialog;->mProgressStyle:I

    .line 303
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .parameter "secondaryProgress"

    .prologue
    .line 201
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 203
    invoke-direct {p0}, Landroid/app/ProgressDialog;->onProgressChanged()V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    iput p1, p0, Landroid/app/ProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

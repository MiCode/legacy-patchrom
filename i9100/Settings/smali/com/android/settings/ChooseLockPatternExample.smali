.class public Lcom/android/settings/ChooseLockPatternExample;
.super Landroid/app/Activity;
.source "ChooseLockPatternExample.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/view/View;

.field private mNextButton:Landroid/view/View;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lcom/android/settings/ChooseLockPatternExample$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPatternExample$1;-><init>(Lcom/android/settings/ChooseLockPatternExample;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChooseLockPatternExample;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 78
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 88
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->setResult(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternExample;->finish()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->startActivity(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternExample;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternExample;->initViews()V

    .line 46
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 57
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 58
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPatternExample;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    return-void
.end method

.method protected startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    .line 94
    :cond_0
    return-void
.end method

.method protected stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 98
    :cond_0
    return-void
.end method

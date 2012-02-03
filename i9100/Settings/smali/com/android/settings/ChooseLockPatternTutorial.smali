.class public Lcom/android/settings/ChooseLockPatternTutorial;
.super Landroid/app/Activity;
.source "ChooseLockPatternTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mNextButton:Landroid/view/View;

.field private mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->setContentView(I)V

    .line 47
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->setResult(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->finish()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockPatternExample;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 35
    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->startActivity(Landroid/content/Intent;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->finish()V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->initViews()V

    goto :goto_0
.end method

.class public Lcom/android/settings/Display;
.super Landroid/app/Activity;
.source "Display.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFontSize:Landroid/widget/Spinner;

.field private mFontSizeChanged:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreview:Landroid/widget/TextView;

.field private mTextSizeTyped:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    new-instance v0, Lcom/android/settings/Display$1;

    invoke-direct {v0, p0}, Lcom/android/settings/Display$1;-><init>(Lcom/android/settings/Display;)V

    iput-object v0, p0, Lcom/android/settings/Display;->mFontSizeChanged:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 142
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/Display;)Landroid/content/res/Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/Display;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/Display;->updateFontScale()V

    return-void
.end method

.method private updateFontScale()V
    .locals 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v2, v3

    iput v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 106
    iget-object v1, p0, Lcom/android/settings/Display;->mTextSizeTyped:Landroid/util/TypedValue;

    iget-object v2, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 107
    .local v0, size:F
    iget-object v1, p0, Lcom/android/settings/Display;->mPreview:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 112
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/Display;->finish()V

    .line 117
    return-void

    .line 113
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Display"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x2

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v6, 0x7f030023

    invoke-virtual {p0, v6}, Lcom/android/settings/Display;->setContentView(I)V

    .line 45
    const v6, 0x7f0b0059

    invoke-virtual {p0, v6}, Lcom/android/settings/Display;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    .line 46
    iget-object v6, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings/Display;->mFontSizeChanged:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 47
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    .line 48
    .local v4, states:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/Display;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 49
    .local v2, r:Landroid/content/res/Resources;
    const/4 v6, 0x0

    const v7, 0x7f080023

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 50
    const/4 v6, 0x1

    const v7, 0x7f080024

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 51
    const v6, 0x7f080025

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    .line 52
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 54
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 56
    iget-object v6, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 58
    const v6, 0x7f0b005a

    invoke-virtual {p0, v6}, Lcom/android/settings/Display;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/Display;->mPreview:Landroid/widget/TextView;

    .line 59
    iget-object v6, p0, Lcom/android/settings/Display;->mPreview:Landroid/widget/TextView;

    const v7, 0x7f080026

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v6, 0x7f0b005b

    invoke-virtual {p0, v6}, Lcom/android/settings/Display;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 62
    .local v3, save:Landroid/widget/Button;
    const v6, 0x7f080027

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iput-object v6, p0, Lcom/android/settings/Display;->mTextSizeTyped:Landroid/util/TypedValue;

    .line 66
    sget-object v6, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p0, v6}, Lcom/android/settings/Display;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 68
    .local v5, styledAttributes:Landroid/content/res/TypedArray;
    iget-object v6, p0, Lcom/android/settings/Display;->mTextSizeTyped:Landroid/util/TypedValue;

    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/Display;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 72
    .local v1, metrics:Landroid/util/DisplayMetrics;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 73
    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->density:F

    iput v7, v6, Landroid/util/DisplayMetrics;->density:F

    .line 74
    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 75
    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v7, v6, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 76
    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v7, v6, Landroid/util/DisplayMetrics;->xdpi:F

    .line 78
    iget-object v6, p0, Lcom/android/settings/Display;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v7, v6, Landroid/util/DisplayMetrics;->ydpi:F

    .line 80
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 99
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/Display;->updateFontScale()V

    .line 100
    return-void

    .line 89
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 90
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Display"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 94
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/Display;->mCurConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/android/settings/Display;->mFontSize:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1
.end method

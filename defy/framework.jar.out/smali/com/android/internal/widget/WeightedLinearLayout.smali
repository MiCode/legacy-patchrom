.class public Lcom/android/internal/widget/WeightedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "WeightedLinearLayout.java"


# instance fields
.field private mMajorWeight:F

.field private mMinorWeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Lcom/android/internal/R$styleable;->WeightedLinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeight:F

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeight:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .local v3, metrics:Landroid/util/DisplayMetrics;
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v4, screenWidth:I
    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v8, :cond_2

    const/4 v8, 0x1

    move v1, v8

    .local v1, isPortrait:Z
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .local v6, widthMode:I
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getMeasuredWidth()I

    move-result v5

    .local v5, width:I
    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getMeasuredHeight()I

    move-result v0

    .local v0, height:I
    const/4 v2, 0x0

    .local v2, measure:Z
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    if-eqz v1, :cond_3

    iget v8, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeight:F

    move v7, v8

    .local v7, widthWeight:F
    :goto_1
    const/high16 v8, -0x8000

    if-ne v6, v8, :cond_0

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_0

    int-to-float v8, v5

    int-to-float v9, v4

    mul-float/2addr v9, v7

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    int-to-float v8, v4

    mul-float/2addr v8, v7

    float-to-int v8, v8

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_1
    return-void

    .end local v0           #height:I
    .end local v1           #isPortrait:Z
    .end local v2           #measure:Z
    .end local v5           #width:I
    .end local v6           #widthMode:I
    .end local v7           #widthWeight:F
    :cond_2
    const/4 v8, 0x0

    move v1, v8

    goto :goto_0

    .restart local v0       #height:I
    .restart local v1       #isPortrait:Z
    .restart local v2       #measure:Z
    .restart local v5       #width:I
    .restart local v6       #widthMode:I
    :cond_3
    iget v8, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeight:F

    move v7, v8

    goto :goto_1
.end method

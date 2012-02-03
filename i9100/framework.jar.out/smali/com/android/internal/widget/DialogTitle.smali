.class public Lcom/android/internal/widget/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v8, 0x0

    .line 47
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 50
    .local v2, layout:Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 52
    .local v3, lineCount:I
    if-lez v3, :cond_0

    .line 53
    const/4 v5, 0x1

    sub-int v5, v3, v5

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    .line 54
    .local v1, ellipsisCount:I
    if-lez v1, :cond_0

    .line 55
    invoke-virtual {p0, v8}, Lcom/android/internal/widget/DialogTitle;->setSingleLine(Z)V

    .line 57
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v6, 0x1030044

    sget-object v7, Landroid/R$styleable;->TextAppearance:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, a:Landroid/content/res/TypedArray;
    const/high16 v5, 0x41a0

    invoke-virtual {p0}, Lcom/android/internal/widget/DialogTitle;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 65
    .local v4, textSize:I
    int-to-float v5, v4

    invoke-virtual {p0, v8, v5}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    .line 66
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/DialogTitle;->setMaxLines(I)V

    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 71
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #ellipsisCount:I
    .end local v3           #lineCount:I
    .end local v4           #textSize:I
    :cond_0
    return-void
.end method

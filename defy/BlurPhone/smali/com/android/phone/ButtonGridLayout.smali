.class public Lcom/android/phone/ButtonGridLayout;
.super Landroid/view/ViewGroup;
.source "ButtonGridLayout.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field private static final ROWS:I = 0x4


# instance fields
.field private mButtonHeight:I

.field private mButtonWidth:I

.field private mHeight:I

.field private mHeightInc:I

.field private mWidthInc:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 96
    const/4 v2, 0x0

    .line 98
    .local v2, i:I
    sub-int v6, p5, p3

    iget v7, p0, Lcom/android/phone/ButtonGridLayout;->mHeight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingTop:I

    add-int v5, v6, v7

    .line 99
    .local v5, y:I
    const/4 v3, 0x0

    .local v3, row:I
    :goto_0
    const/4 v6, 0x4

    if-ge v3, v6, :cond_1

    .line 100
    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingLeft:I

    .line 101
    .local v4, x:I
    const/4 v1, 0x0

    .local v1, col:I
    :goto_1
    const/4 v6, 0x3

    if-ge v1, v6, :cond_0

    .line 102
    invoke-virtual {p0, v2}, Lcom/android/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, child:Landroid/view/View;
    iget v6, p0, Lcom/android/phone/ButtonGridLayout;->mButtonWidth:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/phone/ButtonGridLayout;->mButtonHeight:I

    add-int/2addr v7, v5

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 106
    iget v6, p0, Lcom/android/phone/ButtonGridLayout;->mWidthInc:I

    add-int/2addr v4, v6

    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    .end local v0           #child:Landroid/view/View;
    :cond_0
    iget v6, p0, Lcom/android/phone/ButtonGridLayout;->mHeightInc:I

    add-int/2addr v5, v6

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v1           #col:I
    .end local v4           #x:I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 116
    invoke-virtual {p0, v5}, Lcom/android/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v5, v5}, Landroid/view/View;->measure(II)V

    .line 120
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ButtonGridLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 121
    invoke-virtual {p0, v2}, Lcom/android/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/View;->measure(II)V

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/android/phone/ButtonGridLayout;->mButtonWidth:I

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/android/phone/ButtonGridLayout;->mButtonHeight:I

    .line 127
    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mButtonWidth:I

    iget v5, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingRight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/phone/ButtonGridLayout;->mWidthInc:I

    .line 128
    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mButtonHeight:I

    iget v5, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/phone/ButtonGridLayout;->mPaddingBottom:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/phone/ButtonGridLayout;->mHeightInc:I

    .line 129
    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mHeightInc:I

    mul-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/phone/ButtonGridLayout;->mHeight:I

    .line 131
    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mWidthInc:I

    mul-int/lit8 v4, v4, 0x3

    invoke-static {v4, p1}, Lcom/android/phone/ButtonGridLayout;->resolveSize(II)I

    move-result v3

    .line 132
    .local v3, width:I
    iget v4, p0, Lcom/android/phone/ButtonGridLayout;->mHeight:I

    invoke-static {v4, p2}, Lcom/android/phone/ButtonGridLayout;->resolveSize(II)I

    move-result v1

    .line 134
    .local v1, height:I
    invoke-virtual {p0, v3, v1}, Lcom/android/phone/ButtonGridLayout;->setMeasuredDimension(II)V

    .line 135
    return-void
.end method

.method public setChildrenBackgroundResource(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 87
    const/16 v0, 0xc

    .line 89
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 90
    invoke-virtual {p0, v1}, Lcom/android/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

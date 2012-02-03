.class public Landroid/text/style/DrawableMarginSpan;
.super Ljava/lang/Object;
.source "DrawableMarginSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPad:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .parameter "b"
    .parameter "pad"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    iput p2, p0, Landroid/text/style/DrawableMarginSpan;->mPad:I

    .line 36
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "istartv"
    .parameter "v"
    .parameter "fm"

    .prologue
    .line 64
    check-cast p1, Landroid/text/Spanned;

    .end local p1
    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ne p3, v2, :cond_1

    .line 65
    iget-object v2, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 67
    .local v0, ht:I
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v2, p5

    iget v3, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p4

    sub-int v1, v0, v2

    .line 68
    .local v1, need:I
    if-lez v1, :cond_0

    .line 69
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v2, v1

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 71
    :cond_0
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v2, p5

    iget v3, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p4

    sub-int v1, v0, v2

    .line 72
    if-lez v1, :cond_1

    .line 73
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v2, v1

    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 75
    .end local v0           #ht:I
    .end local v1           #need:I
    :cond_1
    return-void
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 10
    .parameter "c"
    .parameter "p"
    .parameter "x"
    .parameter "dir"
    .parameter "top"
    .parameter "baseline"
    .parameter "bottom"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "first"
    .parameter "layout"

    .prologue
    .line 46
    check-cast p8, Landroid/text/Spanned;

    .end local p8
    move-object/from16 v0, p8

    move-object v1, p0

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 47
    .local v6, st:I
    move v5, p3

    .line 48
    .local v5, ix:I
    move-object/from16 v0, p12

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    move-object/from16 v0, p12

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 50
    .local v4, itop:I
    iget-object v7, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 51
    .local v3, dw:I
    iget-object v7, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 53
    .local v2, dh:I
    if-gez p4, :cond_0

    .line 54
    sub-int/2addr p3, v3

    .line 57
    :cond_0
    iget-object v7, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v8, v5, v3

    add-int v9, v4, v2

    invoke-virtual {v7, v5, v4, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    iget-object v7, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 59
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 2
    .parameter "first"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/text/style/DrawableMarginSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/text/style/DrawableMarginSpan;->mPad:I

    add-int/2addr v0, v1

    return v0
.end method

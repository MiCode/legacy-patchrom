.class Landroid/content/res/StringBlock$Height;
.super Ljava/lang/Object;
.source "StringBlock.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan$WithDensity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/StringBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Height"
.end annotation


# static fields
.field private static sProportion:F


# instance fields
.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    sput v0, Landroid/content/res/StringBlock$Height;->sProportion:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput p1, p0, Landroid/content/res/StringBlock$Height;->mSize:I

    .line 320
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "spanstartv"
    .parameter "v"
    .parameter "fm"

    .prologue
    .line 326
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/content/res/StringBlock$Height;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 327
    return-void
.end method

.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 7
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "spanstartv"
    .parameter "v"
    .parameter "fm"
    .parameter "paint"

    .prologue
    const/4 v6, 0x0

    .line 332
    iget v3, p0, Landroid/content/res/StringBlock$Height;->mSize:I

    .line 333
    .local v3, size:I
    if-eqz p7, :cond_0

    .line 334
    int-to-float v4, v3

    iget v5, p7, Landroid/text/TextPaint;->density:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 337
    :cond_0
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v5

    if-ge v4, v3, :cond_1

    .line 338
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v4, v3

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 339
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v4, v3

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 383
    :goto_0
    return-void

    .line 341
    :cond_1
    sget v4, Landroid/content/res/StringBlock$Height;->sProportion:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 349
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 350
    .local v1, p:Landroid/graphics/Paint;
    const/high16 v4, 0x42c8

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 351
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 352
    .local v2, r:Landroid/graphics/Rect;
    const-string v4, "ABCDEFG"

    const/4 v5, 0x7

    invoke-virtual {v1, v4, v6, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 354
    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    div-float/2addr v4, v5

    sput v4, Landroid/content/res/StringBlock$Height;->sProportion:F

    .line 357
    .end local v1           #p:Landroid/graphics/Paint;
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_2
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    sget v5, Landroid/content/res/StringBlock$Height;->sProportion:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 359
    .local v0, need:I
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v4, v3, v4

    if-lt v4, v0, :cond_3

    .line 364
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v4, v3

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 365
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v4, v3

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_0

    .line 366
    :cond_3
    if-lt v3, v0, :cond_4

    .line 372
    neg-int v4, v0

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 373
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v4, v3

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    .line 379
    :cond_4
    neg-int v4, v3

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 380
    iput v6, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v6, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0
.end method

.class Lcom/android/settings/fuelgauge/PercentageBar;
.super Landroid/graphics/drawable/Drawable;
.source "PercentageBar.java"


# instance fields
.field bar:Landroid/graphics/drawable/Drawable;

.field lastWidth:I

.field percent:D


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/PercentageBar;->lastWidth:I

    return-void
.end method

.method private getBarWidth()I
    .locals 6

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PercentageBar;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/PercentageBar;->percent:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 59
    .local v1, width:I
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PercentageBar;->bar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 60
    .local v0, intrinsicWidth:I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 35
    iget v0, p0, Lcom/android/settings/fuelgauge/PercentageBar;->lastWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PercentageBar;->getBarWidth()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/PercentageBar;->lastWidth:I

    .line 37
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PercentageBar;->bar:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/settings/fuelgauge/PercentageBar;->lastWidth:I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PercentageBar;->bar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PercentageBar;->bar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 40
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PercentageBar;->bar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 50
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 55
    return-void
.end method

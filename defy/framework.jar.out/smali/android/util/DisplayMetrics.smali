.class public Landroid/util/DisplayMetrics;
.super Ljava/lang/Object;
.source "DisplayMetrics.java"


# static fields
.field public static final DENSITY_DEFAULT:I = 0xa0

#the value of this static final field might be set in the static constructor
.field public static final DENSITY_DEVICE:I = 0x0

.field public static final DENSITY_HIGH:I = 0xf0

.field public static final DENSITY_LOW:I = 0x78

.field public static final DENSITY_MEDIUM:I = 0xa0

.field public static final DENSITY_XHIGH:I = 0x140


# instance fields
.field public density:F

.field public densityDpi:I

.field public heightPixels:I

.field public scaledDensity:F

.field public widthPixels:I

.field public xdpi:F

.field public ydpi:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/util/DisplayMetrics;->getDeviceDensity()I

    move-result v0

    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeviceDensity()I
    .locals 3

    .prologue
    const-string v0, "qemu.sf.lcd_density"

    const-string v1, "ro.sf.lcd_density"

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public setTo(Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "o"

    .prologue
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    return-void
.end method

.method public setToDefaults()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    const/high16 v1, 0x4320

    div-float/2addr v0, v1

    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMetrics{density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scaledDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xdpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ydpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMetrics(Landroid/content/res/CompatibilityInfo;II)V
    .locals 8
    .parameter "compatibilityInfo"
    .parameter "orientation"
    .parameter "screenLayout"

    .prologue
    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isConfiguredExpandable()Z

    move-result v2

    .local v2, expandable:Z
    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isConfiguredLargeScreens()Z

    move-result v4

    .local v4, largeScreens:Z
    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isConfiguredXLargeScreens()Z

    move-result v5

    .local v5, xlargeScreens:Z
    if-nez v2, :cond_0

    const/high16 v6, 0x1000

    and-int/2addr v6, p3

    if-nez v6, :cond_7

    const/4 v2, 0x1

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/content/res/CompatibilityInfo;->setExpandable(Z)V

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    and-int/lit8 v6, p3, 0xf

    const/4 v7, 0x3

    if-eq v6, v7, :cond_8

    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/content/res/CompatibilityInfo;->setLargeScreens(Z)V

    :cond_1
    :goto_1
    if-nez v5, :cond_2

    and-int/lit8 v6, p3, 0xf

    const/4 v7, 0x4

    if-eq v6, v7, :cond_9

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/content/res/CompatibilityInfo;->setXLargeScreens(Z)V

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    :cond_3
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/high16 v6, 0x43a0

    iget v7, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v1, v6

    .local v1, defaultWidth:I
    const/high16 v6, 0x43f0

    iget v7, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v0, v6

    .local v0, defaultHeight:I
    :goto_3
    iget v6, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v1, v6, :cond_4

    iput v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_4
    iget v6, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v6, :cond_5

    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .end local v0           #defaultHeight:I
    .end local v1           #defaultWidth:I
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v6

    if-eqz v6, :cond_6

    iget v3, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .local v3, invertedRatio:F
    iget v6, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v3

    iput v6, p0, Landroid/util/DisplayMetrics;->density:F

    iget v6, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x4320

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v6, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v6, v3

    iput v6, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v6, p0, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v6, v3

    iput v6, p0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v6, p0, Landroid/util/DisplayMetrics;->ydpi:F

    mul-float/2addr v6, v3

    iput v6, p0, Landroid/util/DisplayMetrics;->ydpi:F

    iget v6, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .end local v3           #invertedRatio:F
    :cond_6
    :pswitch_1
    return-void

    :cond_7
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/content/res/CompatibilityInfo;->setExpandable(Z)V

    goto :goto_0

    :cond_8
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/content/res/CompatibilityInfo;->setLargeScreens(Z)V

    goto :goto_1

    :cond_9
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/content/res/CompatibilityInfo;->setXLargeScreens(Z)V

    goto :goto_2

    :pswitch_2
    const/high16 v6, 0x43f0

    iget v7, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v1, v6

    .restart local v1       #defaultWidth:I
    const/high16 v6, 0x43a0

    iget v7, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v0, v6

    .restart local v0       #defaultHeight:I
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

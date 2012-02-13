.class public Landroid/graphics/Color;
.super Ljava/lang/Object;
.source "Color.java"


# static fields
.field public static final BLACK:I = -0x1000000

.field public static final BLUE:I = -0xffff01

.field public static final CYAN:I = -0xff0001

.field public static final DKGRAY:I = -0xbbbbbc

.field public static final GRAY:I = -0x777778

.field public static final GREEN:I = -0xff0100

.field public static final LTGRAY:I = -0x333334

.field public static final MAGENTA:I = -0xff01

.field public static final RED:I = -0x10000

.field public static final TRANSPARENT:I = 0x0

.field public static final WHITE:I = -0x1

.field public static final YELLOW:I = -0x100

.field private static final sColorNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string v1, "black"

    const/high16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string v1, "darkgray"

    const v2, -0xbbbbbc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string v1, "gray"

    const v2, -0x777778

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string v1, "lightgray"

    const v2, -0x333334

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string v1, "white"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string v1, "red"

    const/high16 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string v1, "green"

    const v2, -0xff0100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string v1, "blue"

    const v2, -0xffff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string v1, "yellow"

    const/16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string v1, "cyan"

    const v2, -0xff0001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string v1, "magenta"

    const v2, -0xff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSBtoColor(FFF)I
    .locals 13
    .parameter "h"
    .parameter "s"
    .parameter "b"

    .prologue
    const/high16 v12, 0x437f

    const/4 v9, 0x0

    const/high16 v11, 0x3f80

    invoke-static {p0, v9, v11}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    invoke-static {p1, v9, v11}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    invoke-static {p2, v9, v11}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p2

    const/4 v7, 0x0

    .local v7, red:F
    const/4 v2, 0x0

    .local v2, green:F
    const/4 v0, 0x0

    .local v0, blue:F
    float-to-int v9, p0

    int-to-float v9, v9

    sub-float v9, p0, v9

    const/high16 v10, 0x40c0

    mul-float v3, v9, v10

    .local v3, hf:F
    float-to-int v4, v3

    .local v4, ihf:I
    int-to-float v9, v4

    sub-float v1, v3, v9

    .local v1, f:F
    sub-float v9, v11, p1

    mul-float v5, p2, v9

    .local v5, pv:F
    mul-float v9, p1, v1

    sub-float v9, v11, v9

    mul-float v6, p2, v9

    .local v6, qv:F
    sub-float v9, v11, v1

    mul-float/2addr v9, p1

    sub-float v9, v11, v9

    mul-float v8, p2, v9

    .local v8, tv:F
    packed-switch v4, :pswitch_data_0

    :goto_0
    const/high16 v9, -0x100

    mul-float v10, v7, v12

    float-to-int v10, v10

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    mul-float v10, v2, v12

    float-to-int v10, v10

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    mul-float v10, v0, v12

    float-to-int v10, v10

    or-int/2addr v9, v10

    return v9

    :pswitch_0
    move v7, p2

    move v2, v8

    move v0, v5

    goto :goto_0

    :pswitch_1
    move v7, v6

    move v2, p2

    move v0, v5

    goto :goto_0

    :pswitch_2
    move v7, v5

    move v2, p2

    move v0, v8

    goto :goto_0

    :pswitch_3
    move v7, v5

    move v2, v6

    move v0, p2

    goto :goto_0

    :pswitch_4
    move v7, v8

    move v2, v5

    move v0, p2

    goto :goto_0

    :pswitch_5
    move v7, p2

    move v2, v5

    move v0, v6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static HSBtoColor([F)I
    .locals 3
    .parameter "hsb"

    .prologue
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v0

    return v0
.end method

.method public static HSVToColor(I[F)I
    .locals 2
    .parameter "alpha"
    .parameter "hsv"

    .prologue
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "3 components required for hsv"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/Color;->nativeHSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public static HSVToColor([F)I
    .locals 1
    .parameter "hsv"

    .prologue
    const/16 v0, 0xff

    invoke-static {v0, p0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public static RGBToHSV(III[F)V
    .locals 2
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "hsv"

    .prologue
    array-length v0, p3

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "3 components required for hsv"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Color;->nativeRGBToHSV(III[F)V

    return-void
.end method

.method public static alpha(I)I
    .locals 1
    .parameter "color"

    .prologue
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method public static argb(IIII)I
    .locals 2
    .parameter "alpha"
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method

.method public static blue(I)I
    .locals 1
    .parameter "color"

    .prologue
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static brightness(I)F
    .locals 6
    .parameter "color"

    .prologue
    shr-int/lit8 v4, p0, 0x10

    and-int/lit16 v3, v4, 0xff

    .local v3, r:I
    shr-int/lit8 v4, p0, 0x8

    and-int/lit16 v2, v4, 0xff

    .local v2, g:I
    and-int/lit16 v1, p0, 0xff

    .local v1, b:I
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, V:I
    int-to-float v4, v0

    const/high16 v5, 0x437f

    div-float/2addr v4, v5

    return v4
.end method

.method public static colorToHSV(I[F)V
    .locals 3
    .parameter "color"
    .parameter "hsv"

    .prologue
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    return-void
.end method

.method public static green(I)I
    .locals 1
    .parameter "color"

    .prologue
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static hue(I)F
    .locals 11
    .parameter "color"

    .prologue
    shr-int/lit8 v10, p0, 0x10

    and-int/lit16 v7, v10, 0xff

    .local v7, r:I
    shr-int/lit8 v10, p0, 0x8

    and-int/lit16 v6, v10, 0xff

    .local v6, g:I
    and-int/lit16 v2, p0, 0xff

    .local v2, b:I
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, V:I
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .local v8, temp:I
    if-ne v1, v8, :cond_1

    const/4 v0, 0x0

    .local v0, H:F
    :cond_0
    :goto_0
    return v0

    .end local v0           #H:F
    :cond_1
    sub-int v10, v1, v8

    int-to-float v9, v10

    .local v9, vtemp:F
    sub-int v10, v1, v7

    int-to-float v10, v10

    div-float v5, v10, v9

    .local v5, cr:F
    sub-int v10, v1, v6

    int-to-float v10, v10

    div-float v4, v10, v9

    .local v4, cg:F
    sub-int v10, v1, v2

    int-to-float v10, v10

    div-float v3, v10, v9

    .local v3, cb:F
    if-ne v7, v1, :cond_2

    sub-float v0, v3, v4

    .restart local v0       #H:F
    :goto_1
    const/high16 v10, 0x40c0

    div-float/2addr v0, v10

    const/4 v10, 0x0

    cmpg-float v10, v0, v10

    if-gez v10, :cond_0

    const/high16 v10, 0x3f80

    add-float/2addr v0, v10

    goto :goto_0

    .end local v0           #H:F
    :cond_2
    if-ne v6, v1, :cond_3

    const/high16 v10, 0x4000

    add-float/2addr v10, v5

    sub-float v0, v10, v3

    .restart local v0       #H:F
    goto :goto_1

    .end local v0           #H:F
    :cond_3
    const/high16 v10, 0x4080

    add-float/2addr v10, v4

    sub-float v0, v10, v5

    .restart local v0       #H:F
    goto :goto_1
.end method

.method private static native nativeHSVToColor(I[F)I
.end method

.method private static native nativeRGBToHSV(III[F)V
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 5
    .parameter "colorString"

    .prologue
    const-string v4, "Unknown color"

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .local v0, color:J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    const-wide/32 v2, -0x1000000

    or-long/2addr v0, v2

    :cond_0
    long-to-int v2, v0

    .end local v0           #color:J
    :goto_0
    return v2

    .restart local v0       #color:J
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown color"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #color:J
    :cond_2
    sget-object v2, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, color:Ljava/lang/Integer;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown color"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static red(I)I
    .locals 1
    .parameter "color"

    .prologue
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static rgb(III)I
    .locals 2
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    const/high16 v0, -0x100

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p2

    return v0
.end method

.method public static saturation(I)F
    .locals 8
    .parameter "color"

    .prologue
    shr-int/lit8 v6, p0, 0x10

    and-int/lit16 v4, v6, 0xff

    .local v4, r:I
    shr-int/lit8 v6, p0, 0x8

    and-int/lit16 v3, v6, 0xff

    .local v3, g:I
    and-int/lit16 v2, p0, 0xff

    .local v2, b:I
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, V:I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .local v5, temp:I
    if-ne v1, v5, :cond_0

    const/4 v0, 0x0

    .local v0, S:F
    :goto_0
    return v0

    .end local v0           #S:F
    :cond_0
    sub-int v6, v1, v5

    int-to-float v6, v6

    int-to-float v7, v1

    div-float v0, v6, v7

    .restart local v0       #S:F
    goto :goto_0
.end method

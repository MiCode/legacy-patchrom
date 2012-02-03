.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final CONFIGURED_EXPANDABLE:I = 0x4

.field private static final CONFIGURED_LARGE_SCREENS:I = 0x10

.field private static final CONFIGURED_XLARGE_SCREENS:I = 0x40

.field private static final DBG:Z = false

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo; = null

.field public static final DEFAULT_PORTRAIT_HEIGHT:I = 0x1e0

.field public static final DEFAULT_PORTRAIT_WIDTH:I = 0x140

.field private static final EXPANDABLE:I = 0x2

.field private static final LARGE_SCREENS:I = 0x8

.field private static final SCALING_REQUIRED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CompatibilityInfo"

.field private static final XLARGE_SCREENS:I = 0x20


# instance fields
.field public final appFlags:I

.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/high16 v4, 0x3f80

    .line 181
    const v1, 0x81e00

    const/4 v2, 0x6

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIIFF)V

    .line 190
    return-void
.end method

.method private constructor <init>(IIIFF)V
    .locals 0
    .parameter "appFlags"
    .parameter "compFlags"
    .parameter "dens"
    .parameter "scale"
    .parameter "invertedScale"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->appFlags:I

    .line 174
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 175
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 176
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 177
    iput p5, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .parameter "appInfo"

    .prologue
    const/high16 v2, 0x3f80

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->appFlags:I

    .line 142
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    .line 146
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    or-int/lit8 v0, v0, 0x7e

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 150
    :cond_0
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 151
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    or-int/lit8 v0, v0, 0x66

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 154
    :cond_1
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2

    .line 155
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 158
    :cond_2
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_3

    .line 159
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 160
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 161
    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 169
    :goto_0
    return-void

    .line 163
    :cond_3
    const/16 v0, 0xa0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 164
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    const/high16 v1, 0x4320

    div-float/2addr v0, v1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 166
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float v0, v2, v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 167
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method public static updateCompatibleScreenFrame(Landroid/util/DisplayMetrics;ILandroid/graphics/Rect;)V
    .locals 8
    .parameter "dm"
    .parameter "orientation"
    .parameter "outRect"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f00

    .line 411
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 412
    .local v2, width:I
    const/high16 v4, 0x43f0

    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v0, v4

    .line 413
    .local v0, portraitHeight:I
    const/high16 v4, 0x43a0

    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 414
    .local v1, portraitWidth:I
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 415
    sub-int v4, v2, v0

    div-int/lit8 v3, v4, 0x2

    .line 416
    .local v3, xOffset:I
    add-int v4, v3, v0

    invoke-virtual {p2, v3, v7, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 421
    :goto_0
    return-void

    .line 418
    .end local v3           #xOffset:I
    :cond_0
    sub-int v4, v2, v1

    div-int/lit8 v3, v4, 0x2

    .line 419
    .restart local v3       #xOffset:I
    add-int v4, v3, v1

    invoke-virtual {p2, v3, v7, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public copy()Landroid/content/res/CompatibilityInfo;
    .locals 6

    .prologue
    .line 196
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->appFlags:I

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v5, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIIFF)V

    .line 198
    .local v0, info:Landroid/content/res/CompatibilityInfo;
    return-object v0
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConfiguredExpandable()Z
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConfiguredLargeScreens()Z
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConfiguredXLargeScreens()Z
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScalingRequired()Z
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpandable(Z)V
    .locals 1
    .parameter "expandable"

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    goto :goto_0
.end method

.method public setLargeScreens(Z)V
    .locals 1
    .parameter "expandable"

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    goto :goto_0
.end method

.method public setXLargeScreens(Z)V
    .locals 1
    .parameter "expandable"

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    goto :goto_0
.end method

.method public supportsScreen()Z
    .locals 2

    .prologue
    .line 263
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0xa

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompatibilityInfo{scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supports screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Landroid/view/Display;
.super Ljava/lang/Object;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$1;,
        Landroid/view/Display$CompatibleDisplay;
    }
.end annotation


# static fields
.field public static final DEFAULT_DISPLAY:I

.field private static mInitialized:Z

.field private static final mStaticInit:Ljava/lang/Object;


# instance fields
.field private mDensity:F

.field private mDisplay:I

.field private mDpiX:F

.field private mDpiY:F

.field private mPixelFormat:I

.field private mRefreshRate:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/Display;->mStaticInit:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/Display;->mInitialized:Z

    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .parameter "display"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/view/Display;->mStaticInit:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/view/Display;->mInitialized:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/view/Display;->nativeClassInit()V

    const/4 v1, 0x1

    sput-boolean v1, Landroid/view/Display;->mInitialized:Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p1, p0, Landroid/view/Display;->mDisplay:I

    invoke-direct {p0, p1}, Landroid/view/Display;->init(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static createMetricsBasedDisplay(ILandroid/util/DisplayMetrics;)Landroid/view/Display;
    .locals 2
    .parameter "displayId"
    .parameter "metrics"

    .prologue
    new-instance v0, Landroid/view/Display$CompatibleDisplay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/view/Display$CompatibleDisplay;-><init>(ILandroid/util/DisplayMetrics;Landroid/view/Display$1;)V

    return-object v0
.end method

.method static native getDisplayCount()I
.end method

.method private native init(I)V
.end method

.method private static native nativeClassInit()V
.end method


# virtual methods
.method public getDisplayId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/Display;->mDisplay:I

    return v0
.end method

.method public native getHeight()I
.end method

.method public getMetrics(Landroid/util/DisplayMetrics;)V
    .locals 2
    .parameter "outMetrics"

    .prologue
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, p0, Landroid/view/Display;->mDensity:F

    iput v0, p1, Landroid/util/DisplayMetrics;->density:F

    iget v0, p0, Landroid/view/Display;->mDensity:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v0, p0, Landroid/view/Display;->mDpiX:F

    iput v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, p0, Landroid/view/Display;->mDpiY:F

    iput v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    return-void
.end method

.method public native getOrientation()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getPixelFormat()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/Display;->mPixelFormat:I

    return v0
.end method

.method public getRefreshRate()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/Display;->mRefreshRate:F

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    return v0
.end method

.method public native getWidth()I
.end method

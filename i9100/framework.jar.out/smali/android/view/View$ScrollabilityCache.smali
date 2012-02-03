.class Landroid/view/View$ScrollabilityCache;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollabilityCache"
.end annotation


# static fields
.field public static final FADING:I = 0x2

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1


# instance fields
.field public fadeScrollBars:Z

.field public fadeStartTime:J

.field public fadingEdgeLength:I

.field public host:Landroid/view/View;

.field public interpolatorValues:[F

.field private mLastColor:I

.field private final mOpaque:[F

.field private final mTransparent:[F

.field public final matrix:Landroid/graphics/Matrix;

.field public final paint:Landroid/graphics/Paint;

.field public scrollBar:Landroid/widget/ScrollBarDrawable;

.field public scrollBarDefaultDelayBeforeFade:I

.field public scrollBarFadeDuration:I

.field public final scrollBarInterpolator:Landroid/graphics/Interpolator;

.field public scrollBarSize:I

.field public shader:Landroid/graphics/Shader;

.field public state:I


# direct methods
.method public constructor <init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V
    .locals 8
    .parameter "configuration"
    .parameter "host"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 9598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9579
    new-instance v0, Landroid/graphics/Interpolator;

    const/4 v2, 0x2

    invoke-direct {v0, v3, v2}, Landroid/graphics/Interpolator;-><init>(II)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 9581
    new-array v0, v3, [F

    const/high16 v2, 0x437f

    aput v2, v0, v6

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->mOpaque:[F

    .line 9582
    new-array v0, v3, [F

    aput v1, v0, v6

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->mTransparent:[F

    .line 9594
    iput v6, p0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 9599
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 9600
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 9601
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 9602
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    iput v0, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 9604
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 9605
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    .line 9608
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f80

    const/high16 v5, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 9610
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 9611
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 9612
    iput-object p2, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    .line 9613
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 9630
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 9631
    .local v4, now:J
    iget-wide v6, p0, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 9636
    long-to-int v3, v4

    .line 9637
    .local v3, nextFrame:I
    const/4 v0, 0x0

    .line 9639
    .local v0, framesCount:I
    iget-object v2, p0, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    .line 9642
    .local v2, interpolator:Landroid/graphics/Interpolator;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #framesCount:I
    .local v1, framesCount:I
    iget-object v6, p0, Landroid/view/View$ScrollabilityCache;->mOpaque:[F

    invoke-virtual {v2, v0, v3, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 9645
    iget v6, p0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    add-int/2addr v3, v6

    .line 9646
    iget-object v6, p0, Landroid/view/View$ScrollabilityCache;->mTransparent:[F

    invoke-virtual {v2, v1, v3, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F)V

    .line 9648
    const/4 v6, 0x2

    iput v6, p0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 9651
    iget-object v6, p0, Landroid/view/View$ScrollabilityCache;->host:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 9653
    .end local v1           #framesCount:I
    .end local v2           #interpolator:Landroid/graphics/Interpolator;
    .end local v3           #nextFrame:I
    :cond_0
    return-void
.end method

.method public setFadeColor(I)V
    .locals 8
    .parameter "color"

    .prologue
    const/high16 v2, -0x100

    const/4 v1, 0x0

    .line 9616
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    if-eq p1, v0, :cond_0

    .line 9617
    iput p1, p0, Landroid/view/View$ScrollabilityCache;->mLastColor:I

    .line 9618
    or-int/2addr p1, v2

    .line 9620
    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v4, 0x3f80

    or-int v5, p1, v2

    const v2, 0xffffff

    and-int v6, p1, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    .line 9623
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 9625
    iget-object v0, p0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 9627
    :cond_0
    return-void
.end method

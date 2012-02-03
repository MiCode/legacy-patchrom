.class public Landroid/view/animation/AccelerateDecelerateInterpolator;
.super Ljava/lang/Object;
.source "AccelerateDecelerateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .parameter "input"

    .prologue
    .line 36
    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    return v0
.end method

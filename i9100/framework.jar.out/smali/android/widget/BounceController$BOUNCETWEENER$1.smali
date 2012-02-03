.class final Landroid/widget/BounceController$BOUNCETWEENER$1;
.super Ljava/lang/Object;
.source "BounceController.java"

# interfaces
.implements Landroid/widget/BounceController$Tweener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BounceController$BOUNCETWEENER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(ZF)F
    .locals 3
    .parameter "isStartFromDrag"
    .parameter "t"

    .prologue
    const/high16 v1, -0x3ee0

    .line 426
    if-eqz p1, :cond_0

    .line 437
    mul-float v0, v1, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 444
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41d0

    mul-float/2addr v0, p2

    mul-float/2addr v1, p2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.class final Landroid/widget/BounceController$BOUNCETWEENER$4;
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
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(ZF)F
    .locals 6
    .parameter "isStartFromDrag"
    .parameter "t"

    .prologue
    const/high16 v5, 0x3f80

    .line 512
    const/4 v0, 0x0

    .line 514
    .local v0, ret:F
    if-eqz p1, :cond_1

    .line 515
    add-float v1, p2, v5

    const v2, 0x40490fdb

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    mul-float p2, v1, v2

    .line 519
    :goto_0
    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 521
    cmpl-float v1, v0, v5

    if-lez v1, :cond_2

    .line 522
    const/high16 v0, 0x3f80

    .line 526
    :cond_0
    :goto_1
    return v0

    .line 517
    :cond_1
    float-to-double v1, p2

    const-wide v3, 0x400921fb54442d18L

    mul-double/2addr v1, v3

    double-to-float p2, v1

    goto :goto_0

    .line 523
    :cond_2
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 524
    const/4 v0, 0x0

    goto :goto_1
.end method

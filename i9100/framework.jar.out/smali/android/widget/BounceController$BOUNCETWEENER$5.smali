.class final Landroid/widget/BounceController$BOUNCETWEENER$5;
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
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(ZF)F
    .locals 3
    .parameter "isStartFromDrag"
    .parameter "t"

    .prologue
    const/high16 v2, 0x3f80

    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, ret:F
    if-eqz p1, :cond_1

    .line 533
    sub-float/2addr p2, v2

    neg-float v1, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    mul-float v0, v1, p2

    .line 542
    :goto_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_3

    .line 543
    const/high16 v0, 0x3f80

    .line 547
    :cond_0
    :goto_1
    return v0

    .line 535
    :cond_1
    const/high16 v1, 0x3f00

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    .line 536
    const/high16 v1, 0x4000

    mul-float/2addr v1, p2

    sub-float p2, v1, v2

    mul-float v1, p2, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    add-float v0, v1, v2

    goto :goto_0

    .line 538
    :cond_2
    const/high16 v1, 0x3fc0

    sub-float/2addr p2, v1

    neg-float v1, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    mul-float v0, v1, p2

    goto :goto_0

    .line 544
    :cond_3
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 545
    const/4 v0, 0x0

    goto :goto_1
.end method

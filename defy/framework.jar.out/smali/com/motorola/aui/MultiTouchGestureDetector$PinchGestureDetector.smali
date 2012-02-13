.class Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;
.super Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/aui/MultiTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinchGestureDetector"
.end annotation


# static fields
.field private static final deltaNone:F = 1.0f


# instance fields
.field final synthetic this$0:Lcom/motorola/aui/MultiTouchGestureDetector;


# direct methods
.method private constructor <init>(Lcom/motorola/aui/MultiTouchGestureDetector;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;->this$0:Lcom/motorola/aui/MultiTouchGestureDetector;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;)V

    return-void
.end method


# virtual methods
.method public getDelta([Landroid/graphics/Point;)F
    .locals 9
    .parameter "finger"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v3, v3, v8

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v4, v4, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v5, v5, v8

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v2, v3

    .local v2, distanceInitial:F
    aget-object v3, p1, v8

    iget v3, v3, Landroid/graphics/Point;->y:I

    aget-object v4, p1, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    aget-object v5, p1, v8

    iget v5, v5, Landroid/graphics/Point;->x:I

    aget-object v6, p1, v7

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .local v1, distanceCurrent:F
    div-float v0, v1, v2

    .local v0, delta:F
    const/high16 v3, 0x3f80

    sub-float v3, v0, v3

    return v3
.end method

.method public initialize([Landroid/graphics/Point;)V
    .locals 0
    .parameter "finger"

    .prologue
    invoke-virtual {p0, p1}, Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;->update([Landroid/graphics/Point;)V

    return-void
.end method

.method public report([Landroid/graphics/Point;F)V
    .locals 12
    .parameter "finger"
    .parameter "temper"

    .prologue
    iget-object v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    iget-object v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v3, v6

    .local v3, distanceInitial:F
    const/4 v6, 0x1

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v2, v6

    .local v2, distanceCurrent:F
    div-float v0, v2, v3

    .local v0, delta:F
    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    sub-float/2addr v7, p2

    mul-float/2addr v6, v7

    mul-float v7, v0, p2

    add-float v0, v6, v7

    const/high16 v6, 0x3f80

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v8

    mul-int/2addr v6, v7

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v9

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v4, v6

    .local v4, numerator:F
    const/4 v6, 0x0

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v9

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v1, v6

    .local v1, denominator:F
    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_2

    div-float v5, v4, v1

    .local v5, p:F
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_0

    const/4 v5, 0x0

    :cond_0
    const/high16 v6, 0x3f80

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    const/high16 v5, 0x3f80

    :cond_1
    iget-object v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;->this$0:Lcom/motorola/aui/MultiTouchGestureDetector;

    #getter for: Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;
    invoke-static {v6}, Lcom/motorola/aui/MultiTouchGestureDetector;->access$700(Lcom/motorola/aui/MultiTouchGestureDetector;)Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    const/4 v9, 0x1

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    const/4 v10, 0x0

    aget-object v10, p1, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    invoke-interface {v6, v0, v7, v8}, Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;->onPinch(FFF)V

    invoke-virtual {p0, p1}, Lcom/motorola/aui/MultiTouchGestureDetector$PinchGestureDetector;->update([Landroid/graphics/Point;)V

    .end local v1           #denominator:F
    .end local v4           #numerator:F
    .end local v5           #p:F
    :cond_2
    return-void
.end method

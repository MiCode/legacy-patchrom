.class Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;
.super Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/aui/MultiTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlideGestureDetector"
.end annotation


# static fields
.field private static final deltaNone:F


# instance fields
.field final synthetic this$0:Lcom/motorola/aui/MultiTouchGestureDetector;


# direct methods
.method private constructor <init>(Lcom/motorola/aui/MultiTouchGestureDetector;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;->this$0:Lcom/motorola/aui/MultiTouchGestureDetector;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;)V

    return-void
.end method


# virtual methods
.method public getDelta([Landroid/graphics/Point;)F
    .locals 11
    .parameter "finger"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v5, v5, v9

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v6, v6, v10

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v2, v5

    .local v2, xInitial:F
    iget-object v5, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v5, v5, v9

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v6, v6, v10

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v4, v5

    .local v4, yInitial:F
    aget-object v5, p1, v9

    iget v5, v5, Landroid/graphics/Point;->x:I

    aget-object v6, p1, v10

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v1, v5

    .local v1, xCurrent:F
    aget-object v5, p1, v9

    iget v5, v5, Landroid/graphics/Point;->y:I

    aget-object v6, p1, v10

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .local v3, yCurrent:F
    sub-float v5, v1, v2

    float-to-double v5, v5

    sub-float v7, v3, v4

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    iget-object v6, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v6, v6, v9

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v7, v7, v10

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    iget-object v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    div-float v0, v5, v6

    .local v0, delta:F
    const/4 v5, 0x0

    sub-float v5, v0, v5

    return v5
.end method

.method public initialize([Landroid/graphics/Point;)V
    .locals 2
    .parameter "finger"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;->update([Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;->this$0:Lcom/motorola/aui/MultiTouchGestureDetector;

    #setter for: Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityX:F
    invoke-static {v0, v1}, Lcom/motorola/aui/MultiTouchGestureDetector;->access$802(Lcom/motorola/aui/MultiTouchGestureDetector;F)F

    iget-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;->this$0:Lcom/motorola/aui/MultiTouchGestureDetector;

    #setter for: Lcom/motorola/aui/MultiTouchGestureDetector;->mGlideVelocityY:F
    invoke-static {v0, v1}, Lcom/motorola/aui/MultiTouchGestureDetector;->access$902(Lcom/motorola/aui/MultiTouchGestureDetector;F)F

    return-void
.end method

.method public report([Landroid/graphics/Point;F)V
    .locals 12
    .parameter "finger"
    .parameter "temper"

    .prologue
    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v3, v7

    .local v3, xInitial:F
    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v6, v7

    .local v6, yInitial:F
    const/4 v7, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v1, v7

    .local v1, xCurrent:F
    const/4 v7, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v4, v7

    .local v4, yCurrent:F
    sub-float v2, v1, v3

    .local v2, xDelta:F
    sub-float v5, v4, v6

    .local v5, yDelta:F
    float-to-double v7, v2

    float-to-double v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    const/4 v8, 0x1

    aget-object v8, p1, v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    const/4 v10, 0x1

    aget-object v10, p1, v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    const/4 v11, 0x0

    aget-object v11, p1, v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    div-float v0, v7, v8

    .local v0, delta:F
    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    sub-float/2addr v8, p2

    mul-float/2addr v7, v8

    mul-float v8, v2, p2

    add-float v2, v7, v8

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    sub-float/2addr v8, p2

    mul-float/2addr v7, v8

    mul-float v8, v5, p2

    add-float v5, v7, v8

    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;->this$0:Lcom/motorola/aui/MultiTouchGestureDetector;

    #calls: Lcom/motorola/aui/MultiTouchGestureDetector;->calculateVelocity(FF)V
    invoke-static {v7, v2, v5}, Lcom/motorola/aui/MultiTouchGestureDetector;->access$1000(Lcom/motorola/aui/MultiTouchGestureDetector;FF)V

    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;->this$0:Lcom/motorola/aui/MultiTouchGestureDetector;

    #getter for: Lcom/motorola/aui/MultiTouchGestureDetector;->mListener:Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;
    invoke-static {v7}, Lcom/motorola/aui/MultiTouchGestureDetector;->access$700(Lcom/motorola/aui/MultiTouchGestureDetector;)Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;

    move-result-object v7

    invoke-interface {v7, v2, v5}, Lcom/motorola/aui/MultiTouchGestureDetector$OnMultiTouchGestureListener;->onGlide(FF)V

    invoke-virtual {p0, p1}, Lcom/motorola/aui/MultiTouchGestureDetector$GlideGestureDetector;->update([Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

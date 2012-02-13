.class abstract Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;
.super Ljava/lang/Object;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/aui/MultiTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ParticularGestureDetector"
.end annotation


# instance fields
.field public oldFinger:[Landroid/graphics/Point;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Point;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/aui/MultiTouchGestureDetector$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDelta([Landroid/graphics/Point;)F
.end method

.method public abstract initialize([Landroid/graphics/Point;)V
.end method

.method public abstract report([Landroid/graphics/Point;F)V
.end method

.method public update([Landroid/graphics/Point;)V
    .locals 4
    .parameter "finger"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v0, v0, v2

    aget-object v1, p1, v2

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v2, p1, v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector$ParticularGestureDetector;->oldFinger:[Landroid/graphics/Point;

    aget-object v0, v0, v3

    aget-object v1, p1, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v2, p1, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

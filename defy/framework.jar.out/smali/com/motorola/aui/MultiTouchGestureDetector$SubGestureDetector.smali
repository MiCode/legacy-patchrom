.class abstract Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;
.super Ljava/lang/Object;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/aui/MultiTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SubGestureDetector"
.end annotation


# instance fields
.field public mEventTime:[J

.field public mState:[Z

.field public mTransitionOccurred:[Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mState:[Z

    new-array v0, v1, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mEventTime:[J

    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mTransitionOccurred:[Z

    return-void

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/motorola/aui/MultiTouchGestureDetector$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public update([ZJ)Z
    .locals 5
    .parameter "state"
    .parameter "eventTime"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .local v0, ret:Z
    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mState:[Z

    aget-boolean v1, v1, v4

    aget-boolean v2, p1, v4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mState:[Z

    aget-boolean v2, p1, v4

    aput-boolean v2, v1, v4

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mTransitionOccurred:[Z

    aput-boolean v3, v1, v4

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mEventTime:[J

    aput-wide p2, v1, v4

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mState:[Z

    aget-boolean v1, v1, v3

    aget-boolean v2, p1, v3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mState:[Z

    aget-boolean v2, p1, v3

    aput-boolean v2, v1, v3

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mTransitionOccurred:[Z

    aput-boolean v3, v1, v3

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mEventTime:[J

    aput-wide p2, v1, v3

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

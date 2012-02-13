.class Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;
.super Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/aui/MultiTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwoUpDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/aui/MultiTouchGestureDetector;


# direct methods
.method private constructor <init>(Lcom/motorola/aui/MultiTouchGestureDetector;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;->this$0:Lcom/motorola/aui/MultiTouchGestureDetector;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/aui/MultiTouchGestureDetector;Lcom/motorola/aui/MultiTouchGestureDetector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;-><init>(Lcom/motorola/aui/MultiTouchGestureDetector;)V

    return-void
.end method


# virtual methods
.method public update([ZJ)Z
    .locals 7
    .parameter "state"
    .parameter "eventTime"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .local v0, ret:Z
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->update([ZJ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mState:[Z

    aget-boolean v1, v1, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mState:[Z

    aget-boolean v1, v1, v6

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mTransitionOccurred:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mTransitionOccurred:[Z

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mEventTime:[J

    aget-wide v1, v1, v5

    iget-object v3, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mEventTime:[J

    aget-wide v3, v3, v6

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/motorola/aui/MultiTouchGestureDetector$TwoUpDetector;->this$0:Lcom/motorola/aui/MultiTouchGestureDetector;

    #getter for: Lcom/motorola/aui/MultiTouchGestureDetector;->TWO_UP_TIME_DELTA:J
    invoke-static {v3}, Lcom/motorola/aui/MultiTouchGestureDetector;->access$1300(Lcom/motorola/aui/MultiTouchGestureDetector;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mTransitionOccurred:[Z

    aput-boolean v5, v1, v5

    iget-object v1, p0, Lcom/motorola/aui/MultiTouchGestureDetector$SubGestureDetector;->mTransitionOccurred:[Z

    aput-boolean v5, v1, v6

    :cond_1
    return v0
.end method

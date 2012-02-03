.class Lcom/android/settings/applications/RunningState$ServiceProcessComparator;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceProcessComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/applications/RunningState$ProcessItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/RunningState$ProcessItem;Lcom/android/settings/applications/RunningState$ProcessItem;)I
    .locals 6
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 516
    iget-boolean v0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    iget-boolean v1, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    if-eq v0, v1, :cond_1

    .line 518
    iget-boolean v0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    if-eqz v0, :cond_0

    move v0, v4

    .line 529
    :goto_0
    return v0

    :cond_0
    move v0, v5

    .line 518
    goto :goto_0

    .line 520
    :cond_1
    iget-boolean v0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    iget-boolean v1, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eq v0, v1, :cond_3

    .line 522
    iget-boolean v0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    .line 524
    :cond_3
    iget-wide v0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v2, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 527
    iget-wide v0, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v2, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_0

    .line 529
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 514
    check-cast p1, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local p1
    check-cast p2, Lcom/android/settings/applications/RunningState$ProcessItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;->compare(Lcom/android/settings/applications/RunningState$ProcessItem;Lcom/android/settings/applications/RunningState$ProcessItem;)I

    move-result v0

    return v0
.end method

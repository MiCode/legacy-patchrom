.class final Lcom/android/providers/media/MediaThumbRequest$1;
.super Ljava/lang/Object;
.source "MediaThumbRequest.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaThumbRequest;->getComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/providers/media/MediaThumbRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/providers/media/MediaThumbRequest;Lcom/android/providers/media/MediaThumbRequest;)I
    .locals 6
    .parameter "r1"
    .parameter "r2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 79
    iget v0, p1, Lcom/android/providers/media/MediaThumbRequest;->mPriority:I

    iget v1, p2, Lcom/android/providers/media/MediaThumbRequest;->mPriority:I

    if-eq v0, v1, :cond_1

    .line 80
    iget v0, p1, Lcom/android/providers/media/MediaThumbRequest;->mPriority:I

    iget v1, p2, Lcom/android/providers/media/MediaThumbRequest;->mPriority:I

    if-ge v0, v1, :cond_0

    move v0, v4

    .line 82
    :goto_0
    return v0

    :cond_0
    move v0, v5

    .line 80
    goto :goto_0

    .line 82
    :cond_1
    iget-wide v0, p1, Lcom/android/providers/media/MediaThumbRequest;->mRequestTime:J

    iget-wide v2, p2, Lcom/android/providers/media/MediaThumbRequest;->mRequestTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-wide v0, p1, Lcom/android/providers/media/MediaThumbRequest;->mRequestTime:J

    iget-wide v2, p2, Lcom/android/providers/media/MediaThumbRequest;->mRequestTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    check-cast p1, Lcom/android/providers/media/MediaThumbRequest;

    .end local p1
    check-cast p2, Lcom/android/providers/media/MediaThumbRequest;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/media/MediaThumbRequest$1;->compare(Lcom/android/providers/media/MediaThumbRequest;Lcom/android/providers/media/MediaThumbRequest;)I

    move-result v0

    return v0
.end method

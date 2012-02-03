.class Landroid/widget/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method public constructor <init>(Landroid/widget/Gallery;)V
    .locals 2
    .parameter

    .prologue
    .line 1290
    iput-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1291
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1292
    return-void
.end method

.method static synthetic access$100(Landroid/widget/Gallery$FlingRunnable;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1279
    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1279
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2
    .parameter "scrollIntoSlots"

    .prologue
    .line 1331
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1333
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #calls: Landroid/widget/Gallery;->scrollIntoSlots()V
    invoke-static {v0}, Landroid/widget/Gallery;->access$500(Landroid/widget/Gallery;)V

    .line 1334
    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1297
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1338
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v5, v5, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v5, :cond_0

    .line 1339
    invoke-direct {p0, v7}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1377
    :goto_0
    return-void

    .line 1343
    :cond_0
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    const/4 v6, 0x0

    #setter for: Landroid/widget/Gallery;->mShouldStopFling:Z
    invoke-static {v5, v6}, Landroid/widget/Gallery;->access$602(Landroid/widget/Gallery;Z)Z

    .line 1345
    iget-object v3, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1346
    .local v3, scroller:Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 1347
    .local v1, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1351
    .local v4, x:I
    iget v5, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    sub-int v0, v5, v4

    .line 1354
    .local v0, delta:I
    if-lez v0, :cond_1

    .line 1356
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v6, v6, Landroid/widget/AdapterView;->mFirstPosition:I

    #setter for: Landroid/widget/Gallery;->mDownTouchPosition:I
    invoke-static {v5, v6}, Landroid/widget/Gallery;->access$702(Landroid/widget/Gallery;I)I

    .line 1359
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5}, Landroid/widget/Gallery;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/view/View;->mPaddingLeft:I
    invoke-static {v6}, Landroid/widget/Gallery;->access$800(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/view/View;->mPaddingRight:I
    invoke-static {v6}, Landroid/widget/Gallery;->access$900(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v7

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1369
    :goto_1
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5, v0}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 1371
    if-eqz v1, :cond_2

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/widget/Gallery;->mShouldStopFling:Z
    invoke-static {v5}, Landroid/widget/Gallery;->access$600(Landroid/widget/Gallery;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1372
    iput v4, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1373
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5, p0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1362
    :cond_1
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5}, Landroid/widget/Gallery;->getChildCount()I

    move-result v5

    sub-int v2, v5, v7

    .line 1363
    .local v2, offsetToLast:I
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v6, v6, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v2

    #setter for: Landroid/widget/Gallery;->mDownTouchPosition:I
    invoke-static {v5, v6}, Landroid/widget/Gallery;->access$702(Landroid/widget/Gallery;I)I

    .line 1366
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5}, Landroid/widget/Gallery;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/view/View;->mPaddingRight:I
    invoke-static {v6}, Landroid/widget/Gallery;->access$1000(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/view/View;->mPaddingLeft:I
    invoke-static {v6}, Landroid/widget/Gallery;->access$1100(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v7

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 1375
    .end local v2           #offsetToLast:I
    :cond_2
    invoke-direct {p0, v7}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    goto :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 1312
    if-nez p1, :cond_0

    .line 1319
    :goto_0
    return-void

    .line 1314
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1316
    iput v1, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1317
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    iget-object v2, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    #getter for: Landroid/widget/Gallery;->mAnimationDuration:I
    invoke-static {v2}, Landroid/widget/Gallery;->access$400(Landroid/widget/Gallery;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1318
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 1300
    if-nez p1, :cond_0

    .line 1309
    :goto_0
    return-void

    .line 1302
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1304
    if-gez p1, :cond_1

    move v1, v6

    .line 1305
    .local v1, initialX:I
    :goto_1
    iput v1, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1306
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1308
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1           #initialX:I
    :cond_1
    move v1, v2

    .line 1304
    goto :goto_1
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 1322
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1323
    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1324
    return-void
.end method

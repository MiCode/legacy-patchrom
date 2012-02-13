.class Landroid/view/InputQueue$FinishedCallback;
.super Ljava/lang/Object;
.source "InputQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishedCallback"
.end annotation


# static fields
.field private static final DEBUG_RECYCLING:Z = false

.field private static final RECYCLE_MAX_COUNT:I = 0x4

.field private static sRecycleCount:I

.field private static sRecycleHead:Landroid/view/InputQueue$FinishedCallback;


# instance fields
.field private mFinishedToken:J

.field private mRecycleNext:Landroid/view/InputQueue$FinishedCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(J)Landroid/view/InputQueue$FinishedCallback;
    .locals 4
    .parameter "finishedToken"

    .prologue
    invoke-static {}, Landroid/view/InputQueue;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/view/InputQueue$FinishedCallback;->sRecycleHead:Landroid/view/InputQueue$FinishedCallback;

    .local v0, callback:Landroid/view/InputQueue$FinishedCallback;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/view/InputQueue$FinishedCallback;->mRecycleNext:Landroid/view/InputQueue$FinishedCallback;

    sput-object v2, Landroid/view/InputQueue$FinishedCallback;->sRecycleHead:Landroid/view/InputQueue$FinishedCallback;

    sget v2, Landroid/view/InputQueue$FinishedCallback;->sRecycleCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Landroid/view/InputQueue$FinishedCallback;->sRecycleCount:I

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/InputQueue$FinishedCallback;->mRecycleNext:Landroid/view/InputQueue$FinishedCallback;

    :goto_0
    iput-wide p0, v0, Landroid/view/InputQueue$FinishedCallback;->mFinishedToken:J

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Landroid/view/InputQueue$FinishedCallback;

    .end local v0           #callback:Landroid/view/InputQueue$FinishedCallback;
    invoke-direct {v0}, Landroid/view/InputQueue$FinishedCallback;-><init>()V

    .restart local v0       #callback:Landroid/view/InputQueue$FinishedCallback;
    goto :goto_0

    .end local v0           #callback:Landroid/view/InputQueue$FinishedCallback;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    invoke-static {}, Landroid/view/InputQueue;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/view/InputQueue$FinishedCallback;->mFinishedToken:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Event finished callback already invoked."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    iget-wide v1, p0, Landroid/view/InputQueue$FinishedCallback;->mFinishedToken:J

    #calls: Landroid/view/InputQueue;->nativeFinished(J)V
    invoke-static {v1, v2}, Landroid/view/InputQueue;->access$100(J)V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/view/InputQueue$FinishedCallback;->mFinishedToken:J

    sget v1, Landroid/view/InputQueue$FinishedCallback;->sRecycleCount:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    sget-object v1, Landroid/view/InputQueue$FinishedCallback;->sRecycleHead:Landroid/view/InputQueue$FinishedCallback;

    iput-object v1, p0, Landroid/view/InputQueue$FinishedCallback;->mRecycleNext:Landroid/view/InputQueue$FinishedCallback;

    sput-object p0, Landroid/view/InputQueue$FinishedCallback;->sRecycleHead:Landroid/view/InputQueue$FinishedCallback;

    sget v1, Landroid/view/InputQueue$FinishedCallback;->sRecycleCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/InputQueue$FinishedCallback;->sRecycleCount:I

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

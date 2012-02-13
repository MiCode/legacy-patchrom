.class Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/StrictMode$AndroidBlockGuardPolicy;

.field final synthetic val$records:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->this$0:Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    iput-object p2, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 6

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, loopFinishTime:J
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    iget-object v4, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/StrictMode$ViolationInfo;

    .local v3, v:Landroid/os/StrictMode$ViolationInfo;
    add-int/lit8 v4, v2, 0x1

    iput v4, v3, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    iget-wide v4, v3, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    sub-long v4, v0, v4

    long-to-int v4, v4

    iput v4, v3, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    iget-object v4, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->this$0:Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v4, v3}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolation(Landroid/os/StrictMode$ViolationInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #v:Landroid/os/StrictMode$ViolationInfo;
    :cond_0
    iget-object v4, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    return v4
.end method

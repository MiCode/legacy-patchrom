.class final Landroid/app/Instrumentation$InstrumentationThread;
.super Ljava/lang/Thread;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InstrumentationThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    iput-object p1, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, am:Landroid/app/IActivityManager;
    const/4 v2, -0x8

    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    #getter for: Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z
    invoke-static {v2}, Landroid/app/Instrumentation;->access$100(Landroid/app/Instrumentation;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    invoke-virtual {v2}, Landroid/app/Instrumentation;->startPerformanceSnapshot()V

    :cond_0
    iget-object v2, p0, Landroid/app/Instrumentation$InstrumentationThread;->this$0:Landroid/app/Instrumentation;

    invoke-virtual {v2}, Landroid/app/Instrumentation;->onStart()V

    return-void

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "Instrumentation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception setting priority of instrumentation thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

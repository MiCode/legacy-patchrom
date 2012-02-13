.class Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;
.super Ljava/lang/Object;
.source "EnvironmentalReverb.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/EnvironmentalReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/EnvironmentalReverb;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/EnvironmentalReverb;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/EnvironmentalReverb;Landroid/media/audiofx/EnvironmentalReverb$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/EnvironmentalReverb;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 8
    .parameter "effect"
    .parameter "status"
    .parameter "param"
    .parameter "value"

    .prologue
    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .local v0, l:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    iget-object v3, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    #getter for: Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/audiofx/EnvironmentalReverb;->access$000(Landroid/media/audiofx/EnvironmentalReverb;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    #getter for: Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    invoke-static {v4}, Landroid/media/audiofx/EnvironmentalReverb;->access$100(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    #getter for: Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    invoke-static {v4}, Landroid/media/audiofx/EnvironmentalReverb;->access$100(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    move-result-object v0

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    .local v1, p:I
    const/4 v2, -0x1

    .local v2, v:I
    array-length v3, p3

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-virtual {v3, p3, v5}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    move-result v1

    :cond_1
    array-length v3, p4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-virtual {v3, p4, v5}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v2

    :cond_2
    :goto_0
    if-eq v1, v6, :cond_3

    if-eq v2, v6, :cond_3

    iget-object v3, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/EnvironmentalReverb;III)V

    .end local v1           #p:I
    .end local v2           #v:I
    :cond_3
    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .restart local v1       #p:I
    .restart local v2       #v:I
    :cond_4
    array-length v3, p4

    if-ne v3, v7, :cond_2

    iget-object v3, p0, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/EnvironmentalReverb;

    invoke-virtual {v3, p4, v5}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    move-result v2

    goto :goto_0
.end method

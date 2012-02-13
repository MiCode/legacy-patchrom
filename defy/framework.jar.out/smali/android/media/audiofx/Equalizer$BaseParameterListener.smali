.class Landroid/media/audiofx/Equalizer$BaseParameterListener;
.super Ljava/lang/Object;
.source "Equalizer.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Equalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/Equalizer;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/Equalizer;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 9
    .parameter "effect"
    .parameter "status"
    .parameter "param"
    .parameter "value"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v0, 0x0

    .local v0, l:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    #getter for: Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/audiofx/Equalizer;->access$000(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    #getter for: Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    invoke-static {v2}, Landroid/media/audiofx/Equalizer;->access$100(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    #getter for: Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    invoke-static {v2}, Landroid/media/audiofx/Equalizer;->access$100(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    move-result-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    const/4 v3, -0x1

    .local v3, p1:I
    const/4 v4, -0x1

    .local v4, p2:I
    const/4 v5, -0x1

    .local v5, v:I
    array-length v1, p3

    if-lt v1, v7, :cond_1

    iget-object v1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v1, p3, v6}, Landroid/media/audiofx/Equalizer;->byteArrayToInt([BI)I

    move-result v3

    array-length v1, p3

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v1, p3, v7}, Landroid/media/audiofx/Equalizer;->byteArrayToInt([BI)I

    move-result v4

    :cond_1
    array-length v1, p4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v1, p4, v6}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v5

    :cond_2
    :goto_0
    if-eq v3, v8, :cond_3

    if-eq v5, v8, :cond_3

    iget-object v1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/audiofx/Equalizer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/Equalizer;IIII)V

    .end local v3           #p1:I
    .end local v4           #p2:I
    .end local v5           #v:I
    :cond_3
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v3       #p1:I
    .restart local v4       #p2:I
    .restart local v5       #v:I
    :cond_4
    array-length v1, p4

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v1, p4, v6}, Landroid/media/audiofx/Equalizer;->byteArrayToInt([BI)I

    move-result v5

    goto :goto_0
.end method

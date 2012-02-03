.class public Landroid/util/TimingLogger;
.super Ljava/lang/Object;
.source "TimingLogger.java"


# instance fields
.field private mDisabled:Z

.field private mLabel:Ljava/lang/String;

.field mSplitLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSplits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "label"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p0, p1, p2}, Landroid/util/TimingLogger;->reset(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public addSplit(Ljava/lang/String;)V
    .locals 4
    .parameter "splitLabel"

    .prologue
    .line 119
    iget-boolean v2, p0, Landroid/util/TimingLogger;->mDisabled:Z

    if-eqz v2, :cond_0

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 121
    .local v0, now:J
    iget-object v2, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v2, p0, Landroid/util/TimingLogger;->mSplitLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public dumpToLog()V
    .locals 12

    .prologue
    .line 131
    iget-boolean v8, p0, Landroid/util/TimingLogger;->mDisabled:Z

    if-eqz v8, :cond_0

    .line 143
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v8, p0, Landroid/util/TimingLogger;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/util/TimingLogger;->mLabel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": begin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v8, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 134
    .local v0, first:J
    move-wide v3, v0

    .line 135
    .local v3, now:J
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    iget-object v8, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 136
    iget-object v8, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 137
    iget-object v8, p0, Landroid/util/TimingLogger;->mSplitLabels:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 138
    .local v7, splitLabel:Ljava/lang/String;
    iget-object v8, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    const/4 v9, 0x1

    sub-int v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 140
    .local v5, prev:J
    iget-object v8, p0, Landroid/util/TimingLogger;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/util/TimingLogger;->mLabel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":      "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v3, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 142
    .end local v5           #prev:J
    .end local v7           #splitLabel:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Landroid/util/TimingLogger;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/util/TimingLogger;->mLabel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": end, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v3, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Landroid/util/TimingLogger;->mTag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/util/TimingLogger;->mDisabled:Z

    .line 100
    iget-boolean v0, p0, Landroid/util/TimingLogger;->mDisabled:Z

    if-eqz v0, :cond_1

    .line 109
    :goto_1
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/TimingLogger;->mSplitLabels:Ljava/util/ArrayList;

    .line 108
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_2
    iget-object v0, p0, Landroid/util/TimingLogger;->mSplits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object v0, p0, Landroid/util/TimingLogger;->mSplitLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2
.end method

.method public reset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "label"

    .prologue
    .line 85
    iput-object p1, p0, Landroid/util/TimingLogger;->mTag:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Landroid/util/TimingLogger;->mLabel:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Landroid/util/TimingLogger;->reset()V

    .line 88
    return-void
.end method

.class public Lcom/android/common/OperationScheduler;
.super Ljava/lang/Object;
.source "OperationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/OperationScheduler$Options;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "OperationScheduler_"


# instance fields
.field private final mStorage:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "storage"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    .line 73
    return-void
.end method

.method private getTimeBefore(Ljava/lang/String;J)J
    .locals 5
    .parameter "name"
    .parameter "max"

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-wide/16 v3, 0x0

    invoke-interface {v2, p1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 201
    .local v0, time:J
    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    .line 202
    move-wide v0, p2

    .line 203
    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 205
    :cond_0
    return-wide v0
.end method

.method public static parseOptions(Ljava/lang/String;Lcom/android/common/OperationScheduler$Options;)Lcom/android/common/OperationScheduler$Options;
    .locals 9
    .parameter "spec"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/16 v7, 0x8

    .line 97
    const-string v5, " +"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 98
    .local v3, param:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 97
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const-string v5, "backoff="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    const/16 v5, 0x2b

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 101
    .local v4, plus:I
    if-gez v4, :cond_1

    .line 102
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    goto :goto_1

    .line 104
    :cond_1
    if-le v4, v7, :cond_2

    .line 105
    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    .line 107
    :cond_2
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    goto :goto_1

    .line 109
    .end local v4           #plus:I
    :cond_3
    const-string v5, "max="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 110
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    goto :goto_1

    .line 111
    :cond_4
    const-string v5, "min="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 112
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    goto :goto_1

    .line 113
    :cond_5
    const-string v5, "period="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 114
    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    goto :goto_1

    .line 116
    :cond_6
    invoke-static {v3}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    goto :goto_1

    .line 119
    .end local v3           #param:Ljava/lang/String;
    :cond_7
    return-object p1
.end method

.method private static parseSeconds(Ljava/lang/String;)J
    .locals 2
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method protected currentTimeMillis()J
    .locals 2

    .prologue
    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAttemptTimeMillis()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v1, "OperationScheduler_lastSuccessTimeMillis"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v3, "OperationScheduler_lastErrorTimeMillis"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSuccessTimeMillis()J
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v1, "OperationScheduler_lastSuccessTimeMillis"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J
    .locals 27
    .parameter "options"

    .prologue
    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "OperationScheduler_enabledState"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 137
    .local v4, enabledState:Z
    if-nez v4, :cond_0

    const-wide v21, 0x7fffffffffffffffL

    .line 166
    :goto_0
    return-wide v21

    .line 139
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "OperationScheduler_permanentError"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 140
    .local v16, permanentError:Z
    if-eqz v16, :cond_1

    const-wide v21, 0x7fffffffffffffffL

    goto :goto_0

    .line 146
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "OperationScheduler_errorCount"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 147
    .local v5, errorCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v14

    .line 148
    .local v14, now:J
    const-string v21, "OperationScheduler_lastSuccessTimeMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide v2, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v8

    .line 149
    .local v8, lastSuccessTimeMillis:J
    const-string v21, "OperationScheduler_lastErrorTimeMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide v2, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v6

    .line 150
    .local v6, lastErrorTimeMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "OperationScheduler_triggerTimeMillis"

    const-wide v23, 0x7fffffffffffffffL

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    .line 151
    .local v19, triggerTimeMillis:J
    const-string v21, "OperationScheduler_moratoriumSetTimeMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide v2, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v10

    .line 152
    .local v10, moratoriumSetMillis:J
    const-string v21, "OperationScheduler_moratoriumTimeMillis"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    move-wide/from16 v22, v0

    add-long v22, v22, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v12

    .line 155
    .local v12, moratoriumTimeMillis:J
    move-wide/from16 v17, v19

    .line 156
    .local v17, time:J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_2

    .line 157
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    move-wide/from16 v21, v0

    add-long v21, v21, v8

    move-wide/from16 v0, v17

    move-wide/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    .line 160
    :cond_2
    move-wide/from16 v0, v17

    move-wide v2, v12

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    .line 161
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    move-wide/from16 v21, v0

    add-long v21, v21, v8

    move-wide/from16 v0, v17

    move-wide/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    .line 162
    if-lez v5, :cond_3

    .line 163
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    move-wide/from16 v21, v0

    add-long v21, v21, v6

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    move-wide/from16 v23, v0

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v25, v0

    mul-long v23, v23, v25

    add-long v21, v21, v23

    move-wide/from16 v0, v17

    move-wide/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    :cond_3
    move-wide/from16 v21, v17

    .line 166
    goto/16 :goto_0
.end method

.method public onPermanentError()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_permanentError"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 315
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 275
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->resetPermanentError()V

    .line 276
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_errorCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_lastErrorTimeMillis"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_permanentError"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_triggerTimeMillis"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_lastSuccessTimeMillis"

    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 282
    return-void
.end method

.method public onTransientError()V
    .locals 5

    .prologue
    const-string v4, "OperationScheduler_errorCount"

    .line 290
    iget-object v1, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 291
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "OperationScheduler_lastErrorTimeMillis"

    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 292
    const-string v1, "OperationScheduler_errorCount"

    iget-object v1, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v2, "OperationScheduler_errorCount"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 295
    return-void
.end method

.method public resetPermanentError()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_permanentError"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 323
    return-void
.end method

.method public resetTransientError()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_errorCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 305
    return-void
.end method

.method public setEnabledState(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_enabledState"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 267
    return-void
.end method

.method public setMoratoriumTimeHttp(Ljava/lang/String;)Z
    .locals 9
    .parameter "retryAfter"

    .prologue
    const/4 v8, 0x1

    .line 244
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v1, v4, v6

    .line 245
    .local v1, ms:J
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v8

    .line 252
    .end local v1           #ms:J
    :goto_0
    return v4

    .line 247
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 249
    .local v3, nfe:Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v8

    .line 250
    goto :goto_0

    .line 251
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 252
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setMoratoriumTimeMillis(J)V
    .locals 4
    .parameter "millis"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_moratoriumTimeMillis"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_moratoriumSetTimeMillis"

    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 232
    return-void
.end method

.method public setTriggerTimeMillis(J)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_triggerTimeMillis"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 219
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const-string v10, "="

    const-string v9, " "

    const-string v8, "OperationScheduler_"

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[OperationScheduler:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .local v2, out:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/TreeSet;

    iget-object v5, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 331
    .local v1, key:Ljava/lang/String;
    const-string v4, "OperationScheduler_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 332
    const-string v4, "TimeMillis"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 333
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 334
    .local v3, time:Landroid/text/format/Time;
    iget-object v4, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 335
    const-string v4, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "OperationScheduler_"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    sub-int/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v4, "="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%Y-%m-%d/%H:%M:%S"

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 338
    .end local v3           #time:Landroid/text/format/Time;
    :cond_1
    const-string v4, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "OperationScheduler_"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v4, "="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 343
    .end local v1           #key:Ljava/lang/String;
    :cond_2
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

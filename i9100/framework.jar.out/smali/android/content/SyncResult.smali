.class public final Landroid/content/SyncResult;
.super Ljava/lang/Object;
.source "SyncResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public databaseError:Z

.field public delayUntil:J

.field public fullSyncRequested:Z

.field public moreRecordsToGet:Z

.field public partialSyncUnavailable:Z

.field public final stats:Landroid/content/SyncStats;

.field public final syncAlreadyInProgress:Z

.field public tooManyDeletions:Z

.field public tooManyRetries:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Landroid/content/SyncResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/SyncResult;-><init>(Z)V

    sput-object v0, Landroid/content/SyncResult;->ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

    .line 223
    new-instance v0, Landroid/content/SyncResult$1;

    invoke-direct {v0}, Landroid/content/SyncResult$1;-><init>()V

    sput-object v0, Landroid/content/SyncResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/SyncResult;-><init>(Z)V

    .line 120
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "parcel"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    iput-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_5
    iput-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_6
    iput-boolean v0, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    .line 147
    new-instance v0, Landroid/content/SyncStats;

    invoke-direct {v0, p1}, Landroid/content/SyncStats;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 148
    return-void

    :cond_0
    move v0, v1

    .line 139
    goto :goto_0

    :cond_1
    move v0, v1

    .line 140
    goto :goto_1

    :cond_2
    move v0, v1

    .line 141
    goto :goto_2

    :cond_3
    move v0, v1

    .line 142
    goto :goto_3

    :cond_4
    move v0, v1

    .line 143
    goto :goto_4

    :cond_5
    move v0, v1

    .line 144
    goto :goto_5

    :cond_6
    move v0, v1

    .line 145
    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/SyncResult$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/content/SyncResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "syncAlreadyInProgress"

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-boolean p1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    .line 129
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 130
    iput-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 131
    iput-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 132
    iput-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    .line 133
    iput-boolean v0, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    .line 135
    new-instance v0, Landroid/content/SyncStats;

    invoke-direct {v0}, Landroid/content/SyncStats;-><init>()V

    iput-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 136
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "you are not allowed to clear the ALREADY_IN_PROGRESS SyncStats"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iput-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 214
    iput-boolean v1, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 215
    iput-boolean v1, p0, Landroid/content/SyncResult;->databaseError:Z

    .line 216
    iput-boolean v1, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 217
    iput-boolean v1, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    .line 218
    iput-boolean v1, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    .line 219
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    .line 220
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v0}, Landroid/content/SyncStats;->clear()V

    .line 221
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHardError()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 166
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSoftError()Z
    .locals 4

    .prologue
    .line 187
    iget-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public madeSomeProgress()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 199
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 280
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 282
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v1, :cond_0

    .line 283
    const-string v1, "f1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    :cond_0
    iget-boolean v1, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    if-eqz v1, :cond_1

    .line 286
    const-string/jumbo v1, "r1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :cond_1
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    const-string v1, "X1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    :cond_2
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_3

    .line 292
    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 294
    :cond_3
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_4

    .line 295
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 297
    :cond_4
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_5

    .line 298
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 300
    :cond_5
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v1, :cond_6

    .line 301
    const-string v1, "D1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    :cond_6
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v1, :cond_7

    .line 304
    const-string v1, "R1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    :cond_7
    iget-boolean v1, p0, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v1, :cond_8

    .line 307
    const-string v1, "b1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    :cond_8
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 310
    const-string/jumbo v1, "x1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    :cond_9
    iget-boolean v1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v1, :cond_a

    .line 313
    const-string v1, "l1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    :cond_a
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_b

    .line 316
    const-string v1, "I"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v2, Landroid/content/SyncStats;->numIoExceptions:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 318
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "SyncResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-boolean v1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v1, :cond_0

    .line 254
    const-string v1, " syncAlreadyInProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 256
    :cond_0
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v1, :cond_1

    const-string v1, " tooManyDeletions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 257
    :cond_1
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v1, :cond_2

    const-string v1, " tooManyRetries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    :cond_2
    iget-boolean v1, p0, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v1, :cond_3

    const-string v1, " databaseError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->databaseError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 259
    :cond_3
    iget-boolean v1, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v1, :cond_4

    const-string v1, " fullSyncRequested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 260
    :cond_4
    iget-boolean v1, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    if-eqz v1, :cond_5

    .line 261
    const-string v1, " partialSyncUnavailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 263
    :cond_5
    iget-boolean v1, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    if-eqz v1, :cond_6

    const-string v1, " moreRecordsToGet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 264
    :cond_6
    iget-wide v1, p0, Landroid/content/SyncResult;->delayUntil:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    const-string v1, " delayUntil: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncResult;->delayUntil:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 265
    :cond_7
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 238
    iget-boolean v0, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-boolean v0, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-boolean v0, p0, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-boolean v0, p0, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-boolean v0, p0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-boolean v0, p0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-wide v0, p0, Landroid/content/SyncResult;->delayUntil:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 246
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v0, p1, p2}, Landroid/content/SyncStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 247
    return-void

    :cond_0
    move v0, v1

    .line 238
    goto :goto_0

    :cond_1
    move v0, v1

    .line 239
    goto :goto_1

    :cond_2
    move v0, v1

    .line 240
    goto :goto_2

    :cond_3
    move v0, v1

    .line 241
    goto :goto_3

    :cond_4
    move v0, v1

    .line 242
    goto :goto_4

    :cond_5
    move v0, v1

    .line 243
    goto :goto_5

    :cond_6
    move v0, v1

    .line 244
    goto :goto_6
.end method

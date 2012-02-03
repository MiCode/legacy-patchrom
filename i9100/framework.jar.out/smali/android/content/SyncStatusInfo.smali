.class public Landroid/content/SyncStatusInfo;
.super Ljava/lang/Object;
.source "SyncStatusInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Sync"

.field static final VERSION:I = 0x2


# instance fields
.field public final authorityId:I

.field public initialFailureTime:J

.field public initialize:Z

.field public lastFailureMesg:Ljava/lang/String;

.field public lastFailureSource:I

.field public lastFailureTime:J

.field public lastSuccessSource:I

.field public lastSuccessTime:J

.field public numSourceLocal:I

.field public numSourcePeriodic:I

.field public numSourcePoll:I

.field public numSourceServer:I

.field public numSourceUser:I

.field public numSyncs:I

.field public pending:Z

.field public periodicSyncTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public totalElapsedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Landroid/content/SyncStatusInfo$1;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$1;-><init>()V

    sput-object v0, Landroid/content/SyncStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .parameter "authorityId"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 51
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .parameter "parcel"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .local v2, version:I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    if-eq v2, v6, :cond_0

    .line 98
    const-string v3, "SyncStatusInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    :goto_0
    iput-boolean v3, p0, Landroid/content/SyncStatusInfo;->pending:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    :goto_1
    iput-boolean v3, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    .line 115
    if-ne v2, v6, :cond_4

    .line 116
    iput-object v8, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 128
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v3, v7

    .line 113
    goto :goto_0

    :cond_3
    move v3, v7

    .line 114
    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .local v0, N:I
    if-gez v0, :cond_5

    .line 120
    iput-object v8, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    goto :goto_2

    .line 122
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 123
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v0, :cond_1

    .line 124
    iget-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private ensurePeriodicSyncTimeSize(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 136
    iget-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 140
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 141
    .local v1, requiredSize:I
    iget-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 142
    iget-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 143
    iget-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v0           #i:I
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getLastFailureMesgAsInt(I)I
    .locals 4
    .parameter "def"

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 58
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 59
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing lastFailureMesg of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    move v1, p1

    .line 61
    goto :goto_0
.end method

.method public getPeriodicSyncTime(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 149
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_1

    .line 150
    :cond_0
    const-wide/16 v0, 0x0

    .line 152
    .end local p0
    :goto_0
    return-wide v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public removePeriodicSyncTime(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Landroid/content/SyncStatusInfo;->ensurePeriodicSyncTimeSize(I)V

    .line 157
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public setPeriodicSyncTime(IJ)V
    .locals 2
    .parameter "index"
    .parameter "when"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/content/SyncStatusInfo;->ensurePeriodicSyncTimeSize(I)V

    .line 132
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 69
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v3, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-wide v3, p0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget v3, p0, Landroid/content/SyncStatusInfo;->numSyncs:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v3, p0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v3, p0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v3, p0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v3, p0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-wide v3, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget v3, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-wide v3, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget v3, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v3, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-wide v3, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-boolean v3, p0, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v3, :cond_0

    move v3, v6

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-boolean v3, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    if-eqz v3, :cond_1

    move v3, v6

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 86
    iget-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 88
    .local v1, periodicSyncTime:J
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_2

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #periodicSyncTime:J
    .restart local p0
    :cond_0
    move v3, v5

    .line 83
    goto :goto_0

    :cond_1
    move v3, v5

    .line 84
    goto :goto_1

    .line 91
    :cond_2
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    .end local p0
    :cond_3
    return-void
.end method

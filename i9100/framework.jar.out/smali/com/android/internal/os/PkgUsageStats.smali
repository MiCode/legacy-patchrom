.class public Lcom/android/internal/os/PkgUsageStats;
.super Ljava/lang/Object;
.source "PkgUsageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/PkgUsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public launchCount:I

.field public packageName:Ljava/lang/String;

.field public usageTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/android/internal/os/PkgUsageStats$1;

    invoke-direct {v0}, Lcom/android/internal/os/PkgUsageStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/PkgUsageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PkgUsageStats;)V
    .locals 2
    .parameter "pStats"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iget-object v0, p1, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    .line 63
    iget v0, p1, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    iput v0, p0, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    .line 64
    iget-wide v0, p1, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    iput-wide v0, p0, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .parameter "pkgName"
    .parameter "count"
    .parameter "time"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    .line 51
    iput p2, p0, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    .line 52
    iput-wide p3, p0, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PkgUsageStats{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "parcelableFlags"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-wide v0, p0, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    return-void
.end method

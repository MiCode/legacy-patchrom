.class public Lcom/vzw/location/VzwGpsFixRate;
.super Ljava/lang/Object;
.source "VzwGpsFixRate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsFixRate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNumFixes:J

.field private mTimeBetweenFixes:J

.field private mUpdateMargin:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsFixRate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vzw/location/VzwGpsFixRate$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwGpsFixRate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/VzwGpsFixRate;)V
    .locals 4
    .parameter "fixRate"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vzw/location/VzwGpsFixRate;->setGpsFixRate(JJ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    move v2, v6

    :goto_0
    return v2

    :cond_0
    if-ne p1, p0, :cond_1

    move v2, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/vzw/location/VzwGpsFixRate;

    move-object v1, v0

    .local v1, other:Lcom/vzw/location/VzwGpsFixRate;
    iget-wide v2, p0, Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsFixRate;->getNumFixes()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    invoke-virtual {v1}, Lcom/vzw/location/VzwGpsFixRate;->getTimeBetweenFixes()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_0

    :cond_4
    move v2, v7

    goto :goto_0
.end method

.method public getNumFixes()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J

    return-wide v0
.end method

.method public getTimeBetweenFixes()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    return-wide v0
.end method

.method getUpdateMargin()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mUpdateMargin:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v0, 0x1

    .local v0, hash:I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v1, p0, Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J

    iget-wide v3, p0, Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J

    ushr-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit8 v0, v1, 0x1f

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    iget-wide v4, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    return v0
.end method

.method public setGpsFixRate(JJ)V
    .locals 0
    .parameter "numFixes"
    .parameter "timeBetweenFixes"

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/vzw/location/VzwGpsFixRate;->setNumFixes(J)V

    invoke-virtual {p0, p3, p4}, Lcom/vzw/location/VzwGpsFixRate;->setTimeBetweenFixes(J)V

    return-void
.end method

.method public setNumFixes(J)V
    .locals 2
    .parameter "n"

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J

    goto :goto_0
.end method

.method public setTimeBetweenFixes(J)V
    .locals 0
    .parameter "n"

    .prologue
    iput-wide p1, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    invoke-virtual {p0}, Lcom/vzw/location/VzwGpsFixRate;->setUpdateMargin()V

    return-void
.end method

.method setUpdateMargin()V
    .locals 6

    .prologue
    iget-wide v2, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x3fe8

    mul-double v0, v2, v4

    .local v0, margin:D
    double-to-long v2, v0

    iput-wide v2, p0, Lcom/vzw/location/VzwGpsFixRate;->mUpdateMargin:J

    return-void
.end method

.method setUpdateMargin(J)V
    .locals 4
    .parameter "n"

    .prologue
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mUpdateMargin:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    iget-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mNumFixes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/vzw/location/VzwGpsFixRate;->mTimeBetweenFixes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

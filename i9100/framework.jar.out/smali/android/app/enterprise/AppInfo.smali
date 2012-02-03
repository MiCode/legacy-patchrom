.class public Landroid/app/enterprise/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCPUUsage:F

.field private mPackageName:Ljava/lang/String;

.field private mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Landroid/app/enterprise/AppInfo$1;

    invoke-direct {v0}, Landroid/app/enterprise/AppInfo$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0, p1}, Landroid/app/enterprise/AppInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 71
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/AppInfo;->mSize:J

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/enterprise/AppInfo;->mCPUUsage:F

    .line 108
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getCPUUsageInfo()F
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Landroid/app/enterprise/AppInfo;->mCPUUsage:F

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Landroid/app/enterprise/AppInfo;->mSize:J

    return-wide v0
.end method

.method public setCPUUsageInfo(F)V
    .locals 0
    .parameter "aCPUUSage"

    .prologue
    .line 140
    iput p1, p0, Landroid/app/enterprise/AppInfo;->mCPUUsage:F

    .line 141
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "aPackageName"

    .prologue
    .line 118
    iput-object p1, p0, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "aSize"

    .prologue
    .line 129
    iput-wide p1, p0, Landroid/app/enterprise/AppInfo;->mSize:J

    .line 130
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flag"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-wide v0, p0, Landroid/app/enterprise/AppInfo;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget v0, p0, Landroid/app/enterprise/AppInfo;->mCPUUsage:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 89
    return-void
.end method

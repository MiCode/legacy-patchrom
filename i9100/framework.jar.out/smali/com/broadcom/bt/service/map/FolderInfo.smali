.class public Lcom/broadcom/bt/service/map/FolderInfo;
.super Ljava/lang/Object;
.source "FolderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/map/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final mModeReadOnly:J = 0x1L


# instance fields
.field public mCreatedDateTimeMS:Ljava/lang/String;

.field public mFolderName:Ljava/lang/String;

.field public mFolderSizeBytes:J

.field public mMode:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/broadcom/bt/service/map/FolderInfo$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/FolderInfo$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/map/FolderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v1, 0x0

    const-string v3, ""

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v3, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    .line 28
    iput-wide v1, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    .line 29
    const-string v0, ""

    iput-object v3, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    .line 30
    iput-wide v1, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "source"

    .prologue
    const-wide/16 v1, 0x0

    const-string v3, ""

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v3, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    .line 28
    iput-wide v1, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    .line 29
    const-string v0, ""

    iput-object v3, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    .line 30
    iput-wide v1, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;J)V
    .locals 4
    .parameter "folderName"
    .parameter "folderSizeBytes"
    .parameter "createdDateTimeMS"
    .parameter "mode"

    .prologue
    const-wide/16 v1, 0x0

    const-string v3, ""

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v3, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    .line 28
    iput-wide v1, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    .line 29
    const-string v0, ""

    iput-object v3, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    .line 30
    iput-wide v1, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    .line 43
    iput-object p1, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    .line 44
    iput-wide p2, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    .line 45
    iput-object p4, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    .line 46
    iput-wide p5, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-wide v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget-object v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-wide v0, p0, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    return-void
.end method

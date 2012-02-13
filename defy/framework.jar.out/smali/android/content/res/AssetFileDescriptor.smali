.class public Landroid/content/res/AssetFileDescriptor;
.super Ljava/lang/Object;
.source "AssetFileDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;,
        Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;,
        Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_LENGTH:J = -0x1L


# instance fields
.field private final mFd:Landroid/os/ParcelFileDescriptor;

.field private final mLength:J

.field private final mStartOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/content/res/AssetFileDescriptor$1;

    invoke-direct {v0}, Landroid/content/res/AssetFileDescriptor$1;-><init>()V

    sput-object v0, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;JJ)V
    .locals 3
    .parameter "fd"
    .parameter "startOffset"
    .parameter "length"

    .prologue
    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long v0, p4, v1

    if-gez v0, :cond_0

    cmp-long v0, p2, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startOffset must be 0 when using UNKNOWN_LENGTH"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    iput-wide p2, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    iput-wide p4, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    return-void
.end method

.method public static fromMemoryFile(Landroid/os/MemoryFile;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .parameter "memoryFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/os/MemoryFile;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Landroid/os/MemoryFile;->length()I

    move-result v4

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    return-object v0
.end method

.method private isMemoryFile()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/MemoryFile;->isMemoryFile(Ljava/io/FileDescriptor;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    return-void
.end method

.method public createInputStream()Ljava/io/FileInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/content/res/AssetFileDescriptor;->isMemoryFile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File length too large for a memory file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;

    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    long-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/content/res/AssetFileDescriptor$AutoCloseMemoryFileInputStream;-><init>(Landroid/os/ParcelFileDescriptor;I)V

    :goto_0
    return-object v0

    :cond_1
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p0}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_0
.end method

.method public createOutputStream()Ljava/io/FileOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p0}, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v0

    return v0
.end method

.method public getDeclaredLength()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    return-wide v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLength()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    :goto_0
    return-wide v2

    :cond_0
    iget-object v2, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0

    .local v0, len:J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    move-wide v2, v0

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getStartOffset()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{AssetFileDescriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.class public Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
.super Ljava/io/FileInputStream;
.source "ParcelFileDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCloseInputStream"
.end annotation


# instance fields
.field private final mFd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .parameter "fd"

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 208
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 209
    return-void
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
    .line 213
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 214
    return-void
.end method

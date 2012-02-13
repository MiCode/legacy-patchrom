.class public final Landroid/view/InputChannel;
.super Ljava/lang/Object;
.source "InputChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/InputChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InputChannel"


# instance fields
.field private mDisposeAfterWriteToParcel:Z

.field private mPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/view/InputChannel$1;

    invoke-direct {v0}, Landroid/view/InputChannel$1;-><init>()V

    sput-object v0, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeDispose(Z)V
.end method

.method private native nativeGetName()Ljava/lang/String;
.end method

.method private static native nativeOpenInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;
.end method

.method private native nativeReadFromParcel(Landroid/os/Parcel;)V
.end method

.method private native nativeTransferTo(Landroid/view/InputChannel;)V
.end method

.method private native nativeWriteToParcel(Landroid/os/Parcel;)V
.end method

.method public static openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;
    .locals 2
    .parameter "name"

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Landroid/view/InputChannel;->nativeOpenInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/InputChannel;->nativeDispose(Z)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/InputChannel;->nativeDispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/view/InputChannel;->nativeGetName()Ljava/lang/String;

    move-result-object v0

    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "uninitialized"

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/InputChannel;->nativeReadFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transferToBinderOutParameter(Landroid/view/InputChannel;)V
    .locals 2
    .parameter "outParameter"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outParameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/InputChannel;->nativeTransferTo(Landroid/view/InputChannel;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/InputChannel;->mDisposeAfterWriteToParcel:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/InputChannel;->nativeWriteToParcel(Landroid/os/Parcel;)V

    iget-boolean v0, p0, Landroid/view/InputChannel;->mDisposeAfterWriteToParcel:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    :cond_1
    return-void
.end method

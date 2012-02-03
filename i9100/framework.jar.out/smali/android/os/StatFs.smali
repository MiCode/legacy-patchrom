.class public Landroid/os/StatFs;
.super Ljava/lang/Object;
.source "StatFs.java"


# instance fields
.field private mNativeContext:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/os/StatFs;->native_setup(Ljava/lang/String;)V

    return-void
.end method

.method private native native_finalize()V
.end method

.method private native native_restat(Ljava/lang/String;)V
.end method

.method private native native_setup(Ljava/lang/String;)V
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/StatFs;->native_finalize()V

    return-void
.end method

.method public native getAvailableBlocks()I
.end method

.method public native getBlockCount()I
.end method

.method public native getBlockSize()I
.end method

.method public native getFreeBlocks()I
.end method

.method public restat(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/os/StatFs;->native_restat(Ljava/lang/String;)V

    return-void
.end method

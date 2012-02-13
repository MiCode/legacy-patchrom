.class public final Lcom/android/server/InputWindowList;
.super Ljava/lang/Object;
.source "InputWindowList.java"


# instance fields
.field private mArray:[Lcom/android/server/InputWindow;

.field private mCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/InputWindow;

    iput-object v0, p0, Lcom/android/server/InputWindowList;->mArray:[Lcom/android/server/InputWindow;

    return-void
.end method


# virtual methods
.method public add()Lcom/android/server/InputWindow;
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget v2, p0, Lcom/android/server/InputWindowList;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/server/InputWindowList;->mArray:[Lcom/android/server/InputWindow;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/InputWindowList;->mArray:[Lcom/android/server/InputWindow;

    .local v1, oldArray:[Lcom/android/server/InputWindow;
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lcom/android/server/InputWindow;

    iput-object v2, p0, Lcom/android/server/InputWindowList;->mArray:[Lcom/android/server/InputWindow;

    iget-object v2, p0, Lcom/android/server/InputWindowList;->mArray:[Lcom/android/server/InputWindow;

    iget v3, p0, Lcom/android/server/InputWindowList;->mCount:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v1           #oldArray:[Lcom/android/server/InputWindow;
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputWindowList;->mArray:[Lcom/android/server/InputWindow;

    iget v3, p0, Lcom/android/server/InputWindowList;->mCount:I

    add-int/lit8 v3, v3, 0x1

    aget-object v0, v2, v3

    .local v0, item:Lcom/android/server/InputWindow;
    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/InputWindow;

    .end local v0           #item:Lcom/android/server/InputWindow;
    invoke-direct {v0}, Lcom/android/server/InputWindow;-><init>()V

    .restart local v0       #item:Lcom/android/server/InputWindow;
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputWindowList;->mArray:[Lcom/android/server/InputWindow;

    iget v3, p0, Lcom/android/server/InputWindowList;->mCount:I

    aput-object v0, v2, v3

    iget v2, p0, Lcom/android/server/InputWindowList;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/InputWindowList;->mCount:I

    iget-object v2, p0, Lcom/android/server/InputWindowList;->mArray:[Lcom/android/server/InputWindow;

    iget v3, p0, Lcom/android/server/InputWindowList;->mCount:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    return-object v0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget v1, p0, Lcom/android/server/InputWindowList;->mCount:I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/InputWindowList;->mCount:I

    .local v0, count:I
    iput v3, p0, Lcom/android/server/InputWindowList;->mCount:I

    iget-object v1, p0, Lcom/android/server/InputWindowList;->mArray:[Lcom/android/server/InputWindow;

    iget-object v2, p0, Lcom/android/server/InputWindowList;->mArray:[Lcom/android/server/InputWindow;

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    :goto_1
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/server/InputWindowList;->mArray:[Lcom/android/server/InputWindow;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/InputWindow;->recycle()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/InputWindowList;->mArray:[Lcom/android/server/InputWindow;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    goto :goto_0
.end method

.method public toNullTerminatedArray()[Lcom/android/server/InputWindow;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/InputWindowList;->mArray:[Lcom/android/server/InputWindow;

    return-object v0
.end method

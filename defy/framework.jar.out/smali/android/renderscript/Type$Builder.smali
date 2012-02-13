.class public Landroid/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Type$Builder$Entry;
    }
.end annotation


# instance fields
.field mElement:Landroid/renderscript/Element;

.field mEntries:[Landroid/renderscript/Type$Builder$Entry;

.field mEntryCount:I

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .locals 2
    .parameter "rs"
    .parameter "e"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p2, Landroid/renderscript/BaseObj;->mID:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid element."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/renderscript/Type$Builder$Entry;

    iput-object v0, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    iput-object p2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/Type$Builder;)Landroid/renderscript/Type;
    .locals 6
    .parameter "rs"
    .parameter "b"

    .prologue
    const-class v3, Landroid/renderscript/Type$Builder;

    monitor-enter v3

    :try_start_0
    iget-object v4, p1, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iget v4, v4, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {p0, v4}, Landroid/renderscript/RenderScript;->nTypeBegin(I)V

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget v4, p1, Landroid/renderscript/Type$Builder;->mEntryCount:I

    if-ge v0, v4, :cond_0

    iget-object v4, p1, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    aget-object v1, v4, v0

    .local v1, en:Landroid/renderscript/Type$Builder$Entry;
    iget-object v4, v1, Landroid/renderscript/Type$Builder$Entry;->mDim:Landroid/renderscript/Dimension;

    iget v4, v4, Landroid/renderscript/Dimension;->mID:I

    iget v5, v1, Landroid/renderscript/Type$Builder$Entry;->mValue:I

    invoke-virtual {p0, v4, v5}, Landroid/renderscript/RenderScript;->nTypeAdd(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #en:Landroid/renderscript/Type$Builder$Entry;
    :cond_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nTypeCreate()I

    move-result v2

    .local v2, id:I
    new-instance v4, Landroid/renderscript/Type;

    invoke-direct {v4, v2, p0}, Landroid/renderscript/Type;-><init>(ILandroid/renderscript/RenderScript;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v4

    .end local v0           #ct:I
    .end local v2           #id:I
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method


# virtual methods
.method public add(Landroid/renderscript/Dimension;I)V
    .locals 4
    .parameter "d"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Values of less than 1 for Dimensions are not valid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    array-length v1, v1

    iget v2, p0, Landroid/renderscript/Type$Builder;->mEntryCount:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Landroid/renderscript/Type$Builder;->mEntryCount:I

    add-int/lit8 v1, v1, 0x8

    new-array v0, v1, [Landroid/renderscript/Type$Builder$Entry;

    .local v0, en:[Landroid/renderscript/Type$Builder$Entry;
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    .end local v0           #en:[Landroid/renderscript/Type$Builder$Entry;
    :cond_1
    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    iget v2, p0, Landroid/renderscript/Type$Builder;->mEntryCount:I

    new-instance v3, Landroid/renderscript/Type$Builder$Entry;

    invoke-direct {v3, p0}, Landroid/renderscript/Type$Builder$Entry;-><init>(Landroid/renderscript/Type$Builder;)V

    aput-object v3, v1, v2

    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    iget v2, p0, Landroid/renderscript/Type$Builder;->mEntryCount:I

    aget-object v1, v1, v2

    iput-object p1, v1, Landroid/renderscript/Type$Builder$Entry;->mDim:Landroid/renderscript/Dimension;

    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    iget v2, p0, Landroid/renderscript/Type$Builder;->mEntryCount:I

    aget-object v1, v1, v2

    iput p2, v1, Landroid/renderscript/Type$Builder$Entry;->mValue:I

    iget v1, p0, Landroid/renderscript/Type$Builder;->mEntryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/renderscript/Type$Builder;->mEntryCount:I

    return-void
.end method

.method public create()Landroid/renderscript/Type;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2, p0}, Landroid/renderscript/Type$Builder;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/Type$Builder;)Landroid/renderscript/Type;

    move-result-object v1

    .local v1, t:Landroid/renderscript/Type;
    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iput-object v2, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget v2, p0, Landroid/renderscript/Type$Builder;->mEntryCount:I

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/Type$Builder$Entry;->mDim:Landroid/renderscript/Dimension;

    sget-object v3, Landroid/renderscript/Dimension;->X:Landroid/renderscript/Dimension;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/renderscript/Type$Builder$Entry;->mValue:I

    iput v2, v1, Landroid/renderscript/Type;->mDimX:I

    :cond_0
    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/Type$Builder$Entry;->mDim:Landroid/renderscript/Dimension;

    sget-object v3, Landroid/renderscript/Dimension;->Y:Landroid/renderscript/Dimension;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/renderscript/Type$Builder$Entry;->mValue:I

    iput v2, v1, Landroid/renderscript/Type;->mDimY:I

    :cond_1
    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/Type$Builder$Entry;->mDim:Landroid/renderscript/Dimension;

    sget-object v3, Landroid/renderscript/Dimension;->Z:Landroid/renderscript/Dimension;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/renderscript/Type$Builder$Entry;->mValue:I

    iput v2, v1, Landroid/renderscript/Type;->mDimZ:I

    :cond_2
    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/Type$Builder$Entry;->mDim:Landroid/renderscript/Dimension;

    sget-object v3, Landroid/renderscript/Dimension;->LOD:Landroid/renderscript/Dimension;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/renderscript/Type$Builder$Entry;->mValue:I

    if-eqz v2, :cond_5

    move v2, v5

    :goto_1
    iput-boolean v2, v1, Landroid/renderscript/Type;->mDimLOD:Z

    :cond_3
    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/Type$Builder$Entry;->mDim:Landroid/renderscript/Dimension;

    sget-object v3, Landroid/renderscript/Dimension;->FACE:Landroid/renderscript/Dimension;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mEntries:[Landroid/renderscript/Type$Builder$Entry;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/renderscript/Type$Builder$Entry;->mValue:I

    if-eqz v2, :cond_6

    move v2, v5

    :goto_2
    iput-boolean v2, v1, Landroid/renderscript/Type;->mDimFaces:Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Landroid/renderscript/Type;->calcElementCount()V

    return-object v1
.end method

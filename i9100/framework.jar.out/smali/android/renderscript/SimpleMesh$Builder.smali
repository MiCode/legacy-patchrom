.class public Landroid/renderscript/SimpleMesh$Builder;
.super Ljava/lang/Object;
.source "SimpleMesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/SimpleMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/SimpleMesh$Builder$Entry;
    }
.end annotation


# instance fields
.field mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

.field mPrimitive:Landroid/renderscript/Primitive;

.field mRS:Landroid/renderscript/RenderScript;

.field mVertexTypeCount:I

.field mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/renderscript/SimpleMesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    .line 84
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/renderscript/SimpleMesh$Builder$Entry;

    iput-object v0, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    .line 85
    new-instance v0, Landroid/renderscript/SimpleMesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/SimpleMesh$Builder$Entry;-><init>(Landroid/renderscript/SimpleMesh$Builder;)V

    iput-object v0, p0, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    .line 86
    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/SimpleMesh$Builder;)Landroid/renderscript/SimpleMesh;
    .locals 11
    .parameter "rs"
    .parameter "b"

    .prologue
    .line 137
    const-class v7, Landroid/renderscript/SimpleMesh$Builder;

    monitor-enter v7

    const/16 v8, 0x12

    :try_start_0
    new-array v4, v8, [Landroid/renderscript/Type;

    .line 138
    .local v4, toDestroy:[Landroid/renderscript/Type;
    const/4 v5, 0x0

    .line 140
    .local v5, toDestroyCount:I
    const/4 v3, 0x0

    .line 141
    .local v3, indexID:I
    iget-object v8, p1, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    iget-object v8, v8, Landroid/renderscript/SimpleMesh$Builder$Entry;->t:Landroid/renderscript/Type;

    if-eqz v8, :cond_1

    .line 142
    iget-object v8, p1, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    iget-object v8, v8, Landroid/renderscript/SimpleMesh$Builder$Entry;->t:Landroid/renderscript/Type;

    iget v3, v8, Landroid/renderscript/BaseObj;->mID:I

    .line 149
    :cond_0
    :goto_0
    iget v8, p1, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    new-array v0, v8, [I

    .line 150
    .local v0, IDs:[I
    const/4 v1, 0x0

    .local v1, ct:I
    move v6, v5

    .end local v5           #toDestroyCount:I
    .local v6, toDestroyCount:I
    :goto_1
    iget v8, p1, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    if-ge v1, v8, :cond_3

    .line 151
    iget-object v8, p1, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    aget-object v8, v8, v1

    iget-object v8, v8, Landroid/renderscript/SimpleMesh$Builder$Entry;->t:Landroid/renderscript/Type;

    if-eqz v8, :cond_2

    .line 152
    iget-object v8, p1, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    aget-object v8, v8, v1

    iget-object v8, v8, Landroid/renderscript/SimpleMesh$Builder$Entry;->t:Landroid/renderscript/Type;

    iget v8, v8, Landroid/renderscript/BaseObj;->mID:I

    aput v8, v0, v1

    move v5, v6

    .line 150
    .end local v6           #toDestroyCount:I
    .restart local v5       #toDestroyCount:I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5           #toDestroyCount:I
    .restart local v6       #toDestroyCount:I
    goto :goto_1

    .line 143
    .end local v0           #IDs:[I
    .end local v1           #ct:I
    .end local v6           #toDestroyCount:I
    .restart local v5       #toDestroyCount:I
    :cond_1
    iget-object v8, p1, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    iget v8, v8, Landroid/renderscript/SimpleMesh$Builder$Entry;->size:I

    if-eqz v8, :cond_0

    .line 144
    iget-object v8, p1, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    iget-object v9, p1, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    iget-object v9, v9, Landroid/renderscript/SimpleMesh$Builder$Entry;->e:Landroid/renderscript/Element;

    iget-object v10, p1, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    iget v10, v10, Landroid/renderscript/SimpleMesh$Builder$Entry;->size:I

    invoke-virtual {p1, v9, v10}, Landroid/renderscript/SimpleMesh$Builder;->newType(Landroid/renderscript/Element;I)Landroid/renderscript/Type;

    move-result-object v9

    iput-object v9, v8, Landroid/renderscript/SimpleMesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 145
    iget-object v8, p1, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    iget-object v8, v8, Landroid/renderscript/SimpleMesh$Builder$Entry;->t:Landroid/renderscript/Type;

    iget v3, v8, Landroid/renderscript/BaseObj;->mID:I

    .line 146
    add-int/lit8 v6, v5, 0x1

    .end local v5           #toDestroyCount:I
    .restart local v6       #toDestroyCount:I
    iget-object v8, p1, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    iget-object v8, v8, Landroid/renderscript/SimpleMesh$Builder$Entry;->t:Landroid/renderscript/Type;

    aput-object v8, v4, v5

    move v5, v6

    .end local v6           #toDestroyCount:I
    .restart local v5       #toDestroyCount:I
    goto :goto_0

    .line 154
    .end local v5           #toDestroyCount:I
    .restart local v0       #IDs:[I
    .restart local v1       #ct:I
    .restart local v6       #toDestroyCount:I
    :cond_2
    iget-object v8, p1, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    aget-object v8, v8, v1

    iget-object v9, p1, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    aget-object v9, v9, v1

    iget-object v9, v9, Landroid/renderscript/SimpleMesh$Builder$Entry;->e:Landroid/renderscript/Element;

    iget-object v10, p1, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    aget-object v10, v10, v1

    iget v10, v10, Landroid/renderscript/SimpleMesh$Builder$Entry;->size:I

    invoke-virtual {p1, v9, v10}, Landroid/renderscript/SimpleMesh$Builder;->newType(Landroid/renderscript/Element;I)Landroid/renderscript/Type;

    move-result-object v9

    iput-object v9, v8, Landroid/renderscript/SimpleMesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 155
    iget-object v8, p1, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    aget-object v8, v8, v1

    iget-object v8, v8, Landroid/renderscript/SimpleMesh$Builder$Entry;->t:Landroid/renderscript/Type;

    iget v8, v8, Landroid/renderscript/BaseObj;->mID:I

    aput v8, v0, v1

    .line 156
    add-int/lit8 v5, v6, 0x1

    .end local v6           #toDestroyCount:I
    .restart local v5       #toDestroyCount:I
    iget-object v8, p1, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    aget-object v8, v8, v1

    iget-object v8, v8, Landroid/renderscript/SimpleMesh$Builder$Entry;->t:Landroid/renderscript/Type;

    aput-object v8, v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 137
    .end local v0           #IDs:[I
    .end local v1           #ct:I
    .end local v3           #indexID:I
    .end local v4           #toDestroy:[Landroid/renderscript/Type;
    .end local v5           #toDestroyCount:I
    :catchall_0
    move-exception v8

    monitor-exit v7

    throw v8

    .line 160
    .restart local v0       #IDs:[I
    .restart local v1       #ct:I
    .restart local v3       #indexID:I
    .restart local v4       #toDestroy:[Landroid/renderscript/Type;
    .restart local v6       #toDestroyCount:I
    :cond_3
    const/4 v8, 0x0

    :try_start_1
    iget-object v9, p1, Landroid/renderscript/SimpleMesh$Builder;->mPrimitive:Landroid/renderscript/Primitive;

    iget v9, v9, Landroid/renderscript/Primitive;->mID:I

    invoke-virtual {p0, v8, v3, v0, v9}, Landroid/renderscript/RenderScript;->nSimpleMeshCreate(II[II)I

    move-result v2

    .line 161
    .local v2, id:I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_4

    .line 162
    aget-object v8, v4, v1

    invoke-virtual {v8}, Landroid/renderscript/Type;->destroy()V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 165
    :cond_4
    new-instance v8, Landroid/renderscript/SimpleMesh;

    invoke-direct {v8, v2, p0}, Landroid/renderscript/SimpleMesh;-><init>(ILandroid/renderscript/RenderScript;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    return-object v8
.end method


# virtual methods
.method public addVertexType(Landroid/renderscript/Element;I)I
    .locals 4
    .parameter "e"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 101
    iget v1, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    iget-object v2, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 102
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Max vertex types exceeded."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    iget v0, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    .line 106
    .local v0, addedIndex:I
    iget-object v1, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    iget v2, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    new-instance v3, Landroid/renderscript/SimpleMesh$Builder$Entry;

    invoke-direct {v3, p0}, Landroid/renderscript/SimpleMesh$Builder$Entry;-><init>(Landroid/renderscript/SimpleMesh$Builder;)V

    aput-object v3, v1, v2

    .line 107
    iget-object v1, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    iget v2, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    aget-object v1, v1, v2

    iput-object p1, v1, Landroid/renderscript/SimpleMesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 108
    iget-object v1, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    iget v2, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    aget-object v1, v1, v2

    iput p2, v1, Landroid/renderscript/SimpleMesh$Builder$Entry;->size:I

    .line 109
    iget v1, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    .line 110
    return v0
.end method

.method public addVertexType(Landroid/renderscript/Type;)I
    .locals 4
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 89
    iget v1, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    iget-object v2, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 90
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Max vertex types exceeded."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_0
    iget v0, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    .line 94
    .local v0, addedIndex:I
    iget-object v1, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    iget v2, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    new-instance v3, Landroid/renderscript/SimpleMesh$Builder$Entry;

    invoke-direct {v3, p0}, Landroid/renderscript/SimpleMesh$Builder$Entry;-><init>(Landroid/renderscript/SimpleMesh$Builder;)V

    aput-object v3, v1, v2

    .line 95
    iget-object v1, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    iget v2, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    aget-object v1, v1, v2

    iput-object p1, v1, Landroid/renderscript/SimpleMesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 96
    iget v1, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    .line 97
    return v0
.end method

.method public create()Landroid/renderscript/SimpleMesh;
    .locals 4

    .prologue
    .line 169
    iget-object v2, p0, Landroid/renderscript/SimpleMesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 170
    iget-object v2, p0, Landroid/renderscript/SimpleMesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2, p0}, Landroid/renderscript/SimpleMesh$Builder;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/SimpleMesh$Builder;)Landroid/renderscript/SimpleMesh;

    move-result-object v1

    .line 171
    .local v1, sm:Landroid/renderscript/SimpleMesh;
    iget v2, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    new-array v2, v2, [Landroid/renderscript/Type;

    iput-object v2, v1, Landroid/renderscript/SimpleMesh;->mVertexTypes:[Landroid/renderscript/Type;

    .line 172
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget v2, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypeCount:I

    if-ge v0, v2, :cond_0

    .line 173
    iget-object v2, v1, Landroid/renderscript/SimpleMesh;->mVertexTypes:[Landroid/renderscript/Type;

    iget-object v3, p0, Landroid/renderscript/SimpleMesh$Builder;->mVertexTypes:[Landroid/renderscript/SimpleMesh$Builder$Entry;

    aget-object v3, v3, v0

    iget-object v3, v3, Landroid/renderscript/SimpleMesh$Builder$Entry;->t:Landroid/renderscript/Type;

    aput-object v3, v2, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iget-object v2, p0, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    iget-object v2, v2, Landroid/renderscript/SimpleMesh$Builder$Entry;->t:Landroid/renderscript/Type;

    iput-object v2, v1, Landroid/renderscript/SimpleMesh;->mIndexType:Landroid/renderscript/Type;

    .line 176
    iget-object v2, p0, Landroid/renderscript/SimpleMesh$Builder;->mPrimitive:Landroid/renderscript/Primitive;

    iput-object v2, v1, Landroid/renderscript/SimpleMesh;->mPrimitive:Landroid/renderscript/Primitive;

    .line 177
    return-object v1
.end method

.method newType(Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .locals 2
    .parameter "e"
    .parameter "size"

    .prologue
    .line 131
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Landroid/renderscript/SimpleMesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 132
    .local v0, tb:Landroid/renderscript/Type$Builder;
    sget-object v1, Landroid/renderscript/Dimension;->X:Landroid/renderscript/Dimension;

    invoke-virtual {v0, v1, p2}, Landroid/renderscript/Type$Builder;->add(Landroid/renderscript/Dimension;I)V

    .line 133
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    return-object v1
.end method

.method public setIndexType(Landroid/renderscript/Element;I)V
    .locals 2
    .parameter "e"
    .parameter "size"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/SimpleMesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 121
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    iput-object p1, v0, Landroid/renderscript/SimpleMesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 122
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    iput p2, v0, Landroid/renderscript/SimpleMesh$Builder$Entry;->size:I

    .line 123
    return-void
.end method

.method public setIndexType(Landroid/renderscript/Type;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 114
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    iput-object p1, v0, Landroid/renderscript/SimpleMesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 115
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/renderscript/SimpleMesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 116
    iget-object v0, p0, Landroid/renderscript/SimpleMesh$Builder;->mIndexType:Landroid/renderscript/SimpleMesh$Builder$Entry;

    const/4 v1, 0x0

    iput v1, v0, Landroid/renderscript/SimpleMesh$Builder$Entry;->size:I

    .line 117
    return-void
.end method

.method public setPrimitive(Landroid/renderscript/Primitive;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 126
    iput-object p1, p0, Landroid/renderscript/SimpleMesh$Builder;->mPrimitive:Landroid/renderscript/Primitive;

    .line 127
    return-void
.end method

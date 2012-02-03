.class public Landroid/renderscript/Type;
.super Landroid/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Type$Builder;
    }
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimLOD:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mElementCount:I

.field mJavaClass:Ljava/lang/Class;

.field private mNativeCache:I


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 98
    invoke-direct {p0, p2}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    .line 99
    iput p1, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Type;->mNativeCache:I

    .line 101
    return-void
.end method

.method public static createFromClass(Landroid/renderscript/RenderScript;Ljava/lang/Class;I)Landroid/renderscript/Type;
    .locals 11
    .parameter "rs"
    .parameter "c"
    .parameter "size"

    .prologue
    const/16 v10, 0x20

    .line 112
    invoke-static {p0, p1}, Landroid/renderscript/Element;->createFromClass(Landroid/renderscript/RenderScript;Ljava/lang/Class;)Landroid/renderscript/Element;

    move-result-object v4

    .line 113
    .local v4, e:Landroid/renderscript/Element;
    new-instance v2, Landroid/renderscript/Type$Builder;

    invoke-direct {v2, p0, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 114
    .local v2, b:Landroid/renderscript/Type$Builder;
    sget-object v9, Landroid/renderscript/Dimension;->X:Landroid/renderscript/Dimension;

    invoke-virtual {v2, v9, p2}, Landroid/renderscript/Type$Builder;->add(Landroid/renderscript/Dimension;I)V

    .line 115
    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v8

    .line 116
    .local v8, t:Landroid/renderscript/Type;
    invoke-virtual {v4}, Landroid/renderscript/Element;->destroy()V

    .line 120
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 121
    .local v7, fields:[Ljava/lang/reflect/Field;
    array-length v9, v7

    new-array v1, v9, [I

    .line 122
    .local v1, arTypes:[I
    array-length v9, v7

    new-array v0, v9, [I

    .line 124
    .local v0, arBits:[I
    const/4 v3, 0x0

    .local v3, ct:I
    :goto_0
    array-length v9, v7

    if-ge v3, v9, :cond_4

    .line 125
    aget-object v5, v7, v3

    .line 126
    .local v5, f:Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 127
    .local v6, fc:Ljava/lang/Class;
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v9, :cond_0

    .line 128
    sget-object v9, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    iget v9, v9, Landroid/renderscript/Element$DataType;->mID:I

    aput v9, v1, v3

    .line 129
    aput v10, v0, v3

    .line 124
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_0
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v6, v9, :cond_1

    .line 131
    sget-object v9, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    iget v9, v9, Landroid/renderscript/Element$DataType;->mID:I

    aput v9, v1, v3

    .line 132
    const/16 v9, 0x10

    aput v9, v0, v3

    goto :goto_1

    .line 133
    :cond_1
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v6, v9, :cond_2

    .line 134
    sget-object v9, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    iget v9, v9, Landroid/renderscript/Element$DataType;->mID:I

    aput v9, v1, v3

    .line 135
    const/16 v9, 0x8

    aput v9, v0, v3

    goto :goto_1

    .line 136
    :cond_2
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v9, :cond_3

    .line 137
    sget-object v9, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    iget v9, v9, Landroid/renderscript/Element$DataType;->mID:I

    aput v9, v1, v3

    .line 138
    aput v10, v0, v3

    goto :goto_1

    .line 140
    :cond_3
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Unkown field type"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 143
    .end local v5           #f:Ljava/lang/reflect/Field;
    .end local v6           #fc:Ljava/lang/Class;
    :cond_4
    invoke-virtual {p0, v8, v1, v0, v7}, Landroid/renderscript/RenderScript;->nTypeSetupFields(Landroid/renderscript/Type;[I[I[Ljava/lang/reflect/Field;)V

    .line 145
    iput-object p1, v8, Landroid/renderscript/Type;->mJavaClass:Ljava/lang/Class;

    .line 146
    return-object v8
.end method

.method public static createFromClass(Landroid/renderscript/RenderScript;Ljava/lang/Class;ILjava/lang/String;)Landroid/renderscript/Type;
    .locals 1
    .parameter "rs"
    .parameter "c"
    .parameter "size"
    .parameter "scriptName"

    .prologue
    .line 150
    invoke-static {p0, p1, p2}, Landroid/renderscript/Type;->createFromClass(Landroid/renderscript/RenderScript;Ljava/lang/Class;I)Landroid/renderscript/Type;

    move-result-object v0

    .line 151
    .local v0, t:Landroid/renderscript/Type;
    invoke-virtual {v0, p3}, Landroid/renderscript/Type;->setName(Ljava/lang/String;)V

    .line 152
    return-object v0
.end method


# virtual methods
.method calcElementCount()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 61
    invoke-virtual {p0}, Landroid/renderscript/Type;->getLOD()Z

    move-result v2

    .line 62
    .local v2, hasLod:Z
    invoke-virtual {p0}, Landroid/renderscript/Type;->getX()I

    move-result v3

    .line 63
    .local v3, x:I
    invoke-virtual {p0}, Landroid/renderscript/Type;->getY()I

    move-result v4

    .line 64
    .local v4, y:I
    invoke-virtual {p0}, Landroid/renderscript/Type;->getZ()I

    move-result v5

    .line 65
    .local v5, z:I
    const/4 v1, 0x1

    .line 66
    .local v1, faces:I
    invoke-virtual {p0}, Landroid/renderscript/Type;->getFaces()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    const/4 v1, 0x6

    .line 69
    :cond_0
    if-nez v3, :cond_1

    .line 70
    const/4 v3, 0x1

    .line 72
    :cond_1
    if-nez v4, :cond_2

    .line 73
    const/4 v4, 0x1

    .line 75
    :cond_2
    if-nez v5, :cond_3

    .line 76
    const/4 v5, 0x1

    .line 79
    :cond_3
    mul-int v6, v3, v4

    mul-int/2addr v6, v5

    mul-int v0, v6, v1

    .line 80
    .local v0, count:I
    if-eqz v2, :cond_7

    if-le v3, v7, :cond_7

    if-le v4, v7, :cond_7

    if-le v5, v7, :cond_7

    .line 81
    if-le v3, v7, :cond_4

    .line 82
    shr-int/lit8 v3, v3, 0x1

    .line 84
    :cond_4
    if-le v4, v7, :cond_5

    .line 85
    shr-int/lit8 v4, v4, 0x1

    .line 87
    :cond_5
    if-le v5, v7, :cond_6

    .line 88
    shr-int/lit8 v5, v5, 0x1

    .line 91
    :cond_6
    mul-int v6, v3, v4

    mul-int/2addr v6, v5

    mul-int/2addr v6, v1

    add-int/2addr v0, v6

    .line 93
    :cond_7
    iput v0, p0, Landroid/renderscript/Type;->mElementCount:I

    .line 94
    return-void
.end method

.method public bridge synthetic destroy()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

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
    .line 104
    iget v0, p0, Landroid/renderscript/Type;->mNativeCache:I

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p0}, Landroid/renderscript/RenderScript;->nTypeFinalDestroy(Landroid/renderscript/Type;)V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Type;->mNativeCache:I

    .line 108
    :cond_0
    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    .line 109
    return-void
.end method

.method public getElement()Landroid/renderscript/Element;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    return-object v0
.end method

.method public getElementCount()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Landroid/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public getFaces()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public bridge synthetic getID()I
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/renderscript/BaseObj;->getID()I

    move-result v0

    return v0
.end method

.method public getLOD()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Landroid/renderscript/Type;->mDimLOD:Z

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Landroid/renderscript/Type;->mDimX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Landroid/renderscript/Type;->mDimY:I

    return v0
.end method

.method public getZ()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Landroid/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/renderscript/BaseObj;->setName(Ljava/lang/String;)V

    return-void
.end method

.class public Landroid/renderscript/ScriptC$Builder;
.super Landroid/renderscript/Script$Builder;
.source "ScriptC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mFloatDefines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mIntDefines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mProgram:[B

.field mProgramLength:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    invoke-direct {p0, p1}, Landroid/renderscript/Script$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptC$Builder;->mIntDefines:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptC$Builder;->mFloatDefines:Ljava/util/HashMap;

    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/ScriptC$Builder;)Landroid/renderscript/ScriptC;
    .locals 10
    .parameter "b"

    .prologue
    const-class v7, Landroid/renderscript/ScriptC$Builder;

    monitor-enter v7

    :try_start_0
    iget-object v5, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5}, Landroid/renderscript/RenderScript;->nScriptCBegin()V

    invoke-virtual {p0}, Landroid/renderscript/ScriptC$Builder;->transferCreate()V

    iget-object v5, p0, Landroid/renderscript/ScriptC$Builder;->mIntDefines:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v8, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v5, v6}, Landroid/renderscript/RenderScript;->nScriptCAddDefineI32(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/renderscript/ScriptC$Builder;->mFloatDefines:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Float;>;"
    iget-object v8, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v8, v5, v6}, Landroid/renderscript/RenderScript;->nScriptCAddDefineF(Ljava/lang/String;F)V

    goto :goto_1

    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Float;>;"
    :cond_1
    iget-object v5, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, p0, Landroid/renderscript/ScriptC$Builder;->mProgram:[B

    const/4 v8, 0x0

    iget v9, p0, Landroid/renderscript/ScriptC$Builder;->mProgramLength:I

    invoke-virtual {v5, v6, v8, v9}, Landroid/renderscript/RenderScript;->nScriptCSetScript([BII)V

    iget-object v5, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5}, Landroid/renderscript/RenderScript;->nScriptCCreate()I

    move-result v3

    .local v3, id:I
    new-instance v4, Landroid/renderscript/ScriptC;

    iget-object v5, p0, Landroid/renderscript/Script$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v4, v3, v5}, Landroid/renderscript/ScriptC;-><init>(ILandroid/renderscript/RenderScript;)V

    .local v4, obj:Landroid/renderscript/ScriptC;
    invoke-virtual {p0, v4}, Landroid/renderscript/ScriptC$Builder;->transferObject(Landroid/renderscript/Script;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    return-object v4
.end method


# virtual methods
.method public addDefine(Ljava/lang/String;F)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/renderscript/ScriptC$Builder;->mFloatDefines:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addDefine(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/renderscript/ScriptC$Builder;->mIntDefines:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addDefines(Ljava/lang/Class;)V
    .locals 3
    .parameter "cl"

    .prologue
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/renderscript/ScriptC$Builder;->addDefines([Ljava/lang/reflect/Field;ILjava/lang/Object;)V

    return-void
.end method

.method public addDefines(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Landroid/renderscript/ScriptC$Builder;->addDefines([Ljava/lang/reflect/Field;ILjava/lang/Object;)V

    return-void
.end method

.method addDefines([Ljava/lang/reflect/Field;ILjava/lang/Object;)V
    .locals 9
    .parameter "fields"
    .parameter "mask"
    .parameter "o"

    .prologue
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .local v2, f:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/2addr v6, p2

    if-ne v6, p2, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .local v5, t:Ljava/lang/Class;
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_1

    iget-object v6, p0, Landroid/renderscript/ScriptC$Builder;->mIntDefines:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, p3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v5           #t:Ljava/lang/Class;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v5       #t:Ljava/lang/Class;
    :cond_1
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_0

    iget-object v6, p0, Landroid/renderscript/ScriptC$Builder;->mFloatDefines:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, p3}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v5           #t:Ljava/lang/Class;
    :catch_0
    move-exception v6

    move-object v1, v6

    .local v1, ex:Ljava/lang/IllegalAccessException;
    const-string v6, "ScriptC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addDefines skipping field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #ex:Ljava/lang/IllegalAccessException;
    .end local v2           #f:Ljava/lang/reflect/Field;
    :cond_2
    return-void
.end method

.method public create()Landroid/renderscript/ScriptC;
    .locals 1

    .prologue
    invoke-static {p0}, Landroid/renderscript/ScriptC$Builder;->internalCreate(Landroid/renderscript/ScriptC$Builder;)Landroid/renderscript/ScriptC;

    move-result-object v0

    return-object v0
.end method

.method public setScript(Landroid/content/res/Resources;I)V
    .locals 3
    .parameter "resources"
    .parameter "id"

    .prologue
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptC$Builder;->setScript(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/IOException;
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v2
.end method

.method public setScript(Ljava/io/InputStream;)V
    .locals 7
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x400

    new-array v0, v5, [B

    .local v0, buf:[B
    const/4 v4, 0x0

    .local v4, currentPos:I
    :goto_0
    array-length v5, v0

    sub-int v2, v5, v4

    .local v2, bytesLeft:I
    if-nez v2, :cond_0

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    .local v1, buf2:[B
    array-length v5, v0

    invoke-static {v0, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    array-length v5, v0

    sub-int v2, v5, v4

    .end local v1           #buf2:[B
    :cond_0
    invoke-virtual {p1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .local v3, bytesRead:I
    if-gtz v3, :cond_1

    iput-object v0, p0, Landroid/renderscript/ScriptC$Builder;->mProgram:[B

    iput v4, p0, Landroid/renderscript/ScriptC$Builder;->mProgramLength:I

    return-void

    :cond_1
    add-int/2addr v4, v3

    goto :goto_0
.end method

.method public setScript(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ScriptC$Builder;->mProgram:[B

    iget-object v1, p0, Landroid/renderscript/ScriptC$Builder;->mProgram:[B

    array-length v1, v1

    iput v1, p0, Landroid/renderscript/ScriptC$Builder;->mProgramLength:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

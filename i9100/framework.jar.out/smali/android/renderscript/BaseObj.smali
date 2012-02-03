.class Landroid/renderscript/BaseObj;
.super Ljava/lang/Object;
.source "BaseObj.java"


# instance fields
.field mDestroyed:Z

.field mID:I

.field mName:Ljava/lang/String;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/renderscript/RenderScript;->validate()V

    .line 29
    iput-object p1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 30
    iput v0, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 31
    iput-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 32
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object already destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 81
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nObjDestroy(I)V

    .line 82
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 64
    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nObjDestroyOOB(I)V

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/BaseObj;->mID:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/renderscript/BaseObj;->mDestroyed:Z

    .line 73
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 74
    return-void
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Landroid/renderscript/BaseObj;->mID:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 46
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "setName does not accept a zero length string."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_0
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "setName object already has a name."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_1
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 54
    .local v0, bytes:[B
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    iget v3, p0, Landroid/renderscript/BaseObj;->mID:I

    invoke-virtual {v2, v3, v0}, Landroid/renderscript/RenderScript;->nAssignName(I[B)V

    .line 55
    iput-object p1, p0, Landroid/renderscript/BaseObj;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 56
    .end local v0           #bytes:[B
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 57
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

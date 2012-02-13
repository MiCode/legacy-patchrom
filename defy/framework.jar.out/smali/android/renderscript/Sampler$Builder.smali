.class public Landroid/renderscript/Sampler$Builder;
.super Ljava/lang/Object;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mMag:Landroid/renderscript/Sampler$Value;

.field mMin:Landroid/renderscript/Sampler$Value;

.field mRS:Landroid/renderscript/RenderScript;

.field mWrapR:Landroid/renderscript/Sampler$Value;

.field mWrapS:Landroid/renderscript/Sampler$Value;

.field mWrapT:Landroid/renderscript/Sampler$Value;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    iput-object v0, p0, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/Sampler$Builder;)Landroid/renderscript/Sampler;
    .locals 4
    .parameter "rs"
    .parameter "b"

    .prologue
    const-class v1, Landroid/renderscript/Sampler$Builder;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nSamplerBegin()V

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    iget v3, v3, Landroid/renderscript/Sampler$Value;->mID:I

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nSamplerSet(II)V

    const/4 v2, 0x1

    iget-object v3, p1, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    iget v3, v3, Landroid/renderscript/Sampler$Value;->mID:I

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nSamplerSet(II)V

    const/4 v2, 0x2

    iget-object v3, p1, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    iget v3, v3, Landroid/renderscript/Sampler$Value;->mID:I

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nSamplerSet(II)V

    const/4 v2, 0x3

    iget-object v3, p1, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    iget v3, v3, Landroid/renderscript/Sampler$Value;->mID:I

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nSamplerSet(II)V

    const/4 v2, 0x4

    iget-object v3, p1, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    iget v3, v3, Landroid/renderscript/Sampler$Value;->mID:I

    invoke-virtual {p0, v2, v3}, Landroid/renderscript/RenderScript;->nSamplerSet(II)V

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nSamplerCreate()I

    move-result v0

    .local v0, id:I
    new-instance v2, Landroid/renderscript/Sampler;

    invoke-direct {v2, v0, p0}, Landroid/renderscript/Sampler;-><init>(ILandroid/renderscript/RenderScript;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    .end local v0           #id:I
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method


# virtual methods
.method public create()Landroid/renderscript/Sampler;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v0, p0, Landroid/renderscript/Sampler$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v0, p0}, Landroid/renderscript/Sampler$Builder;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/Sampler$Builder;)Landroid/renderscript/Sampler;

    move-result-object v0

    return-object v0
.end method

.method public setMag(Landroid/renderscript/Sampler$Value;)V
    .locals 2
    .parameter "v"

    .prologue
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_1

    :cond_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mMag:Landroid/renderscript/Sampler$Value;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMin(Landroid/renderscript/Sampler$Value;)V
    .locals 2
    .parameter "v"

    .prologue
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_1

    :cond_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mMin:Landroid/renderscript/Sampler$Value;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrapR(Landroid/renderscript/Sampler$Value;)V
    .locals 2
    .parameter "v"

    .prologue
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_1

    :cond_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mWrapR:Landroid/renderscript/Sampler$Value;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrapS(Landroid/renderscript/Sampler$Value;)V
    .locals 2
    .parameter "v"

    .prologue
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_1

    :cond_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mWrapS:Landroid/renderscript/Sampler$Value;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrapT(Landroid/renderscript/Sampler$Value;)V
    .locals 2
    .parameter "v"

    .prologue
    sget-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    if-ne p1, v0, :cond_1

    :cond_0
    iput-object p1, p0, Landroid/renderscript/Sampler$Builder;->mWrapT:Landroid/renderscript/Sampler$Value;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

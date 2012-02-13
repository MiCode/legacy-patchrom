.class public Landroid/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScript$MessageThread;,
        Landroid/renderscript/RenderScript$Priority;,
        Landroid/renderscript/RenderScript$RSMessage;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final LOG_ENABLED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field protected static sInitialized:Z


# instance fields
.field protected mContext:I

.field protected mDev:I

.field mElement_A_8:Landroid/renderscript/Element;

.field mElement_COLOR_F32_4:Landroid/renderscript/Element;

.field mElement_COLOR_U8_4:Landroid/renderscript/Element;

.field mElement_INDEX_16:Landroid/renderscript/Element;

.field mElement_NORMAL_3:Landroid/renderscript/Element;

.field mElement_POSITION_2:Landroid/renderscript/Element;

.field mElement_POSITION_3:Landroid/renderscript/Element;

.field mElement_RGBA_4444:Landroid/renderscript/Element;

.field mElement_RGBA_5551:Landroid/renderscript/Element;

.field mElement_RGBA_8888:Landroid/renderscript/Element;

.field mElement_RGB_565:Landroid/renderscript/Element;

.field mElement_RGB_888:Landroid/renderscript/Element;

.field mElement_TEXTURE_2:Landroid/renderscript/Element;

.field mElement_USER_F32:Landroid/renderscript/Element;

.field mElement_USER_I16:Landroid/renderscript/Element;

.field mElement_USER_I32:Landroid/renderscript/Element;

.field mElement_USER_I8:Landroid/renderscript/Element;

.field mElement_USER_U16:Landroid/renderscript/Element;

.field mElement_USER_U32:Landroid/renderscript/Element;

.field mElement_USER_U8:Landroid/renderscript/Element;

.field public mMessageCallback:Landroid/renderscript/RenderScript$RSMessage;

.field protected mMessageThread:Landroid/renderscript/RenderScript$MessageThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    sput-boolean v1, Landroid/renderscript/RenderScript;->sInitialized:Z

    :try_start_0
    const-string v1, "rs_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/renderscript/RenderScript;->_nInit()V

    const/4 v1, 0x1

    sput-boolean v1, Landroid/renderscript/RenderScript;->sInitialized:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "RenderScript_jni"

    const-string v2, "RenderScript JNI library not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessage;

    return-void
.end method

.method protected static native _nInit()V
.end method

.method public static create()Landroid/renderscript/RenderScript;
    .locals 3

    .prologue
    new-instance v0, Landroid/renderscript/RenderScript;

    invoke-direct {v0}, Landroid/renderscript/RenderScript;-><init>()V

    .local v0, rs:Landroid/renderscript/RenderScript;
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->nDeviceCreate()I

    move-result v1

    iput v1, v0, Landroid/renderscript/RenderScript;->mDev:I

    iget v1, v0, Landroid/renderscript/RenderScript;->mDev:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nContextCreate(II)I

    move-result v1

    iput v1, v0, Landroid/renderscript/RenderScript;->mContext:I

    new-instance v1, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {v1, v0}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v1, v0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    iget-object v1, v0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    invoke-static {v0}, Landroid/renderscript/Element;->initPredefined(Landroid/renderscript/RenderScript;)V

    return-object v0
.end method


# virtual methods
.method public contextDump(I)V
    .locals 0
    .parameter "bits"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->nContextDump(I)V

    return-void
.end method

.method public contextSetPriority(Landroid/renderscript/RenderScript$Priority;)V
    .locals 1
    .parameter "p"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p1, Landroid/renderscript/RenderScript$Priority;->mID:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextSetPriority(I)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextDeinitToClient()V

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    iput-boolean v1, v0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDestroy(I)V

    iput v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    iget v0, p0, Landroid/renderscript/RenderScript;->mDev:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nDeviceDestroy(I)V

    iput v1, p0, Landroid/renderscript/RenderScript;->mDev:I

    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method native nAdapter1DBindAllocation(II)V
.end method

.method native nAdapter1DCreate()I
.end method

.method native nAdapter1DData(I[F)V
.end method

.method native nAdapter1DData(I[I)V
.end method

.method native nAdapter1DSetConstraint(III)V
.end method

.method native nAdapter1DSubData(III[F)V
.end method

.method native nAdapter1DSubData(III[I)V
.end method

.method native nAdapter2DBindAllocation(II)V
.end method

.method native nAdapter2DCreate()I
.end method

.method native nAdapter2DData(I[F)V
.end method

.method native nAdapter2DData(I[I)V
.end method

.method native nAdapter2DSetConstraint(III)V
.end method

.method native nAdapter2DSubData(IIIII[F)V
.end method

.method native nAdapter2DSubData(IIIII[I)V
.end method

.method native nAllocationCreateBitmapRef(ILandroid/graphics/Bitmap;)I
.end method

.method native nAllocationCreateFromAssetStream(IZI)I
.end method

.method native nAllocationCreateFromBitmap(IZLandroid/graphics/Bitmap;)I
.end method

.method native nAllocationCreateFromBitmapBoxed(IZLandroid/graphics/Bitmap;)I
.end method

.method native nAllocationCreateTyped(I)I
.end method

.method native nAllocationRead(I[F)V
.end method

.method native nAllocationRead(I[I)V
.end method

.method native nAllocationSubData1D(III[BI)V
.end method

.method native nAllocationSubData1D(III[FI)V
.end method

.method native nAllocationSubData1D(III[II)V
.end method

.method native nAllocationSubData1D(III[SI)V
.end method

.method native nAllocationSubData2D(IIIII[FI)V
.end method

.method native nAllocationSubData2D(IIIII[II)V
.end method

.method native nAllocationSubDataFromObject(ILandroid/renderscript/Type;ILjava/lang/Object;)V
.end method

.method native nAllocationSubReadFromObject(ILandroid/renderscript/Type;ILjava/lang/Object;)V
.end method

.method native nAllocationUploadToBufferObject(I)V
.end method

.method native nAllocationUploadToTexture(IZI)V
.end method

.method native nAnimationAdd(F[F)V
.end method

.method native nAnimationBegin(II)V
.end method

.method native nAnimationCreate()I
.end method

.method native nAssignName(I[B)V
.end method

.method native nContextBindProgramFragment(I)V
.end method

.method native nContextBindProgramFragmentStore(I)V
.end method

.method native nContextBindProgramRaster(I)V
.end method

.method native nContextBindProgramVertex(I)V
.end method

.method native nContextBindRootScript(I)V
.end method

.method native nContextBindSampler(II)V
.end method

.method native nContextCreate(II)I
.end method

.method native nContextCreateGL(IIZ)I
.end method

.method native nContextDeinitToClient()V
.end method

.method native nContextDestroy(I)V
.end method

.method native nContextDump(I)V
.end method

.method native nContextGetMessage([IZ)I
.end method

.method native nContextInitToClient()V
.end method

.method native nContextPause()V
.end method

.method native nContextResume()V
.end method

.method native nContextSetPriority(I)V
.end method

.method native nContextSetSurface(IILandroid/view/Surface;)V
.end method

.method native nDeviceCreate()I
.end method

.method native nDeviceDestroy(I)V
.end method

.method native nDeviceSetConfig(III)V
.end method

.method native nElementCreate(IIZI)I
.end method

.method native nElementCreate2([I[Ljava/lang/String;)I
.end method

.method native nFileOpen([B)I
.end method

.method native nInitElements(IIII)V
.end method

.method native nLightBegin()V
.end method

.method native nLightCreate()I
.end method

.method native nLightSetColor(IFFF)V
.end method

.method native nLightSetIsLocal(Z)V
.end method

.method native nLightSetIsMono(Z)V
.end method

.method native nLightSetPosition(IFFF)V
.end method

.method native nObjDestroy(I)V
.end method

.method native nObjDestroyOOB(I)V
.end method

.method native nProgramBindConstants(III)V
.end method

.method native nProgramBindSampler(III)V
.end method

.method native nProgramBindTexture(III)V
.end method

.method native nProgramFragmentCreate([I)I
.end method

.method native nProgramFragmentCreate2(Ljava/lang/String;[I)I
.end method

.method native nProgramFragmentStoreBegin(II)V
.end method

.method native nProgramFragmentStoreBlendFunc(II)V
.end method

.method native nProgramFragmentStoreColorMask(ZZZZ)V
.end method

.method native nProgramFragmentStoreCreate()I
.end method

.method native nProgramFragmentStoreDepthFunc(I)V
.end method

.method native nProgramFragmentStoreDepthMask(Z)V
.end method

.method native nProgramFragmentStoreDither(Z)V
.end method

.method native nProgramRasterCreate(IIZZZ)I
.end method

.method native nProgramRasterSetLineWidth(IF)V
.end method

.method native nProgramRasterSetPointSize(IF)V
.end method

.method native nProgramVertexCreate(Z)I
.end method

.method native nProgramVertexCreate2(Ljava/lang/String;[I)I
.end method

.method native nSamplerBegin()V
.end method

.method native nSamplerCreate()I
.end method

.method native nSamplerSet(II)V
.end method

.method native nScriptBindAllocation(III)V
.end method

.method native nScriptCAddDefineF(Ljava/lang/String;F)V
.end method

.method native nScriptCAddDefineI32(Ljava/lang/String;I)V
.end method

.method native nScriptCBegin()V
.end method

.method native nScriptCCreate()I
.end method

.method native nScriptCSetScript([BII)V
.end method

.method native nScriptInvoke(II)V
.end method

.method native nScriptSetClearColor(IFFFF)V
.end method

.method native nScriptSetClearDepth(IF)V
.end method

.method native nScriptSetClearStencil(II)V
.end method

.method native nScriptSetInvokable(Ljava/lang/String;I)V
.end method

.method native nScriptSetRoot(Z)V
.end method

.method native nScriptSetTimeZone(I[B)V
.end method

.method native nScriptSetType(IZLjava/lang/String;I)V
.end method

.method native nSimpleMeshBindIndex(II)V
.end method

.method native nSimpleMeshBindVertex(III)V
.end method

.method native nSimpleMeshCreate(II[II)I
.end method

.method native nTypeAdd(II)V
.end method

.method native nTypeBegin(I)V
.end method

.method native nTypeCreate()I
.end method

.method native nTypeFinalDestroy(Landroid/renderscript/Type;)V
.end method

.method native nTypeSetupFields(Landroid/renderscript/Type;[I[I[Ljava/lang/reflect/Field;)V
.end method

.method protected safeID(Landroid/renderscript/BaseObj;)I
    .locals 1
    .parameter "o"

    .prologue
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/renderscript/BaseObj;->mID:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method validate()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

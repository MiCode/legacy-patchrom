.class Landroid/opengl/GLErrorWrapper;
.super Landroid/opengl/GLWrapperBase;
.source "GLErrorWrapper.java"


# instance fields
.field mCheckError:Z

.field mCheckThread:Z

.field mOurThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;I)V
    .locals 3
    .parameter "gl"
    .parameter "configFlags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLWrapperBase;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/opengl/GLErrorWrapper;->mCheckError:Z

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/opengl/GLErrorWrapper;->mCheckThread:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private checkError()V
    .locals 2

    .prologue
    iget-boolean v1, p0, Landroid/opengl/GLErrorWrapper;->mCheckError:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .local v0, glError:I
    if-eqz v0, :cond_0

    new-instance v1, Landroid/opengl/GLException;

    invoke-direct {v1, v0}, Landroid/opengl/GLException;-><init>(I)V

    throw v1

    .end local v0           #glError:I
    :cond_0
    return-void
.end method

.method private checkThread()V
    .locals 4

    .prologue
    iget-boolean v1, p0, Landroid/opengl/GLErrorWrapper;->mCheckThread:Z

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, currentThread:Ljava/lang/Thread;
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    iput-object v0, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    .end local v0           #currentThread:Ljava/lang/Thread;
    :cond_0
    return-void

    .restart local v0       #currentThread:Ljava/lang/Thread;
    :cond_1
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/opengl/GLException;

    const/16 v2, 0x7000

    const-string v3, "OpenGL method called from wrong thread."

    invoke-direct {v1, v2, v3}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1
    .parameter "texture"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1
    .parameter "func"
    .parameter "ref"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1
    .parameter "func"
    .parameter "ref"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1
    .parameter "target"
    .parameter "buffer"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glBindTexture(II)V
    .locals 1
    .parameter "target"
    .parameter "texture"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glBlendFunc(II)V
    .locals 1
    .parameter "sfactor"
    .parameter "dfactor"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1
    .parameter "target"
    .parameter "size"
    .parameter "data"
    .parameter "usage"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "target"
    .parameter "offset"
    .parameter "size"
    .parameter "data"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClear(I)V
    .locals 1
    .parameter "mask"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1
    .parameter "depth"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1
    .parameter "depth"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClearStencil(I)V
    .locals 1
    .parameter "s"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1
    .parameter "texture"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "plane"
    .parameter "equation"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 1
    .parameter "plane"
    .parameter "equation"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "plane"
    .parameter "equation"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 1
    .parameter "plane"
    .parameter "equation"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4ub(BBBB)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glColor4x(IIII)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glColorPointer(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 9
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "width"
    .parameter "height"
    .parameter "border"
    .parameter "imageSize"
    .parameter "data"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .parameter "target"
    .parameter "level"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "imageSize"
    .parameter "data"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 9
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "border"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 9
    .parameter "target"
    .parameter "level"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glCullFace(I)V
    .locals 1
    .parameter "mode"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glCurrentPaletteMatrixOES(I)V
    .locals 1
    .parameter "matrixpaletteindex"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glCurrentPaletteMatrixOES(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "buffers"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteBuffers(I[II)V
    .locals 1
    .parameter "n"
    .parameter "buffers"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "textures"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1
    .parameter "func"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1
    .parameter "near"
    .parameter "far"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1
    .parameter "near"
    .parameter "far"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDisable(I)V
    .locals 1
    .parameter "cap"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDisableClientState(I)V
    .locals 1
    .parameter "array"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawArrays(III)V
    .locals 1
    .parameter "mode"
    .parameter "first"
    .parameter "count"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 1
    .parameter "mode"
    .parameter "count"
    .parameter "type"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "mode"
    .parameter "count"
    .parameter "type"
    .parameter "indices"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfOES(FFFFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glEnable(I)V
    .locals 1
    .parameter "cap"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glEnableClientState(I)V
    .locals 1
    .parameter "array"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFinish()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFlush()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFogf(IF)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFogx(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFogxv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFrontFace(I)V
    .locals 1
    .parameter "mode"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 7
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 7
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "buffers"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 1
    .parameter "n"
    .parameter "buffers"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "textures"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 1
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(I[ZI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "eqn"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "eqn"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "eqn"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanex(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "eqn"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetError()I
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .local v0, result:I
    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetFixedv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetFloatv(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetLightfv(II[FI)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetLightxv(II[II)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialxv(II[II)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetPointerv(I[Ljava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, result:Ljava/lang/String;
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-object v0
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "env"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnviv(II[II)V
    .locals 1
    .parameter "env"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "env"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnvxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 1
    .parameter "env"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnvxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameteriv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glHint(II)V
    .locals 1
    .parameter "target"
    .parameter "mode"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 2
    .parameter "buffer"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsBuffer(I)Z

    move-result v0

    .local v0, valid:Z
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return v0
.end method

.method public glIsEnabled(I)Z
    .locals 2
    .parameter "cap"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsEnabled(I)Z

    move-result v0

    .local v0, valid:Z
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return v0
.end method

.method public glIsTexture(I)Z
    .locals 2
    .parameter "texture"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsTexture(I)Z

    move-result v0

    .local v0, valid:Z
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return v0
.end method

.method public glLightModelf(IF)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightModelx(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightf(IIF)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightx(III)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightxv(II[II)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLineWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1
    .parameter "width"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1
    .parameter "m"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 1
    .parameter "m"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadPaletteFromModelViewMatrixOES()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11Ext;->glLoadPaletteFromModelViewMatrixOES()V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLogicOp(I)V
    .locals 1
    .parameter "opcode"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMaterialx(III)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMatrixIndexPointerOES(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMatrixMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1
    .parameter "m"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 1
    .parameter "m"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 6
    .parameter "target"
    .parameter "s"
    .parameter "t"
    .parameter "r"
    .parameter "q"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 6
    .parameter "target"
    .parameter "s"
    .parameter "t"
    .parameter "r"
    .parameter "q"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1
    .parameter "nx"
    .parameter "ny"
    .parameter "nz"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glNormal3x(III)V
    .locals 1
    .parameter "nx"
    .parameter "ny"
    .parameter "nz"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glNormalPointer(III)V
    .locals 1
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 1
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 7
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 7
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterf(IF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterfv(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterx(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterx(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterxv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 1
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointSizePointerOES(IILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointSizex(I)V
    .locals 1
    .parameter "size"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1
    .parameter "factor"
    .parameter "units"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1
    .parameter "factor"
    .parameter "units"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 2
    .parameter "mantissa"
    .parameter "exponent"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    .local v0, valid:I
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return v0
.end method

.method public glQueryMatrixxOES([II[II)I
    .locals 2
    .parameter "mantissa"
    .parameter "mantissaOffset"
    .parameter "exponent"
    .parameter "exponentOffset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    move-result v0

    .local v0, valid:I
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return v0
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "type"
    .parameter "pixels"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1
    .parameter "value"
    .parameter "invert"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1
    .parameter "value"
    .parameter "invert"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glScalef(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glScalex(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glScissor(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glShadeModel(I)V
    .locals 1
    .parameter "mode"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1
    .parameter "func"
    .parameter "ref"
    .parameter "mask"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glStencilMask(I)V
    .locals 1
    .parameter "mask"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glStencilOp(III)V
    .locals 1
    .parameter "fail"
    .parameter "zfail"
    .parameter "zpass"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvi(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvi(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnviv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvx(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "width"
    .parameter "height"
    .parameter "border"
    .parameter "format"
    .parameter "type"
    .parameter "pixels"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterfv(II[FI)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterx(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterxv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .parameter "target"
    .parameter "level"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "type"
    .parameter "pixels"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTranslatex(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glVertexPointer(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glViewport(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glWeightPointerOES(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glWeightPointerOES(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

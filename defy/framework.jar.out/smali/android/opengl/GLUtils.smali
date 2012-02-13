.class public final Landroid/opengl/GLUtils;
.super Ljava/lang/Object;
.source "GLUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/opengl/GLUtils;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInternalFormat(Landroid/graphics/Bitmap;)I
    .locals 3
    .parameter "bitmap"

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "getInternalFormat can\'t be used with a null Bitmap"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0}, Landroid/opengl/GLUtils;->native_getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v0

    .local v0, result:I
    if-gez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown internalformat"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return v0
.end method

.method public static getType(Landroid/graphics/Bitmap;)I
    .locals 3
    .parameter "bitmap"

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "getType can\'t be used with a null Bitmap"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0}, Landroid/opengl/GLUtils;->native_getType(Landroid/graphics/Bitmap;)I

    move-result v0

    .local v0, result:I
    if-gez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native native_getInternalFormat(Landroid/graphics/Bitmap;)I
.end method

.method private static native native_getType(Landroid/graphics/Bitmap;)I
.end method

.method private static native native_texImage2D(IIILandroid/graphics/Bitmap;II)I
.end method

.method private static native native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I
.end method

.method public static texImage2D(IIILandroid/graphics/Bitmap;I)V
    .locals 6
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "bitmap"
    .parameter "border"

    .prologue
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "texImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v4, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static texImage2D(IIILandroid/graphics/Bitmap;II)V
    .locals 2
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "bitmap"
    .parameter "type"
    .parameter "border"

    .prologue
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "texImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static/range {p0 .. p5}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static texImage2D(IILandroid/graphics/Bitmap;I)V
    .locals 6
    .parameter "target"
    .parameter "level"
    .parameter "bitmap"
    .parameter "border"

    .prologue
    const/4 v2, -0x1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "texImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, p0

    move v1, p1

    move-object v3, p2

    move v4, v2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static texSubImage2D(IIIILandroid/graphics/Bitmap;)V
    .locals 7
    .parameter "target"
    .parameter "level"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "bitmap"

    .prologue
    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "texSubImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    .local v6, type:I
    const/4 v5, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    .locals 2
    .parameter "target"
    .parameter "level"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "bitmap"
    .parameter "format"
    .parameter "type"

    .prologue
    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "texSubImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static/range {p0 .. p6}, Landroid/opengl/GLUtils;->native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

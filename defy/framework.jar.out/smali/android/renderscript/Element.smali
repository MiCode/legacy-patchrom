.class public Landroid/renderscript/Element;
.super Landroid/renderscript/BaseObj;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Element$Builder;,
        Landroid/renderscript/Element$DataKind;,
        Landroid/renderscript/Element$DataType;
    }
.end annotation


# instance fields
.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/renderscript/Element;

.field mKind:Landroid/renderscript/Element$DataKind;

.field mNormalized:Z

.field mSize:I

.field mType:Landroid/renderscript/Element$DataType;

.field mVectorSize:I


# direct methods
.method constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V
    .locals 2
    .parameter "rs"
    .parameter "dt"
    .parameter "dk"
    .parameter "norm"
    .parameter "size"

    .prologue
    invoke-direct {p0, p1}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    iget v0, p2, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p5

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    iput-object p2, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iput-object p3, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    iput-boolean p4, p0, Landroid/renderscript/Element;->mNormalized:Z

    iput p5, p0, Landroid/renderscript/Element;->mVectorSize:I

    iget v0, p2, Landroid/renderscript/Element$DataType;->mID:I

    iget v1, p3, Landroid/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v0

    iput v0, p0, Landroid/renderscript/BaseObj;->mID:I

    return-void
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;)V
    .locals 4
    .parameter "rs"
    .parameter "e"
    .parameter "n"

    .prologue
    invoke-direct {p0, p1}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    const/4 v2, 0x0

    iput v2, p0, Landroid/renderscript/Element;->mSize:I

    iput-object p2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    iput-object p3, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v2, v2

    new-array v1, v2, [I

    .local v1, ids:[I
    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget v2, p0, Landroid/renderscript/Element;->mSize:I

    iget-object v3, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/renderscript/Element;->mSize:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/renderscript/Element;->mSize:I

    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/renderscript/BaseObj;->mID:I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/renderscript/RenderScript;->nElementCreate2([I[Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/renderscript/BaseObj;->mID:I

    return-void
.end method

.method public static ATTRIB_COLOR_F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_COLOR_F32_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->COLOR:Landroid/renderscript/Element$DataKind;

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_COLOR_F32_4:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_COLOR_F32_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static ATTRIB_COLOR_U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_COLOR_U8_4:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->COLOR:Landroid/renderscript/Element$DataKind;

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_COLOR_U8_4:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_COLOR_U8_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static ATTRIB_NORMAL_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_NORMAL_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->NORMAL:Landroid/renderscript/Element$DataKind;

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_NORMAL_3:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_NORMAL_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static ATTRIB_POSITION_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_POSITION_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->POSITION:Landroid/renderscript/Element$DataKind;

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_POSITION_2:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_POSITION_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static ATTRIB_POSITION_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_POSITION_3:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->POSITION:Landroid/renderscript/Element$DataKind;

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_POSITION_3:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_POSITION_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static ATTRIB_TEXTURE_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TEXTURE_2:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->TEXTURE:Landroid/renderscript/Element$DataKind;

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Element;->createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TEXTURE_2:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TEXTURE_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static INDEX_16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INDEX_16:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/renderscript/Element;->createIndex(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INDEX_16:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INDEX_16:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_5551(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static RGB_888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 2
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static USER_F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_F32:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_F32:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_F32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static USER_I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_I32:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_I32:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_I32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static USER_I8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_I8:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_I8:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_I8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static USER_U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_U32:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_U32:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_U32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static USER_U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 1
    .parameter "rs"

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_U8:Landroid/renderscript/Element;

    if-nez v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_U8:Landroid/renderscript/Element;

    :cond_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USER_U8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static createAttrib(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;I)Landroid/renderscript/Element;
    .locals 6
    .parameter "rs"
    .parameter "dt"
    .parameter "dk"
    .parameter "size"

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x4

    const/4 v1, 0x1

    const-string v2, "Bad combo"

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported DataType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Landroid/renderscript/Element$DataKind;->COLOR:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataKind;->POSITION:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataKind;->TEXTURE:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataKind;->NORMAL:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataKind;->POINT_SIZE:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported DataKind"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Landroid/renderscript/Element$DataKind;->COLOR:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_4

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_2

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_3

    :cond_2
    if-lt p3, v5, :cond_3

    if-le p3, v3, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Landroid/renderscript/Element$DataKind;->POSITION:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_6

    if-lt p3, v1, :cond_5

    if-le p3, v3, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sget-object v0, Landroid/renderscript/Element$DataKind;->TEXTURE:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_8

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_7

    if-lt p3, v1, :cond_7

    if-le p3, v3, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    sget-object v0, Landroid/renderscript/Element$DataKind;->NORMAL:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_a

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_9

    if-eq p3, v5, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    sget-object v0, Landroid/renderscript/Element$DataKind;->POINT_SIZE:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_c

    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_b

    if-eq p3, v1, :cond_c

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v4, 0x0

    .local v4, norm:Z
    sget-object v0, Landroid/renderscript/Element$DataKind;->COLOR:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_d

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_d

    const/4 v4, 0x1

    :cond_d
    new-instance v0, Landroid/renderscript/Element;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Element;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method public static createFromClass(Landroid/renderscript/RenderScript;Ljava/lang/Class;)Landroid/renderscript/Element;
    .locals 9
    .parameter "rs"
    .parameter "c"

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .local v4, fields:[Ljava/lang/reflect/Field;
    new-instance v1, Landroid/renderscript/Element$Builder;

    invoke-direct {v1, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .local v1, b:Landroid/renderscript/Element$Builder;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v2, v0, v5

    .local v2, f:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .local v3, fc:Ljava/lang/Class;
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_0

    sget-object v7, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v7}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_1

    sget-object v7, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v7}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_2

    sget-object v7, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v7}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v7, :cond_3

    sget-object v7, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v7}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unkown field type"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2           #f:Ljava/lang/reflect/Field;
    .end local v3           #fc:Ljava/lang/Class;
    :cond_4
    invoke-virtual {v1}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v7

    return-object v7
.end method

.method public static createIndex(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 6
    .parameter "rs"

    .prologue
    new-instance v0, Landroid/renderscript/Element;

    sget-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    sget-object v3, Landroid/renderscript/Element$DataKind;->INDEX:Landroid/renderscript/Element$DataKind;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Element;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method public static createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;
    .locals 6
    .parameter "rs"
    .parameter "dt"
    .parameter "dk"

    .prologue
    const-string v2, "Bad kind and type combo"

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_0

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported DataKind"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported DataType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_2

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad kind and type combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_3

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad kind and type combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_4

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad kind and type combo"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v5, 0x1

    .local v5, size:I
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_5

    const/4 v5, 0x2

    :cond_5
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_6

    const/4 v5, 0x3

    :cond_6
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_7

    const/4 v5, 0x4

    :cond_7
    new-instance v0, Landroid/renderscript/Element;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Element;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method public static createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;
    .locals 6
    .parameter "rs"
    .parameter "dt"

    .prologue
    new-instance v0, Landroid/renderscript/Element;

    sget-object v3, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Element;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method public static createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;
    .locals 6
    .parameter "rs"
    .parameter "dt"
    .parameter "size"

    .prologue
    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/4 v0, 0x4

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/renderscript/Element;

    sget-object v3, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Element;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method static initPredefined(Landroid/renderscript/RenderScript;)V
    .locals 8
    .parameter "rs"

    .prologue
    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    iget v4, v4, Landroid/renderscript/Element$DataType;->mID:I

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    iget v5, v5, Landroid/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v4, v5, v7, v7}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v0

    .local v0, a8:I
    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    iget v4, v4, Landroid/renderscript/Element$DataType;->mID:I

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    iget v5, v5, Landroid/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v4, v5, v7, v6}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v2

    .local v2, rgba4444:I
    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    iget v4, v4, Landroid/renderscript/Element$DataType;->mID:I

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    iget v5, v5, Landroid/renderscript/Element$DataKind;->mID:I

    invoke-virtual {p0, v4, v5, v7, v6}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v3

    .local v3, rgba8888:I
    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    iget v4, v4, Landroid/renderscript/Element$DataType;->mID:I

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    iget v5, v5, Landroid/renderscript/Element$DataKind;->mID:I

    const/4 v6, 0x3

    invoke-virtual {p0, v4, v5, v7, v6}, Landroid/renderscript/RenderScript;->nElementCreate(IIZI)I

    move-result v1

    .local v1, rgb565:I
    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/renderscript/RenderScript;->nInitElements(IIII)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    return-void
.end method

.method public bridge synthetic getID()I
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/renderscript/BaseObj;->getID()I

    move-result v0

    return v0
.end method

.method getSizeBytes()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/renderscript/Element;->mSize:I

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
    invoke-super {p0, p1}, Landroid/renderscript/BaseObj;->setName(Ljava/lang/String;)V

    return-void
.end method

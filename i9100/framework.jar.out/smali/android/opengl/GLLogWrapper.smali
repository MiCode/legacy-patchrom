.class Landroid/opengl/GLLogWrapper;
.super Landroid/opengl/GLWrapperBase;
.source "GLLogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/GLLogWrapper$PointerInfo;
    }
.end annotation


# static fields
.field private static final FORMAT_FIXED:I = 0x2

.field private static final FORMAT_FLOAT:I = 0x1

.field private static final FORMAT_INT:I


# instance fields
.field private mArgCount:I

.field mColorArrayEnabled:Z

.field private mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field private mLog:Ljava/io/Writer;

.field private mLogArgumentNames:Z

.field mNormalArrayEnabled:Z

.field private mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field mStringBuilder:Ljava/lang/StringBuilder;

.field private mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field mTextureCoordArrayEnabled:Z

.field mVertexArrayEnabled:Z

.field private mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;Ljava/io/Writer;Z)V
    .locals 1
    .parameter "gl"
    .parameter "log"
    .parameter "logArgumentNames"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/opengl/GLWrapperBase;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    .line 3511
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 3512
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 3513
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 3514
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 45
    iput-object p2, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    .line 46
    iput-boolean p3, p0, Landroid/opengl/GLLogWrapper;->mLogArgumentNames:Z

    .line 47
    return-void
.end method

.method static synthetic access$000(Landroid/opengl/GLLogWrapper;ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private arg(Ljava/lang/String;F)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 106
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private arg(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "name"
    .parameter "n"
    .parameter "buf"

    .prologue
    .line 231
    invoke-direct {p0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "name"
    .parameter "n"
    .parameter "buf"

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V
    .locals 1
    .parameter "name"
    .parameter "n"
    .parameter "buf"

    .prologue
    .line 239
    invoke-direct {p0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private arg(Ljava/lang/String;I[FI)V
    .locals 1
    .parameter "name"
    .parameter "n"
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 127
    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(I[FI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private arg(Ljava/lang/String;I[II)V
    .locals 1
    .parameter "name"
    .parameter "n"
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private arg(Ljava/lang/String;I[SI)V
    .locals 1
    .parameter "name"
    .parameter "n"
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 123
    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(I[SI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 75
    iget v0, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    if-lez v0, :cond_0

    .line 76
    const-string v0, ", "

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 78
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mLogArgumentNames:Z

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 81
    :cond_1
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private arg(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 98
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private argPointer(IIILjava/nio/Buffer;)V
    .locals 2
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 243
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 244
    const-string/jumbo v0, "type"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getPointerTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 246
    const-string/jumbo v0, "pointer"

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private begin(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    .line 72
    return-void
.end method

.method private bindArrays()V
    .locals 1

    .prologue
    .line 1142
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 1144
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 1146
    :cond_1
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    if-eqz v0, :cond_2

    .line 1147
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 1148
    :cond_2
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    if-eqz v0, :cond_3

    .line 1149
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    .line 1150
    :cond_3
    return-void
.end method

.method private checkError()V
    .locals 4

    .prologue
    .line 51
    iget-object v2, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v1

    .local v1, glError:I
    if-eqz v1, :cond_0

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, errorMessage:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->logLine(Ljava/lang/String;)V

    .line 55
    .end local v0           #errorMessage:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V
    .locals 14
    .parameter "builder"
    .parameter "enabled"
    .parameter "name"
    .parameter "pointer"
    .parameter "index"

    .prologue
    .line 1062
    if-nez p2, :cond_0

    .line 1122
    :goto_0
    return-void

    .line 1065
    :cond_0
    const-string v12, " "

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":{"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    move-object v12, v0

    if-nez v12, :cond_2

    .line 1068
    :cond_1
    const-string/jumbo v12, "undefined }"

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1071
    :cond_2
    move-object/from16 v0, p4

    iget v0, v0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    move v12, v0

    if-gez v12, :cond_3

    .line 1072
    const-string v12, "invalid stride"

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1076
    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/opengl/GLLogWrapper$PointerInfo;->getStride()I

    move-result v10

    .line 1077
    .local v10, stride:I
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    move-object v2, v0

    .line 1078
    .local v2, byteBuffer:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    move v8, v0

    .line 1079
    .local v8, size:I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    move v11, v0

    .line 1080
    .local v11, type:I
    move-object/from16 v0, p4

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/opengl/GLLogWrapper$PointerInfo;->sizeof(I)I

    move-result v9

    .line 1081
    .local v9, sizeofType:I
    mul-int v3, v10, p5

    .line 1082
    .local v3, byteOffset:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v8, :cond_5

    .line 1083
    if-lez v5, :cond_4

    .line 1084
    const-string v12, ", "

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    :cond_4
    sparse-switch v11, :sswitch_data_0

    .line 1116
    const-string v12, "?"

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    :goto_2
    add-int/2addr v3, v9

    .line 1082
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1088
    :sswitch_0
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 1089
    .local v4, d:B
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1093
    .end local v4           #d:B
    :sswitch_1
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 1094
    .restart local v4       #d:B
    and-int/lit16 v12, v4, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1098
    .end local v4           #d:B
    :sswitch_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v7

    .line 1099
    .local v7, shortBuffer:Ljava/nio/ShortBuffer;
    div-int/lit8 v12, v3, 0x2

    invoke-virtual {v7, v12}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    .line 1100
    .local v4, d:S
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1104
    .end local v4           #d:S
    .end local v7           #shortBuffer:Ljava/nio/ShortBuffer;
    :sswitch_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    .line 1105
    .local v6, intBuffer:Ljava/nio/IntBuffer;
    div-int/lit8 v12, v3, 0x4

    invoke-virtual {v6, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    .line 1106
    .local v4, d:I
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1110
    .end local v4           #d:I
    .end local v6           #intBuffer:Ljava/nio/IntBuffer;
    :sswitch_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 1111
    .local v6, intBuffer:Ljava/nio/FloatBuffer;
    div-int/lit8 v12, v3, 0x4

    invoke-virtual {v6, v12}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    .line 1112
    .local v4, d:F
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1121
    .end local v4           #d:F
    .end local v6           #intBuffer:Ljava/nio/FloatBuffer;
    :cond_5
    const-string/jumbo v12, "}"

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1086
    :sswitch_data_0
    .sparse-switch
        0x1400 -> :sswitch_0
        0x1401 -> :sswitch_1
        0x1402 -> :sswitch_2
        0x1406 -> :sswitch_4
        0x140c -> :sswitch_3
    .end sparse-switch
.end method

.method private doElement(Ljava/lang/StringBuilder;II)V
    .locals 6
    .parameter "builder"
    .parameter "ordinal"
    .parameter "vertexIndex"

    .prologue
    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    const-string/jumbo v3, "v"

    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    .line 1128
    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    const-string/jumbo v3, "n"

    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    .line 1130
    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    const-string v3, "c"

    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    .line 1132
    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    const-string/jumbo v3, "t"

    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    .line 1134
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    return-void
.end method

.method private end()V
    .locals 1

    .prologue
    .line 85
    const-string v0, ");\n"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->flush()V

    .line 87
    return-void
.end method

.method private endLogIndices()V
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 1171
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->unbindArrays()V

    .line 1172
    return-void
.end method

.method private flush()V
    .locals 2

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 93
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    goto :goto_0
.end method

.method private formattedAppend(Ljava/lang/StringBuilder;II)V
    .locals 2
    .parameter "buf"
    .parameter "value"
    .parameter "format"

    .prologue
    .line 131
    packed-switch p3, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 133
    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :pswitch_2
    int-to-float v0, p2

    const/high16 v1, 0x4780

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getBeginMode(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 587
    packed-switch p1, :pswitch_data_0

    .line 603
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 589
    :pswitch_0
    const-string v0, "GL_POINTS"

    goto :goto_0

    .line 591
    :pswitch_1
    const-string v0, "GL_LINES"

    goto :goto_0

    .line 593
    :pswitch_2
    const-string v0, "GL_LINE_LOOP"

    goto :goto_0

    .line 595
    :pswitch_3
    const-string v0, "GL_LINE_STRIP"

    goto :goto_0

    .line 597
    :pswitch_4
    const-string v0, "GL_TRIANGLES"

    goto :goto_0

    .line 599
    :pswitch_5
    const-string v0, "GL_TRIANGLE_STRIP"

    goto :goto_0

    .line 601
    :pswitch_6
    const-string v0, "GL_TRIANGLE_FAN"

    goto :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getCap(I)Ljava/lang/String;
    .locals 1
    .parameter "cap"

    .prologue
    .line 436
    sparse-switch p1, :sswitch_data_0

    .line 502
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 438
    :sswitch_0
    const-string v0, "GL_FOG"

    goto :goto_0

    .line 440
    :sswitch_1
    const-string v0, "GL_LIGHTING"

    goto :goto_0

    .line 442
    :sswitch_2
    const-string v0, "GL_TEXTURE_2D"

    goto :goto_0

    .line 444
    :sswitch_3
    const-string v0, "GL_CULL_FACE"

    goto :goto_0

    .line 446
    :sswitch_4
    const-string v0, "GL_ALPHA_TEST"

    goto :goto_0

    .line 448
    :sswitch_5
    const-string v0, "GL_BLEND"

    goto :goto_0

    .line 450
    :sswitch_6
    const-string v0, "GL_COLOR_LOGIC_OP"

    goto :goto_0

    .line 452
    :sswitch_7
    const-string v0, "GL_DITHER"

    goto :goto_0

    .line 454
    :sswitch_8
    const-string v0, "GL_STENCIL_TEST"

    goto :goto_0

    .line 456
    :sswitch_9
    const-string v0, "GL_DEPTH_TEST"

    goto :goto_0

    .line 458
    :sswitch_a
    const-string v0, "GL_LIGHT0"

    goto :goto_0

    .line 460
    :sswitch_b
    const-string v0, "GL_LIGHT1"

    goto :goto_0

    .line 462
    :sswitch_c
    const-string v0, "GL_LIGHT2"

    goto :goto_0

    .line 464
    :sswitch_d
    const-string v0, "GL_LIGHT3"

    goto :goto_0

    .line 466
    :sswitch_e
    const-string v0, "GL_LIGHT4"

    goto :goto_0

    .line 468
    :sswitch_f
    const-string v0, "GL_LIGHT5"

    goto :goto_0

    .line 470
    :sswitch_10
    const-string v0, "GL_LIGHT6"

    goto :goto_0

    .line 472
    :sswitch_11
    const-string v0, "GL_LIGHT7"

    goto :goto_0

    .line 474
    :sswitch_12
    const-string v0, "GL_POINT_SMOOTH"

    goto :goto_0

    .line 476
    :sswitch_13
    const-string v0, "GL_LINE_SMOOTH"

    goto :goto_0

    .line 478
    :sswitch_14
    const-string v0, "GL_COLOR_MATERIAL"

    goto :goto_0

    .line 480
    :sswitch_15
    const-string v0, "GL_NORMALIZE"

    goto :goto_0

    .line 482
    :sswitch_16
    const-string v0, "GL_RESCALE_NORMAL"

    goto :goto_0

    .line 484
    :sswitch_17
    const-string v0, "GL_VERTEX_ARRAY"

    goto :goto_0

    .line 486
    :sswitch_18
    const-string v0, "GL_NORMAL_ARRAY"

    goto :goto_0

    .line 488
    :sswitch_19
    const-string v0, "GL_COLOR_ARRAY"

    goto :goto_0

    .line 490
    :sswitch_1a
    const-string v0, "GL_TEXTURE_COORD_ARRAY"

    goto :goto_0

    .line 492
    :sswitch_1b
    const-string v0, "GL_MULTISAMPLE"

    goto :goto_0

    .line 494
    :sswitch_1c
    const-string v0, "GL_SAMPLE_ALPHA_TO_COVERAGE"

    goto :goto_0

    .line 496
    :sswitch_1d
    const-string v0, "GL_SAMPLE_ALPHA_TO_ONE"

    goto :goto_0

    .line 498
    :sswitch_1e
    const-string v0, "GL_SAMPLE_COVERAGE"

    goto :goto_0

    .line 500
    :sswitch_1f
    const-string v0, "GL_SCISSOR_TEST"

    goto :goto_0

    .line 436
    :sswitch_data_0
    .sparse-switch
        0xb10 -> :sswitch_12
        0xb20 -> :sswitch_13
        0xb44 -> :sswitch_3
        0xb50 -> :sswitch_1
        0xb57 -> :sswitch_14
        0xb60 -> :sswitch_0
        0xb71 -> :sswitch_9
        0xb90 -> :sswitch_8
        0xba1 -> :sswitch_15
        0xbc0 -> :sswitch_4
        0xbd0 -> :sswitch_7
        0xbe2 -> :sswitch_5
        0xbf2 -> :sswitch_6
        0xc11 -> :sswitch_1f
        0xde1 -> :sswitch_2
        0x4000 -> :sswitch_a
        0x4001 -> :sswitch_b
        0x4002 -> :sswitch_c
        0x4003 -> :sswitch_d
        0x4004 -> :sswitch_e
        0x4005 -> :sswitch_f
        0x4006 -> :sswitch_10
        0x4007 -> :sswitch_11
        0x803a -> :sswitch_16
        0x8074 -> :sswitch_17
        0x8075 -> :sswitch_18
        0x8076 -> :sswitch_19
        0x8078 -> :sswitch_1a
        0x809d -> :sswitch_1b
        0x809e -> :sswitch_1c
        0x809f -> :sswitch_1d
        0x80a0 -> :sswitch_1e
    .end sparse-switch
.end method

.method private getClearBufferMask(I)Ljava/lang/String;
    .locals 3
    .parameter "mask"

    .prologue
    const-string v2, " | "

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v0, b:Ljava/lang/StringBuilder;
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_0

    .line 277
    const-string v1, "GL_DEPTH_BUFFER_BIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    and-int/lit16 p1, p1, -0x101

    .line 280
    :cond_0
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_2

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 282
    const-string v1, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_1
    const-string v1, "GL_STENCIL_BUFFER_BIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    and-int/lit16 p1, p1, -0x401

    .line 287
    :cond_2
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_4

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 289
    const-string v1, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_3
    const-string v1, "GL_COLOR_BUFFER_BIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    and-int/lit16 p1, p1, -0x4001

    .line 294
    :cond_4
    if-eqz p1, :cond_6

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 296
    const-string v1, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_5
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getClientState(I)Ljava/lang/String;
    .locals 1
    .parameter "clientState"

    .prologue
    .line 421
    packed-switch p1, :pswitch_data_0

    .line 431
    :pswitch_0
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 423
    :pswitch_1
    const-string v0, "GL_COLOR_ARRAY"

    goto :goto_0

    .line 425
    :pswitch_2
    const-string v0, "GL_VERTEX_ARRAY"

    goto :goto_0

    .line 427
    :pswitch_3
    const-string v0, "GL_NORMAL_ARRAY"

    goto :goto_0

    .line 429
    :pswitch_4
    const-string v0, "GL_TEXTURE_COORD_ARRAY"

    goto :goto_0

    .line 421
    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 1
    .parameter "error"

    .prologue
    .line 254
    sparse-switch p0, :sswitch_data_0

    .line 270
    invoke-static {p0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 256
    :sswitch_0
    const-string v0, "GL_NO_ERROR"

    goto :goto_0

    .line 258
    :sswitch_1
    const-string v0, "GL_INVALID_ENUM"

    goto :goto_0

    .line 260
    :sswitch_2
    const-string v0, "GL_INVALID_VALUE"

    goto :goto_0

    .line 262
    :sswitch_3
    const-string v0, "GL_INVALID_OPERATION"

    goto :goto_0

    .line 264
    :sswitch_4
    const-string v0, "GL_STACK_OVERFLOW"

    goto :goto_0

    .line 266
    :sswitch_5
    const-string v0, "GL_STACK_UNDERFLOW"

    goto :goto_0

    .line 268
    :sswitch_6
    const-string v0, "GL_OUT_OF_MEMORY"

    goto :goto_0

    .line 254
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x500 -> :sswitch_1
        0x501 -> :sswitch_2
        0x502 -> :sswitch_3
        0x503 -> :sswitch_4
        0x504 -> :sswitch_5
        0x505 -> :sswitch_6
    .end sparse-switch
.end method

.method private getFaceName(I)Ljava/lang/String;
    .locals 1
    .parameter "face"

    .prologue
    .line 784
    packed-switch p1, :pswitch_data_0

    .line 788
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 786
    :pswitch_0
    const-string v0, "GL_FRONT_AND_BACK"

    goto :goto_0

    .line 784
    nop

    :pswitch_data_0
    .packed-switch 0x408
        :pswitch_0
    .end packed-switch
.end method

.method private getFactor(I)Ljava/lang/String;
    .locals 1
    .parameter "factor"

    .prologue
    .line 304
    sparse-switch p1, :sswitch_data_0

    .line 329
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 306
    :sswitch_0
    const-string v0, "GL_ZERO"

    goto :goto_0

    .line 308
    :sswitch_1
    const-string v0, "GL_ONE"

    goto :goto_0

    .line 310
    :sswitch_2
    const-string v0, "GL_SRC_COLOR"

    goto :goto_0

    .line 312
    :sswitch_3
    const-string v0, "GL_ONE_MINUS_SRC_COLOR"

    goto :goto_0

    .line 314
    :sswitch_4
    const-string v0, "GL_DST_COLOR"

    goto :goto_0

    .line 316
    :sswitch_5
    const-string v0, "GL_ONE_MINUS_DST_COLOR"

    goto :goto_0

    .line 318
    :sswitch_6
    const-string v0, "GL_SRC_ALPHA"

    goto :goto_0

    .line 320
    :sswitch_7
    const-string v0, "GL_ONE_MINUS_SRC_ALPHA"

    goto :goto_0

    .line 322
    :sswitch_8
    const-string v0, "GL_DST_ALPHA"

    goto :goto_0

    .line 324
    :sswitch_9
    const-string v0, "GL_ONE_MINUS_DST_ALPHA"

    goto :goto_0

    .line 326
    :sswitch_a
    const-string v0, "GL_SRC_ALPHA_SATURATE"

    goto :goto_0

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x300 -> :sswitch_2
        0x301 -> :sswitch_3
        0x302 -> :sswitch_6
        0x303 -> :sswitch_7
        0x304 -> :sswitch_8
        0x305 -> :sswitch_9
        0x306 -> :sswitch_4
        0x307 -> :sswitch_5
        0x308 -> :sswitch_a
    .end sparse-switch
.end method

.method private getFogPName(I)Ljava/lang/String;
    .locals 1
    .parameter "pname"

    .prologue
    .line 553
    packed-switch p1, :pswitch_data_0

    .line 565
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 555
    :pswitch_0
    const-string v0, "GL_FOG_DENSITY"

    goto :goto_0

    .line 557
    :pswitch_1
    const-string v0, "GL_FOG_START"

    goto :goto_0

    .line 559
    :pswitch_2
    const-string v0, "GL_FOG_END"

    goto :goto_0

    .line 561
    :pswitch_3
    const-string v0, "GL_FOG_MODE"

    goto :goto_0

    .line 563
    :pswitch_4
    const-string v0, "GL_FOG_COLOR"

    goto :goto_0

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0xb62
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getFogParamCount(I)I
    .locals 1
    .parameter "pname"

    .prologue
    const/4 v0, 0x1

    .line 570
    packed-switch p1, :pswitch_data_0

    .line 582
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 580
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0xb62
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getHex(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHintMode(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 771
    packed-switch p1, :pswitch_data_0

    .line 779
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 773
    :pswitch_0
    const-string v0, "GL_FASTEST"

    goto :goto_0

    .line 775
    :pswitch_1
    const-string v0, "GL_NICEST"

    goto :goto_0

    .line 777
    :pswitch_2
    const-string v0, "GL_DONT_CARE"

    goto :goto_0

    .line 771
    nop

    :pswitch_data_0
    .packed-switch 0x1100
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getHintTarget(I)Ljava/lang/String;
    .locals 1
    .parameter "target"

    .prologue
    .line 752
    sparse-switch p1, :sswitch_data_0

    .line 766
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 754
    :sswitch_0
    const-string v0, "GL_FOG_HINT"

    goto :goto_0

    .line 756
    :sswitch_1
    const-string v0, "GL_LINE_SMOOTH_HINT"

    goto :goto_0

    .line 758
    :sswitch_2
    const-string v0, "GL_PERSPECTIVE_CORRECTION_HINT"

    goto :goto_0

    .line 760
    :sswitch_3
    const-string v0, "GL_POINT_SMOOTH_HINT"

    goto :goto_0

    .line 762
    :sswitch_4
    const-string v0, "GL_POLYGON_SMOOTH_HINT"

    goto :goto_0

    .line 764
    :sswitch_5
    const-string v0, "GL_GENERATE_MIPMAP_HINT"

    goto :goto_0

    .line 752
    :sswitch_data_0
    .sparse-switch
        0xc50 -> :sswitch_2
        0xc51 -> :sswitch_3
        0xc52 -> :sswitch_1
        0xc53 -> :sswitch_4
        0xc54 -> :sswitch_0
        0x8192 -> :sswitch_5
    .end sparse-switch
.end method

.method private getIndexType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 608
    packed-switch p1, :pswitch_data_0

    .line 614
    :pswitch_0
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 610
    :pswitch_1
    const-string v0, "GL_UNSIGNED_SHORT"

    goto :goto_0

    .line 612
    :pswitch_2
    const-string v0, "GL_UNSIGNED_BYTE"

    goto :goto_0

    .line 608
    :pswitch_data_0
    .packed-switch 0x1401
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIntegerStateFormat(I)I
    .locals 1
    .parameter "pname"

    .prologue
    .line 740
    packed-switch p1, :pswitch_data_0

    .line 747
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 744
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 740
    nop

    :pswitch_data_0
    .packed-switch 0x898d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getIntegerStateName(I)Ljava/lang/String;
    .locals 1
    .parameter "pname"

    .prologue
    .line 619
    sparse-switch p1, :sswitch_data_0

    .line 673
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 621
    :sswitch_0
    const-string v0, "GL_ALPHA_BITS"

    goto :goto_0

    .line 623
    :sswitch_1
    const-string v0, "GL_ALIASED_LINE_WIDTH_RANGE"

    goto :goto_0

    .line 625
    :sswitch_2
    const-string v0, "GL_ALIASED_POINT_SIZE_RANGE"

    goto :goto_0

    .line 627
    :sswitch_3
    const-string v0, "GL_BLUE_BITS"

    goto :goto_0

    .line 629
    :sswitch_4
    const-string v0, "GL_COMPRESSED_TEXTURE_FORMATS"

    goto :goto_0

    .line 631
    :sswitch_5
    const-string v0, "GL_DEPTH_BITS"

    goto :goto_0

    .line 633
    :sswitch_6
    const-string v0, "GL_GREEN_BITS"

    goto :goto_0

    .line 635
    :sswitch_7
    const-string v0, "GL_MAX_ELEMENTS_INDICES"

    goto :goto_0

    .line 637
    :sswitch_8
    const-string v0, "GL_MAX_ELEMENTS_VERTICES"

    goto :goto_0

    .line 639
    :sswitch_9
    const-string v0, "GL_MAX_LIGHTS"

    goto :goto_0

    .line 641
    :sswitch_a
    const-string v0, "GL_MAX_TEXTURE_SIZE"

    goto :goto_0

    .line 643
    :sswitch_b
    const-string v0, "GL_MAX_VIEWPORT_DIMS"

    goto :goto_0

    .line 645
    :sswitch_c
    const-string v0, "GL_MAX_MODELVIEW_STACK_DEPTH"

    goto :goto_0

    .line 647
    :sswitch_d
    const-string v0, "GL_MAX_PROJECTION_STACK_DEPTH"

    goto :goto_0

    .line 649
    :sswitch_e
    const-string v0, "GL_MAX_TEXTURE_STACK_DEPTH"

    goto :goto_0

    .line 651
    :sswitch_f
    const-string v0, "GL_MAX_TEXTURE_UNITS"

    goto :goto_0

    .line 653
    :sswitch_10
    const-string v0, "GL_NUM_COMPRESSED_TEXTURE_FORMATS"

    goto :goto_0

    .line 655
    :sswitch_11
    const-string v0, "GL_RED_BITS"

    goto :goto_0

    .line 657
    :sswitch_12
    const-string v0, "GL_SMOOTH_LINE_WIDTH_RANGE"

    goto :goto_0

    .line 659
    :sswitch_13
    const-string v0, "GL_SMOOTH_POINT_SIZE_RANGE"

    goto :goto_0

    .line 661
    :sswitch_14
    const-string v0, "GL_STENCIL_BITS"

    goto :goto_0

    .line 663
    :sswitch_15
    const-string v0, "GL_SUBPIXEL_BITS"

    goto :goto_0

    .line 666
    :sswitch_16
    const-string v0, "GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES"

    goto :goto_0

    .line 668
    :sswitch_17
    const-string v0, "GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES"

    goto :goto_0

    .line 670
    :sswitch_18
    const-string v0, "GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES"

    goto :goto_0

    .line 619
    nop

    :sswitch_data_0
    .sparse-switch
        0xb12 -> :sswitch_13
        0xb22 -> :sswitch_12
        0xd31 -> :sswitch_9
        0xd33 -> :sswitch_a
        0xd36 -> :sswitch_c
        0xd38 -> :sswitch_d
        0xd39 -> :sswitch_e
        0xd3a -> :sswitch_b
        0xd50 -> :sswitch_15
        0xd52 -> :sswitch_11
        0xd53 -> :sswitch_6
        0xd54 -> :sswitch_3
        0xd55 -> :sswitch_0
        0xd56 -> :sswitch_5
        0xd57 -> :sswitch_14
        0x80e8 -> :sswitch_8
        0x80e9 -> :sswitch_7
        0x846d -> :sswitch_2
        0x846e -> :sswitch_1
        0x84e2 -> :sswitch_f
        0x86a2 -> :sswitch_10
        0x86a3 -> :sswitch_4
        0x898d -> :sswitch_16
        0x898e -> :sswitch_17
        0x898f -> :sswitch_18
    .end sparse-switch
.end method

.method private getIntegerStateSize(I)I
    .locals 4
    .parameter "pname"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 678
    sparse-switch p1, :sswitch_data_0

    move v1, v3

    .line 735
    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    move v1, v2

    .line 682
    goto :goto_0

    :sswitch_2
    move v1, v2

    .line 684
    goto :goto_0

    .line 690
    :sswitch_3
    new-array v0, v1, [I

    .line 691
    .local v0, buffer:[I
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0x86a2

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 692
    aget v1, v0, v3

    goto :goto_0

    .end local v0           #buffer:[I
    :sswitch_4
    move v1, v2

    .line 707
    goto :goto_0

    :sswitch_5
    move v1, v2

    .line 721
    goto :goto_0

    :sswitch_6
    move v1, v2

    .line 723
    goto :goto_0

    .line 732
    :sswitch_7
    const/16 v1, 0x10

    goto :goto_0

    .line 678
    :sswitch_data_0
    .sparse-switch
        0xb12 -> :sswitch_6
        0xb22 -> :sswitch_5
        0xd31 -> :sswitch_0
        0xd33 -> :sswitch_0
        0xd36 -> :sswitch_0
        0xd38 -> :sswitch_0
        0xd39 -> :sswitch_0
        0xd3a -> :sswitch_4
        0xd50 -> :sswitch_0
        0xd52 -> :sswitch_0
        0xd53 -> :sswitch_0
        0xd54 -> :sswitch_0
        0xd55 -> :sswitch_0
        0xd56 -> :sswitch_0
        0xd57 -> :sswitch_0
        0x80e8 -> :sswitch_0
        0x80e9 -> :sswitch_0
        0x846d -> :sswitch_2
        0x846e -> :sswitch_1
        0x84e2 -> :sswitch_0
        0x86a2 -> :sswitch_0
        0x86a3 -> :sswitch_3
        0x898d -> :sswitch_7
        0x898e -> :sswitch_7
        0x898f -> :sswitch_7
    .end sparse-switch
.end method

.method private getLightModelPName(I)Ljava/lang/String;
    .locals 1
    .parameter "pname"

    .prologue
    .line 892
    packed-switch p1, :pswitch_data_0

    .line 898
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 894
    :pswitch_0
    const-string v0, "GL_LIGHT_MODEL_AMBIENT"

    goto :goto_0

    .line 896
    :pswitch_1
    const-string v0, "GL_LIGHT_MODEL_TWO_SIDE"

    goto :goto_0

    .line 892
    :pswitch_data_0
    .packed-switch 0xb52
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLightModelParamCount(I)I
    .locals 1
    .parameter "pname"

    .prologue
    .line 903
    packed-switch p1, :pswitch_data_0

    .line 909
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 905
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 907
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 903
    nop

    :pswitch_data_0
    .packed-switch 0xb52
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLightName(I)Ljava/lang/String;
    .locals 2
    .parameter "light"

    .prologue
    .line 831
    const/16 v0, 0x4000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x4007

    if-gt p1, v0, :cond_0

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GL_LIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 834
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getLightPName(I)Ljava/lang/String;
    .locals 1
    .parameter "pname"

    .prologue
    .line 838
    packed-switch p1, :pswitch_data_0

    .line 860
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 840
    :pswitch_0
    const-string v0, "GL_AMBIENT"

    goto :goto_0

    .line 842
    :pswitch_1
    const-string v0, "GL_DIFFUSE"

    goto :goto_0

    .line 844
    :pswitch_2
    const-string v0, "GL_SPECULAR"

    goto :goto_0

    .line 846
    :pswitch_3
    const-string v0, "GL_POSITION"

    goto :goto_0

    .line 848
    :pswitch_4
    const-string v0, "GL_SPOT_DIRECTION"

    goto :goto_0

    .line 850
    :pswitch_5
    const-string v0, "GL_SPOT_EXPONENT"

    goto :goto_0

    .line 852
    :pswitch_6
    const-string v0, "GL_SPOT_CUTOFF"

    goto :goto_0

    .line 854
    :pswitch_7
    const-string v0, "GL_CONSTANT_ATTENUATION"

    goto :goto_0

    .line 856
    :pswitch_8
    const-string v0, "GL_LINEAR_ATTENUATION"

    goto :goto_0

    .line 858
    :pswitch_9
    const-string v0, "GL_QUADRATIC_ATTENUATION"

    goto :goto_0

    .line 838
    :pswitch_data_0
    .packed-switch 0x1200
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getLightParamCount(I)I
    .locals 2
    .parameter "pname"

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x1

    .line 865
    packed-switch p1, :pswitch_data_0

    .line 887
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 867
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 869
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 871
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 873
    goto :goto_0

    .line 875
    :pswitch_5
    const/4 v0, 0x3

    goto :goto_0

    .line 865
    nop

    :pswitch_data_0
    .packed-switch 0x1200
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMaterialPName(I)Ljava/lang/String;
    .locals 1
    .parameter "pname"

    .prologue
    .line 793
    sparse-switch p1, :sswitch_data_0

    .line 807
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 795
    :sswitch_0
    const-string v0, "GL_AMBIENT"

    goto :goto_0

    .line 797
    :sswitch_1
    const-string v0, "GL_DIFFUSE"

    goto :goto_0

    .line 799
    :sswitch_2
    const-string v0, "GL_SPECULAR"

    goto :goto_0

    .line 801
    :sswitch_3
    const-string v0, "GL_EMISSION"

    goto :goto_0

    .line 803
    :sswitch_4
    const-string v0, "GL_SHININESS"

    goto :goto_0

    .line 805
    :sswitch_5
    const-string v0, "GL_AMBIENT_AND_DIFFUSE"

    goto :goto_0

    .line 793
    :sswitch_data_0
    .sparse-switch
        0x1200 -> :sswitch_0
        0x1201 -> :sswitch_1
        0x1202 -> :sswitch_2
        0x1600 -> :sswitch_3
        0x1601 -> :sswitch_4
        0x1602 -> :sswitch_5
    .end sparse-switch
.end method

.method private getMaterialParamCount(I)I
    .locals 1
    .parameter "pname"

    .prologue
    const/4 v0, 0x4

    .line 812
    sparse-switch p1, :sswitch_data_0

    .line 826
    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    .line 822
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 812
    :sswitch_data_0
    .sparse-switch
        0x1200 -> :sswitch_0
        0x1201 -> :sswitch_0
        0x1202 -> :sswitch_0
        0x1600 -> :sswitch_0
        0x1601 -> :sswitch_1
        0x1602 -> :sswitch_0
    .end sparse-switch
.end method

.method private getMatrixMode(I)Ljava/lang/String;
    .locals 1
    .parameter "matrixMode"

    .prologue
    .line 408
    packed-switch p1, :pswitch_data_0

    .line 416
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 410
    :pswitch_0
    const-string v0, "GL_MODELVIEW"

    goto :goto_0

    .line 412
    :pswitch_1
    const-string v0, "GL_PROJECTION"

    goto :goto_0

    .line 414
    :pswitch_2
    const-string v0, "GL_TEXTURE"

    goto :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x1700
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPointerTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 914
    sparse-switch p1, :sswitch_data_0

    .line 926
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 916
    :sswitch_0
    const-string v0, "GL_BYTE"

    goto :goto_0

    .line 918
    :sswitch_1
    const-string v0, "GL_UNSIGNED_BYTE"

    goto :goto_0

    .line 920
    :sswitch_2
    const-string v0, "GL_SHORT"

    goto :goto_0

    .line 922
    :sswitch_3
    const-string v0, "GL_FIXED"

    goto :goto_0

    .line 924
    :sswitch_4
    const-string v0, "GL_FLOAT"

    goto :goto_0

    .line 914
    nop

    :sswitch_data_0
    .sparse-switch
        0x1400 -> :sswitch_0
        0x1401 -> :sswitch_1
        0x1402 -> :sswitch_2
        0x1406 -> :sswitch_4
        0x140c -> :sswitch_3
    .end sparse-switch
.end method

.method private getShadeModel(I)Ljava/lang/String;
    .locals 1
    .parameter "model"

    .prologue
    .line 334
    packed-switch p1, :pswitch_data_0

    .line 340
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 336
    :pswitch_0
    const-string v0, "GL_FLAT"

    goto :goto_0

    .line 338
    :pswitch_1
    const-string v0, "GL_SMOOTH"

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1d00
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTextureEnvPName(I)Ljava/lang/String;
    .locals 1
    .parameter "pname"

    .prologue
    .line 363
    packed-switch p1, :pswitch_data_0

    .line 369
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 365
    :pswitch_0
    const-string v0, "GL_TEXTURE_ENV_MODE"

    goto :goto_0

    .line 367
    :pswitch_1
    const-string v0, "GL_TEXTURE_ENV_COLOR"

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x2200
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTextureEnvParamCount(I)I
    .locals 1
    .parameter "pname"

    .prologue
    .line 374
    packed-switch p1, :pswitch_data_0

    .line 380
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 376
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 378
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x2200
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTextureEnvParamName(F)Ljava/lang/String;
    .locals 2
    .parameter "param"

    .prologue
    .line 385
    float-to-int v0, p1

    .line 386
    .local v0, iparam:I
    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 387
    sparse-switch v0, :sswitch_data_0

    .line 401
    invoke-static {v0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    :goto_0
    return-object v1

    .line 389
    :sswitch_0
    const-string v1, "GL_REPLACE"

    goto :goto_0

    .line 391
    :sswitch_1
    const-string v1, "GL_MODULATE"

    goto :goto_0

    .line 393
    :sswitch_2
    const-string v1, "GL_DECAL"

    goto :goto_0

    .line 395
    :sswitch_3
    const-string v1, "GL_BLEND"

    goto :goto_0

    .line 397
    :sswitch_4
    const-string v1, "GL_ADD"

    goto :goto_0

    .line 399
    :sswitch_5
    const-string v1, "GL_COMBINE"

    goto :goto_0

    .line 404
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 387
    nop

    :sswitch_data_0
    .sparse-switch
        0x104 -> :sswitch_4
        0xbe2 -> :sswitch_3
        0x1e01 -> :sswitch_0
        0x2100 -> :sswitch_1
        0x2101 -> :sswitch_2
        0x8570 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTextureEnvTarget(I)Ljava/lang/String;
    .locals 1
    .parameter "target"

    .prologue
    .line 354
    packed-switch p1, :pswitch_data_0

    .line 358
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 356
    :pswitch_0
    const-string v0, "GL_TEXTURE_ENV"

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x2300
        :pswitch_0
    .end packed-switch
.end method

.method private getTexturePName(I)Ljava/lang/String;
    .locals 1
    .parameter "pname"

    .prologue
    .line 507
    sparse-switch p1, :sswitch_data_0

    .line 521
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 509
    :sswitch_0
    const-string v0, "GL_TEXTURE_MAG_FILTER"

    goto :goto_0

    .line 511
    :sswitch_1
    const-string v0, "GL_TEXTURE_MIN_FILTER"

    goto :goto_0

    .line 513
    :sswitch_2
    const-string v0, "GL_TEXTURE_WRAP_S"

    goto :goto_0

    .line 515
    :sswitch_3
    const-string v0, "GL_TEXTURE_WRAP_T"

    goto :goto_0

    .line 517
    :sswitch_4
    const-string v0, "GL_GENERATE_MIPMAP"

    goto :goto_0

    .line 519
    :sswitch_5
    const-string v0, "GL_TEXTURE_CROP_RECT_OES"

    goto :goto_0

    .line 507
    :sswitch_data_0
    .sparse-switch
        0x2800 -> :sswitch_0
        0x2801 -> :sswitch_1
        0x2802 -> :sswitch_2
        0x2803 -> :sswitch_3
        0x8191 -> :sswitch_4
        0x8b9d -> :sswitch_5
    .end sparse-switch
.end method

.method private getTextureParamName(F)Ljava/lang/String;
    .locals 2
    .parameter "param"

    .prologue
    .line 526
    float-to-int v0, p1

    .line 527
    .local v0, iparam:I
    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 528
    sparse-switch v0, :sswitch_data_0

    .line 546
    invoke-static {v0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v1

    .line 549
    :goto_0
    return-object v1

    .line 530
    :sswitch_0
    const-string v1, "GL_CLAMP_TO_EDGE"

    goto :goto_0

    .line 532
    :sswitch_1
    const-string v1, "GL_REPEAT"

    goto :goto_0

    .line 534
    :sswitch_2
    const-string v1, "GL_NEAREST"

    goto :goto_0

    .line 536
    :sswitch_3
    const-string v1, "GL_LINEAR"

    goto :goto_0

    .line 538
    :sswitch_4
    const-string v1, "GL_NEAREST_MIPMAP_NEAREST"

    goto :goto_0

    .line 540
    :sswitch_5
    const-string v1, "GL_LINEAR_MIPMAP_NEAREST"

    goto :goto_0

    .line 542
    :sswitch_6
    const-string v1, "GL_NEAREST_MIPMAP_LINEAR"

    goto :goto_0

    .line 544
    :sswitch_7
    const-string v1, "GL_LINEAR_MIPMAP_LINEAR"

    goto :goto_0

    .line 549
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 528
    nop

    :sswitch_data_0
    .sparse-switch
        0x2600 -> :sswitch_2
        0x2601 -> :sswitch_3
        0x2700 -> :sswitch_4
        0x2701 -> :sswitch_5
        0x2702 -> :sswitch_6
        0x2703 -> :sswitch_7
        0x2901 -> :sswitch_1
        0x812f -> :sswitch_0
    .end sparse-switch
.end method

.method private getTextureTarget(I)Ljava/lang/String;
    .locals 1
    .parameter "target"

    .prologue
    .line 345
    packed-switch p1, :pswitch_data_0

    .line 349
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 347
    :pswitch_0
    const-string v0, "GL_TEXTURE_2D"

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0xde1
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private logLine(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private returns(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ") returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->flush()V

    .line 112
    return-void
.end method

.method private startLogIndices()V
    .locals 2

    .prologue
    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1165
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->bindArrays()V

    .line 1167
    return-void
.end method

.method private toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .locals 9
    .parameter "byteCount"
    .parameter "input"

    .prologue
    .line 931
    const/4 v5, 0x0

    .line 932
    .local v5, result:Ljava/nio/ByteBuffer;
    if-gez p1, :cond_1

    const/4 v7, 0x1

    move v1, v7

    .line 933
    .local v1, convertWholeBuffer:Z
    :goto_0
    instance-of v7, p2, Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_3

    .line 934
    move-object v0, p2

    check-cast v0, Ljava/nio/ByteBuffer;

    move-object v3, v0

    .line 935
    .local v3, input2:Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 936
    .local v4, position:I
    if-eqz v1, :cond_0

    .line 937
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    sub-int p1, v7, v4

    .line 939
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 940
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, p1, :cond_2

    .line 941
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 940
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 932
    .end local v1           #convertWholeBuffer:Z
    .end local v2           #i:I
    .end local v3           #input2:Ljava/nio/ByteBuffer;
    .end local v4           #position:I
    :cond_1
    const/4 v7, 0x0

    move v1, v7

    goto :goto_0

    .line 943
    .restart local v1       #convertWholeBuffer:Z
    .restart local v2       #i:I
    .restart local v3       #input2:Ljava/nio/ByteBuffer;
    .restart local v4       #position:I
    :cond_2
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1019
    .end local v3           #input2:Ljava/nio/ByteBuffer;
    :goto_2
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1022
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1023
    return-object v5

    .line 944
    .end local v2           #i:I
    .end local v4           #position:I
    :cond_3
    instance-of v7, p2, Ljava/nio/CharBuffer;

    if-eqz v7, :cond_6

    .line 945
    move-object v0, p2

    check-cast v0, Ljava/nio/CharBuffer;

    move-object v3, v0

    .line 946
    .local v3, input2:Ljava/nio/CharBuffer;
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    .line 947
    .restart local v4       #position:I
    if-eqz v1, :cond_4

    .line 948
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v7

    sub-int/2addr v7, v4

    mul-int/lit8 p1, v7, 0x2

    .line 950
    :cond_4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 951
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v6

    .line 952
    .local v6, result2:Ljava/nio/CharBuffer;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    div-int/lit8 v7, p1, 0x2

    if-ge v2, v7, :cond_5

    .line 953
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->get()C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 952
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 955
    :cond_5
    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 956
    .end local v2           #i:I
    .end local v3           #input2:Ljava/nio/CharBuffer;
    .end local v4           #position:I
    .end local v6           #result2:Ljava/nio/CharBuffer;
    :cond_6
    instance-of v7, p2, Ljava/nio/ShortBuffer;

    if-eqz v7, :cond_9

    .line 957
    move-object v0, p2

    check-cast v0, Ljava/nio/ShortBuffer;

    move-object v3, v0

    .line 958
    .local v3, input2:Ljava/nio/ShortBuffer;
    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->position()I

    move-result v4

    .line 959
    .restart local v4       #position:I
    if-eqz v1, :cond_7

    .line 960
    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->limit()I

    move-result v7

    sub-int/2addr v7, v4

    mul-int/lit8 p1, v7, 0x2

    .line 962
    :cond_7
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 963
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v6

    .line 964
    .local v6, result2:Ljava/nio/ShortBuffer;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    div-int/lit8 v7, p1, 0x2

    if-ge v2, v7, :cond_8

    .line 965
    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->get()S

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 964
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 967
    :cond_8
    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 968
    .end local v2           #i:I
    .end local v3           #input2:Ljava/nio/ShortBuffer;
    .end local v4           #position:I
    .end local v6           #result2:Ljava/nio/ShortBuffer;
    :cond_9
    instance-of v7, p2, Ljava/nio/IntBuffer;

    if-eqz v7, :cond_c

    .line 969
    move-object v0, p2

    check-cast v0, Ljava/nio/IntBuffer;

    move-object v3, v0

    .line 970
    .local v3, input2:Ljava/nio/IntBuffer;
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->position()I

    move-result v4

    .line 971
    .restart local v4       #position:I
    if-eqz v1, :cond_a

    .line 972
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->limit()I

    move-result v7

    sub-int/2addr v7, v4

    mul-int/lit8 p1, v7, 0x4

    .line 974
    :cond_a
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 975
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    .line 976
    .local v6, result2:Ljava/nio/IntBuffer;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    div-int/lit8 v7, p1, 0x4

    if-ge v2, v7, :cond_b

    .line 977
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 976
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 979
    :cond_b
    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    .line 980
    .end local v2           #i:I
    .end local v3           #input2:Ljava/nio/IntBuffer;
    .end local v4           #position:I
    .end local v6           #result2:Ljava/nio/IntBuffer;
    :cond_c
    instance-of v7, p2, Ljava/nio/FloatBuffer;

    if-eqz v7, :cond_f

    .line 981
    move-object v0, p2

    check-cast v0, Ljava/nio/FloatBuffer;

    move-object v3, v0

    .line 982
    .local v3, input2:Ljava/nio/FloatBuffer;
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->position()I

    move-result v4

    .line 983
    .restart local v4       #position:I
    if-eqz v1, :cond_d

    .line 984
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v7

    sub-int/2addr v7, v4

    mul-int/lit8 p1, v7, 0x4

    .line 986
    :cond_d
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 987
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 988
    .local v6, result2:Ljava/nio/FloatBuffer;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_6
    div-int/lit8 v7, p1, 0x4

    if-ge v2, v7, :cond_e

    .line 989
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->get()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 988
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 991
    :cond_e
    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    .line 992
    .end local v2           #i:I
    .end local v3           #input2:Ljava/nio/FloatBuffer;
    .end local v4           #position:I
    .end local v6           #result2:Ljava/nio/FloatBuffer;
    :cond_f
    instance-of v7, p2, Ljava/nio/DoubleBuffer;

    if-eqz v7, :cond_12

    .line 993
    move-object v0, p2

    check-cast v0, Ljava/nio/DoubleBuffer;

    move-object v3, v0

    .line 994
    .local v3, input2:Ljava/nio/DoubleBuffer;
    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->position()I

    move-result v4

    .line 995
    .restart local v4       #position:I
    if-eqz v1, :cond_10

    .line 996
    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v7

    sub-int/2addr v7, v4

    mul-int/lit8 p1, v7, 0x8

    .line 998
    :cond_10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 999
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v6

    .line 1000
    .local v6, result2:Ljava/nio/DoubleBuffer;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_7
    div-int/lit8 v7, p1, 0x8

    if-ge v2, v7, :cond_11

    .line 1001
    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    .line 1000
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1003
    :cond_11
    invoke-virtual {v3, v4}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    .line 1004
    .end local v2           #i:I
    .end local v3           #input2:Ljava/nio/DoubleBuffer;
    .end local v4           #position:I
    .end local v6           #result2:Ljava/nio/DoubleBuffer;
    :cond_12
    instance-of v7, p2, Ljava/nio/LongBuffer;

    if-eqz v7, :cond_15

    .line 1005
    move-object v0, p2

    check-cast v0, Ljava/nio/LongBuffer;

    move-object v3, v0

    .line 1006
    .local v3, input2:Ljava/nio/LongBuffer;
    invoke-virtual {v3}, Ljava/nio/LongBuffer;->position()I

    move-result v4

    .line 1007
    .restart local v4       #position:I
    if-eqz v1, :cond_13

    .line 1008
    invoke-virtual {v3}, Ljava/nio/LongBuffer;->limit()I

    move-result v7

    sub-int/2addr v7, v4

    mul-int/lit8 p1, v7, 0x8

    .line 1010
    :cond_13
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v3}, Ljava/nio/LongBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1011
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v6

    .line 1012
    .local v6, result2:Ljava/nio/LongBuffer;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_8
    div-int/lit8 v7, p1, 0x8

    if-ge v2, v7, :cond_14

    .line 1013
    invoke-virtual {v3}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    .line 1012
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1015
    :cond_14
    invoke-virtual {v3, v4}, Ljava/nio/LongBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    .line 1017
    .end local v2           #i:I
    .end local v3           #input2:Ljava/nio/LongBuffer;
    .end local v4           #position:I
    .end local v6           #result2:Ljava/nio/LongBuffer;
    :cond_15
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unimplemented Buffer subclass."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private toCharIndices(IILjava/nio/Buffer;)[C
    .locals 9
    .parameter "count"
    .parameter "type"
    .parameter "indices"

    .prologue
    .line 1027
    new-array v7, p1, [C

    .line 1028
    .local v7, result:[C
    packed-switch p2, :pswitch_data_0

    .line 1057
    :cond_0
    :goto_0
    :pswitch_0
    return-object v7

    .line 1030
    :pswitch_1
    invoke-direct {p0, p1, p3}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1031
    .local v2, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 1032
    .local v1, array:[B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    .line 1033
    .local v5, offset:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, p1, :cond_0

    .line 1034
    add-int v8, v5, v4

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    aput-char v8, v7, v4

    .line 1033
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1040
    .end local v1           #array:[B
    .end local v2           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v4           #i:I
    .end local v5           #offset:I
    :pswitch_2
    instance-of v8, p3, Ljava/nio/CharBuffer;

    if-eqz v8, :cond_1

    .line 1041
    move-object v0, p3

    check-cast v0, Ljava/nio/CharBuffer;

    move-object v3, v0

    .line 1046
    .local v3, charBuffer:Ljava/nio/CharBuffer;
    :goto_2
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v6

    .line 1047
    .local v6, oldPosition:I
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 1048
    invoke-virtual {v3, v7}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 1049
    invoke-virtual {v3, v6}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 1043
    .end local v3           #charBuffer:Ljava/nio/CharBuffer;
    .end local v6           #oldPosition:I
    :cond_1
    mul-int/lit8 v8, p1, 0x2

    invoke-direct {p0, v8, p3}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1044
    .restart local v2       #byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    .restart local v3       #charBuffer:Ljava/nio/CharBuffer;
    goto :goto_2

    .line 1028
    nop

    :pswitch_data_0
    .packed-switch 0x1401
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private toString(IILjava/nio/IntBuffer;)Ljava/lang/String;
    .locals 4
    .parameter "n"
    .parameter "format"
    .parameter "buf"

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p3, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Landroid/opengl/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    .line 214
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_0
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(II[II)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .parameter "format"
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v1, buf:Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    array-length v0, p3

    .line 148
    .local v0, arrLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 149
    add-int v3, p4, v2

    .line 150
    .local v3, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    if-ltz v3, :cond_0

    if-lt v3, v0, :cond_1

    .line 152
    :cond_0
    const-string/jumbo v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :goto_1
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_1
    aget v4, p3, v3

    invoke-direct {p0, v1, v4, p2}, Landroid/opengl/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    goto :goto_1

    .line 158
    .end local v3           #index:I
    :cond_2
    const-string/jumbo v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;
    .locals 4
    .parameter "n"
    .parameter "buf"

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;
    .locals 4
    .parameter "n"
    .parameter "buf"

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_0
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(I[FI)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v1, buf:Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    array-length v0, p2

    .line 184
    .local v0, arrLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 185
    add-int v3, p3, v2

    .line 186
    .local v3, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    if-ltz v3, :cond_0

    if-lt v3, v0, :cond_1

    .line 188
    :cond_0
    const-string/jumbo v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :goto_1
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_1
    aget v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 194
    .end local v3           #index:I
    :cond_2
    const-string/jumbo v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toString(I[SI)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v1, buf:Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    array-length v0, p2

    .line 166
    .local v0, arrLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 167
    add-int v3, p3, v2

    .line 168
    .local v3, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    if-ltz v3, :cond_0

    if-lt v3, v0, :cond_1

    .line 170
    :cond_0
    const-string/jumbo v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :goto_1
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_1
    aget-short v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 176
    .end local v3           #index:I
    :cond_2
    const-string/jumbo v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private unbindArrays()V
    .locals 1

    .prologue
    .line 1153
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 1155
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    if-eqz v0, :cond_1

    .line 1156
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 1157
    :cond_1
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    if-eqz v0, :cond_2

    .line 1158
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 1159
    :cond_2
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    if-eqz v0, :cond_3

    .line 1160
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    .line 1161
    :cond_3
    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 1178
    const-string v0, "glActiveTexture"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1179
    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1180
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1181
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 1182
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1183
    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1
    .parameter "func"
    .parameter "ref"

    .prologue
    .line 1186
    const-string v0, "glAlphaFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1187
    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1188
    const-string/jumbo v0, "ref"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1189
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1190
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 1191
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1192
    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1
    .parameter "func"
    .parameter "ref"

    .prologue
    .line 1195
    const-string v0, "glAlphaFuncx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1196
    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1197
    const-string/jumbo v0, "ref"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1198
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1199
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    .line 1200
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1201
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1
    .parameter "target"
    .parameter "buffer"

    .prologue
    .line 2771
    const-string v0, "glBindBuffer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2772
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2773
    const-string v0, "buffer"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2774
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2775
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 2776
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2777
    return-void
.end method

.method public glBindTexture(II)V
    .locals 2
    .parameter "target"
    .parameter "texture"

    .prologue
    .line 1204
    const-string v0, "glBindTexture"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1205
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1207
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1208
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 1209
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1210
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 2
    .parameter "sfactor"
    .parameter "dfactor"

    .prologue
    .line 1213
    const-string v0, "glBlendFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1214
    const-string/jumbo v0, "sfactor"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string v0, "dfactor"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1218
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 1219
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1220
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 2
    .parameter "target"
    .parameter "size"
    .parameter "data"
    .parameter "usage"

    .prologue
    .line 2780
    const-string v0, "glBufferData"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2781
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2782
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2783
    const-string v0, "data"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    const-string/jumbo v0, "usage"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2785
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2786
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 2787
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2788
    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 2
    .parameter "target"
    .parameter "offset"
    .parameter "size"
    .parameter "data"

    .prologue
    .line 2791
    const-string v0, "glBufferSubData"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2792
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2793
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2794
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2795
    const-string v0, "data"

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2797
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 2798
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2799
    return-void
.end method

.method public glClear(I)V
    .locals 2
    .parameter "mask"

    .prologue
    .line 1223
    const-string v0, "glClear"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1224
    const-string/jumbo v0, "mask"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClearBufferMask(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1227
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 1228
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1229
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 1232
    const-string v0, "glClearColor"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1233
    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1234
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1235
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1236
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1237
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1239
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 1240
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1241
    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 1244
    const-string v0, "glClearColor"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1245
    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1246
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1247
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1248
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1249
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1251
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    .line 1252
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1253
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1
    .parameter "depth"

    .prologue
    .line 1256
    const-string v0, "glClearDepthf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1257
    const-string v0, "depth"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1258
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1260
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 1261
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1262
    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1
    .parameter "depth"

    .prologue
    .line 1265
    const-string v0, "glClearDepthx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1266
    const-string v0, "depth"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1267
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1269
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    .line 1270
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1271
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1274
    const-string v0, "glClearStencil"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1275
    const-string/jumbo v0, "s"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1276
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1278
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    .line 1279
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1280
    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 1283
    const-string v0, "glClientActiveTexture"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1284
    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1285
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1287
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 1288
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1289
    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 2
    .parameter "plane"
    .parameter "equation"

    .prologue
    .line 2597
    const-string v0, "glClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2598
    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2599
    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 2600
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2601
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 2602
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2603
    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 2
    .parameter "plane"
    .parameter "equation"
    .parameter "offset"

    .prologue
    .line 2587
    const-string v0, "glClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2588
    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2589
    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 2590
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2591
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2592
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    .line 2593
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2594
    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "plane"
    .parameter "equation"

    .prologue
    .line 2616
    const-string v0, "glClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2617
    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2618
    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2619
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2620
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    .line 2621
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2622
    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 2
    .parameter "plane"
    .parameter "equation"
    .parameter "offset"

    .prologue
    .line 2606
    const-string v0, "glClipPlanex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2607
    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2608
    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2609
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2610
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2611
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    .line 2612
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2613
    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 1292
    const-string v0, "glColor4f"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1293
    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1294
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1295
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1296
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1297
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1299
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 1300
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1301
    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 2802
    const-string v0, "glColor4ub"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2803
    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2804
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2805
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2806
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2807
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2808
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4ub(BBBB)V

    .line 2809
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2810
    return-void
.end method

.method public glColor4x(IIII)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 1304
    const-string v0, "glColor4x"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1305
    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1306
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1307
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1308
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1309
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1311
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1312
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1313
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 1317
    const-string v0, "glColorMask"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1318
    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 1319
    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 1320
    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 1321
    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 1322
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1324
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    .line 1325
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1326
    return-void
.end method

.method public glColorPointer(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 3335
    const-string v0, "glColorPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3336
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3337
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3338
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3339
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3340
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3341
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    .line 3342
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3343
    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 1329
    const-string v0, "glColorPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1330
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 1331
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1332
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 1334
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 1335
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1336
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 12
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "width"
    .parameter "height"
    .parameter "border"
    .parameter "imageSize"
    .parameter "data"

    .prologue
    .line 1341
    const-string v3, "glCompressedTexImage2D"

    invoke-direct {p0, v3}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1342
    const-string/jumbo v3, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    const-string v3, "level"

    invoke-direct {p0, v3, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1344
    const-string v3, "internalformat"

    invoke-direct {p0, v3, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1345
    const-string/jumbo v3, "width"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1346
    const-string v3, "height"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1347
    const-string v3, "border"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1348
    const-string v3, "imageSize"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1349
    const-string v3, "data"

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1352
    iget-object v3, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 1354
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1355
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 13
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
    .line 1360
    const-string v3, "glCompressedTexSubImage2D"

    invoke-direct {p0, v3}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1361
    const-string/jumbo v3, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const-string v3, "level"

    invoke-direct {p0, v3, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1363
    const-string/jumbo v3, "xoffset"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1364
    const-string/jumbo v3, "yoffset"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1365
    const-string/jumbo v3, "width"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1366
    const-string v3, "height"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1367
    const-string v3, "format"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1368
    const-string v3, "imageSize"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1369
    const-string v3, "data"

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1372
    iget-object v3, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1374
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1375
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 12
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "border"

    .prologue
    .line 1379
    const-string v3, "glCopyTexImage2D"

    invoke-direct {p0, v3}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1380
    const-string/jumbo v3, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v3, "level"

    invoke-direct {p0, v3, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1382
    const-string v3, "internalformat"

    invoke-direct {p0, v3, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1383
    const-string/jumbo v3, "x"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1384
    const-string/jumbo v3, "y"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1385
    const-string/jumbo v3, "width"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1386
    const-string v3, "height"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1387
    const-string v3, "border"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1388
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1390
    iget-object v3, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    .line 1392
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1393
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 12
    .parameter "target"
    .parameter "level"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1397
    const-string v3, "glCopyTexSubImage2D"

    invoke-direct {p0, v3}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1398
    const-string/jumbo v3, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string v3, "level"

    invoke-direct {p0, v3, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1400
    const-string/jumbo v3, "xoffset"

    invoke-direct {p0, v3, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1401
    const-string/jumbo v3, "yoffset"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1402
    const-string/jumbo v3, "x"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1403
    const-string/jumbo v3, "y"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1404
    const-string/jumbo v3, "width"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1405
    const-string v3, "height"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1406
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1408
    iget-object v3, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    .line 1410
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1411
    return-void
.end method

.method public glCullFace(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1414
    const-string v0, "glCullFace"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1415
    const-string/jumbo v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1416
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1418
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 1419
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1420
    return-void
.end method

.method public glCurrentPaletteMatrixOES(I)V
    .locals 1
    .parameter "matrixpaletteindex"

    .prologue
    .line 3395
    const-string v0, "glCurrentPaletteMatrixOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3396
    const-string/jumbo v0, "matrixpaletteindex"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3397
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3398
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glCurrentPaletteMatrixOES(I)V

    .line 3399
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3400
    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "n"
    .parameter "buffers"

    .prologue
    .line 2823
    const-string v0, "glDeleteBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2824
    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2825
    const-string v0, "buffers"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2827
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 2828
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2829
    return-void
.end method

.method public glDeleteBuffers(I[II)V
    .locals 2
    .parameter "n"
    .parameter "buffers"
    .parameter "offset"

    .prologue
    .line 2813
    const-string v0, "glDeleteBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2814
    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2815
    const-string v0, "buffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2816
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2817
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2818
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 2819
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2820
    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "textures"

    .prologue
    .line 1434
    const-string v0, "glDeleteTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1435
    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1436
    const-string/jumbo v0, "textures"

    invoke-direct {p0, v0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 1437
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1439
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 1440
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1441
    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    .line 1423
    const-string v0, "glDeleteTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1424
    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1425
    const-string/jumbo v0, "textures"

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 1426
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1427
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1429
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 1430
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1431
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1
    .parameter "func"

    .prologue
    .line 1444
    const-string v0, "glDepthFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1445
    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1446
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1448
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 1449
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1450
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1453
    const-string v0, "glDepthMask"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1454
    const-string v0, "flag"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 1455
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1457
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 1458
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1459
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1
    .parameter "near"
    .parameter "far"

    .prologue
    .line 1462
    const-string v0, "glDepthRangef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1463
    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1464
    const-string v0, "far"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1465
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1467
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    .line 1468
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1469
    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1
    .parameter "near"
    .parameter "far"

    .prologue
    .line 1472
    const-string v0, "glDepthRangex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1473
    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1474
    const-string v0, "far"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1475
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1477
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    .line 1478
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1479
    return-void
.end method

.method public glDisable(I)V
    .locals 2
    .parameter "cap"

    .prologue
    .line 1482
    const-string v0, "glDisable"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1483
    const-string v0, "cap"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getCap(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1486
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1487
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1488
    return-void
.end method

.method public glDisableClientState(I)V
    .locals 3
    .parameter "array"

    .prologue
    const/4 v2, 0x0

    .line 1491
    const-string v0, "glDisableClientState"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1492
    const-string v0, "array"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1495
    packed-switch p1, :pswitch_data_0

    .line 1509
    :goto_0
    :pswitch_0
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 1510
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1511
    return-void

    .line 1497
    :pswitch_1
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    goto :goto_0

    .line 1500
    :pswitch_2
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    goto :goto_0

    .line 1503
    :pswitch_3
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    goto :goto_0

    .line 1506
    :pswitch_4
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    goto :goto_0

    .line 1495
    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public glDrawArrays(III)V
    .locals 3
    .parameter "mode"
    .parameter "first"
    .parameter "count"

    .prologue
    .line 1514
    const-string v1, "glDrawArrays"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1515
    const-string/jumbo v1, "mode"

    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1516
    const-string v1, "first"

    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1517
    const-string v1, "count"

    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1518
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->startLogIndices()V

    .line 1519
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1520
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    add-int v2, p2, v0

    invoke-direct {p0, v1, v0, v2}, Landroid/opengl/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    .line 1519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1522
    :cond_0
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->endLogIndices()V

    .line 1523
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1525
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 1526
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1527
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 1
    .parameter "mode"
    .parameter "count"
    .parameter "type"
    .parameter "offset"

    .prologue
    .line 3346
    const-string v0, "glDrawElements"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3347
    const-string/jumbo v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3348
    const-string v0, "count"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3349
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3350
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3351
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3352
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 3353
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3354
    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 5
    .parameter "mode"
    .parameter "count"
    .parameter "type"
    .parameter "indices"

    .prologue
    .line 1530
    const-string v3, "glDrawElements"

    invoke-direct {p0, v3}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1531
    const-string/jumbo v3, "mode"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getBeginMode(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    const-string v3, "count"

    invoke-direct {p0, v3, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1533
    const-string/jumbo v3, "type"

    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getIndexType(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toCharIndices(IILjava/nio/Buffer;)[C

    move-result-object v1

    .line 1535
    .local v1, indexArray:[C
    array-length v2, v1

    .line 1536
    .local v2, indexArrayLength:I
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->startLogIndices()V

    .line 1537
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1538
    iget-object v3, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    aget-char v4, v1, v0

    invoke-direct {p0, v3, v0, v4}, Landroid/opengl/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    .line 1537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1540
    :cond_0
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->endLogIndices()V

    .line 1541
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1543
    iget-object v3, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v3, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 1544
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1545
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
    .line 2628
    const-string v0, "glDrawTexfOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2629
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2630
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2631
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2632
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2633
    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2634
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2635
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 2636
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2637
    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 2
    .parameter "coords"

    .prologue
    .line 2649
    const-string v0, "glDrawTexfvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2650
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 2651
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2652
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    .line 2653
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2654
    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 2
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 2640
    const-string v0, "glDrawTexfvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2641
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 2642
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2643
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2644
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    .line 2645
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2646
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
    .line 2657
    const-string v0, "glDrawTexiOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2658
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2659
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2660
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2661
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2662
    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2663
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2664
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 2665
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2666
    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 2
    .parameter "coords"

    .prologue
    .line 2678
    const-string v0, "glDrawTexivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2679
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2680
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2681
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    .line 2682
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2683
    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 2
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 2669
    const-string v0, "glDrawTexivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2670
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2671
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2672
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2673
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    .line 2674
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2675
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
    .line 2687
    const-string v0, "glDrawTexsOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2688
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2689
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2690
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2691
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2692
    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2693
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2694
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    .line 2695
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2696
    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 2
    .parameter "coords"

    .prologue
    .line 2708
    const-string v0, "glDrawTexsvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2709
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V

    .line 2710
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2711
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    .line 2712
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2713
    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 2
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 2699
    const-string v0, "glDrawTexsvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2700
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[SI)V

    .line 2701
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2702
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2703
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    .line 2704
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2705
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
    .line 2716
    const-string v0, "glDrawTexxOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2717
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2718
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2719
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2720
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2721
    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2722
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2723
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    .line 2724
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2725
    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 2
    .parameter "coords"

    .prologue
    .line 2737
    const-string v0, "glDrawTexxvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2738
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2739
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2740
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    .line 2741
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2742
    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 2
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 2728
    const-string v0, "glDrawTexxvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2729
    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2730
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2731
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2732
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    .line 2733
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2734
    return-void
.end method

.method public glEnable(I)V
    .locals 2
    .parameter "cap"

    .prologue
    .line 1548
    const-string v0, "glEnable"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1549
    const-string v0, "cap"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getCap(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1552
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 1553
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1554
    return-void
.end method

.method public glEnableClientState(I)V
    .locals 3
    .parameter "array"

    .prologue
    const/4 v2, 0x1

    .line 1557
    const-string v0, "glEnableClientState"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1558
    const-string v0, "array"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1561
    packed-switch p1, :pswitch_data_0

    .line 1575
    :goto_0
    :pswitch_0
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 1576
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1577
    return-void

    .line 1563
    :pswitch_1
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    goto :goto_0

    .line 1566
    :pswitch_2
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    goto :goto_0

    .line 1569
    :pswitch_3
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    goto :goto_0

    .line 1572
    :pswitch_4
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    goto :goto_0

    .line 1561
    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public glFinish()V
    .locals 1

    .prologue
    .line 1580
    const-string v0, "glFinish"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1581
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1583
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    .line 1584
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1585
    return-void
.end method

.method public glFlush()V
    .locals 1

    .prologue
    .line 1588
    const-string v0, "glFlush"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1589
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1591
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 1592
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1593
    return-void
.end method

.method public glFogf(IF)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 1596
    const-string v0, "glFogf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1597
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1598
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1599
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1601
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 1602
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1603
    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 2
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 1617
    const-string v0, "glFogfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1618
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 1620
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1622
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 1623
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1624
    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 2
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 1606
    const-string v0, "glFogfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1607
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 1609
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1610
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1612
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    .line 1613
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1614
    return-void
.end method

.method public glFogx(II)V
    .locals 2
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 1627
    const-string v0, "glFogx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1628
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1630
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1632
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    .line 1633
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1634
    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 1648
    const-string v0, "glFogxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1649
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 1651
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1653
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    .line 1654
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1655
    return-void
.end method

.method public glFogxv(I[II)V
    .locals 2
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 1637
    const-string v0, "glFogxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1638
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 1640
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1641
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1643
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    .line 1644
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1645
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1658
    const-string v0, "glFrontFace"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1659
    const-string/jumbo v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1660
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1662
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 1663
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1664
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
    .line 1668
    const-string v0, "glFrustumf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1669
    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1670
    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1671
    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1672
    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1673
    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1674
    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1675
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1677
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 1678
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1679
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
    .line 1683
    const-string v0, "glFrustumx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1684
    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1685
    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1686
    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1687
    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1688
    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1689
    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1690
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1692
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    .line 1693
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1694
    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "n"
    .parameter "buffers"

    .prologue
    .line 2842
    const-string v0, "glGenBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2843
    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2844
    const-string v0, "buffers"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2846
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 2847
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2848
    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 2
    .parameter "n"
    .parameter "buffers"
    .parameter "offset"

    .prologue
    .line 2832
    const-string v0, "glGenBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2833
    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2834
    const-string v0, "buffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2835
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2836
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2837
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 2838
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2839
    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "n"
    .parameter "textures"

    .prologue
    .line 1710
    const-string v0, "glGenTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1711
    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1712
    const-string/jumbo v0, "textures"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 1716
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 1718
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1719
    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 2
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    .line 1697
    const-string v0, "glGenTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1698
    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1699
    const-string/jumbo v0, "textures"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1702
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 1704
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 1706
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1707
    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 2861
    const-string v0, "glGetBooleanv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2862
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2863
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2865
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    .line 2866
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2867
    return-void
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 2
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 2851
    const-string v0, "glGetBooleanv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2852
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2853
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2855
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2856
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(I[ZI)V

    .line 2857
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2858
    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 2882
    const-string v0, "glGetBufferParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2883
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2884
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2885
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2887
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 2888
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2889
    return-void
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 2871
    const-string v0, "glGetBufferParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2872
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2873
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2874
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2876
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2877
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(II[II)V

    .line 2878
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2879
    return-void
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 2
    .parameter "pname"
    .parameter "eqn"

    .prologue
    .line 2902
    const-string v0, "glGetClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2903
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2904
    const-string v0, "eqn"

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2906
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 2907
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2908
    return-void
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 2
    .parameter "pname"
    .parameter "eqn"
    .parameter "offset"

    .prologue
    .line 2892
    const-string v0, "glGetClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2893
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2894
    const-string v0, "eqn"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2896
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2897
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(I[FI)V

    .line 2898
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2899
    return-void
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "pname"
    .parameter "eqn"

    .prologue
    .line 2920
    const-string v0, "glGetClipPlanex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2921
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2922
    const-string v0, "eqn"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2924
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(ILjava/nio/IntBuffer;)V

    .line 2925
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2926
    return-void
.end method

.method public glGetClipPlanex(I[II)V
    .locals 2
    .parameter "pname"
    .parameter "eqn"
    .parameter "offset"

    .prologue
    .line 2911
    const-string v0, "glGetClipPlanex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2912
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2913
    const-string v0, "eqn"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2914
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2915
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2916
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(I[II)V

    .line 2917
    return-void
.end method

.method public glGetError()I
    .locals 2

    .prologue
    .line 1722
    const-string v1, "glGetError"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1724
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 1726
    .local v0, result:I
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(I)V

    .line 1728
    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 2938
    const-string v0, "glGetFixedv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2939
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2940
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2942
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(ILjava/nio/IntBuffer;)V

    .line 2943
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2944
    return-void
.end method

.method public glGetFixedv(I[II)V
    .locals 2
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 2929
    const-string v0, "glGetFixedv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2930
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2931
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2933
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2934
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(I[II)V

    .line 2935
    return-void
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 2
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 2956
    const-string v0, "glGetFloatv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2957
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2958
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2959
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2960
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 2961
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2962
    return-void
.end method

.method public glGetFloatv(I[FI)V
    .locals 2
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 2947
    const-string v0, "glGetFloatv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2948
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2949
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2951
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2952
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(I[FI)V

    .line 2953
    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 1746
    const-string v0, "glGetIntegerv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1747
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 1752
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 1755
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1756
    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 2
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 1732
    const-string v0, "glGetIntegerv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1733
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    const-string/jumbo v0, "params"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1737
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 1739
    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 1742
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1743
    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 2976
    const-string v0, "glGetLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2977
    const-string v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2978
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2979
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2981
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(IILjava/nio/FloatBuffer;)V

    .line 2982
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2983
    return-void
.end method

.method public glGetLightfv(II[FI)V
    .locals 2
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 2965
    const-string v0, "glGetLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2966
    const-string v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2967
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2968
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2970
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2971
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(II[FI)V

    .line 2972
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2973
    return-void
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 2997
    const-string v0, "glGetLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2998
    const-string v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2999
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3000
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3001
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3002
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(IILjava/nio/IntBuffer;)V

    .line 3003
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3004
    return-void
.end method

.method public glGetLightxv(II[II)V
    .locals 2
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 2986
    const-string v0, "glGetLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2987
    const-string v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2988
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2989
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2990
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2991
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2992
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(II[II)V

    .line 2993
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2994
    return-void
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 3019
    const-string v0, "glGetMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3020
    const-string v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3021
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3022
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3024
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 3025
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3026
    return-void
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 2
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 3008
    const-string v0, "glGetMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3009
    const-string v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3010
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3011
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3012
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3013
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3014
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(II[FI)V

    .line 3015
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3016
    return-void
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 3040
    const-string v0, "glGetMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3041
    const-string v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3042
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3043
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3045
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(IILjava/nio/IntBuffer;)V

    .line 3046
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3047
    return-void
.end method

.method public glGetMaterialxv(II[II)V
    .locals 2
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 3029
    const-string v0, "glGetMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3030
    const-string v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3031
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3032
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3034
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3035
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(II[II)V

    .line 3036
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3037
    return-void
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 2
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 3357
    const-string v0, "glGetPointerv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3358
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3359
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3361
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetPointerv(I[Ljava/nio/Buffer;)V

    .line 3362
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3363
    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 1759
    const-string v1, "glGetString"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1760
    const-string/jumbo v1, "name"

    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1762
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1764
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 1766
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1767
    return-object v0
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "env"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 3061
    const-string v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3062
    const-string v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3063
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3064
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3065
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3066
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(IILjava/nio/IntBuffer;)V

    .line 3067
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3068
    return-void
.end method

.method public glGetTexEnviv(II[II)V
    .locals 2
    .parameter "env"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 3050
    const-string v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3051
    const-string v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3052
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3053
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3054
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3055
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3056
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    .line 3057
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3058
    return-void
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "env"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 3082
    const-string v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3083
    const-string v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3084
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3085
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3086
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3087
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 3088
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3089
    return-void
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 2
    .parameter "env"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 3071
    const-string v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3072
    const-string v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3073
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3074
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3076
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3077
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    .line 3078
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3079
    return-void
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 3103
    const-string v0, "glGetTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3104
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3105
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3106
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3108
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 3109
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3110
    return-void
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 3092
    const-string v0, "glGetTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3093
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3094
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3095
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3096
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3097
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3098
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(II[FI)V

    .line 3099
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3100
    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 3124
    const-string v0, "glGetTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3125
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3126
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3127
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3129
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 3130
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3131
    return-void
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 3113
    const-string v0, "glGetTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3114
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3115
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3116
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3117
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3118
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3119
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    .line 3120
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3121
    return-void
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 3146
    const-string v0, "glGetTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3147
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3148
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3149
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3150
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3151
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(IILjava/nio/IntBuffer;)V

    .line 3152
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3153
    return-void
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 3135
    const-string v0, "glGetTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3136
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3137
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3138
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3139
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3140
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3141
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(II[II)V

    .line 3142
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3143
    return-void
.end method

.method public glHint(II)V
    .locals 2
    .parameter "target"
    .parameter "mode"

    .prologue
    .line 1771
    const-string v0, "glHint"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1772
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getHintTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    const-string/jumbo v0, "mode"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getHintMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1776
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 1777
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1778
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 2
    .parameter "buffer"

    .prologue
    .line 3156
    const-string v1, "glIsBuffer"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3157
    const-string v1, "buffer"

    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3158
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3159
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsBuffer(I)Z

    move-result v0

    .line 3160
    .local v0, result:Z
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3161
    return v0
.end method

.method public glIsEnabled(I)Z
    .locals 2
    .parameter "cap"

    .prologue
    .line 3165
    const-string v1, "glIsEnabled"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3166
    const-string v1, "cap"

    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3167
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3168
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsEnabled(I)Z

    move-result v0

    .line 3169
    .local v0, result:Z
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3170
    return v0
.end method

.method public glIsTexture(I)Z
    .locals 2
    .parameter "texture"

    .prologue
    .line 3174
    const-string v1, "glIsTexture"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3175
    const-string/jumbo v1, "texture"

    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3176
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3177
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsTexture(I)Z

    move-result v0

    .line 3178
    .local v0, result:Z
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3179
    return v0
.end method

.method public glLightModelf(IF)V
    .locals 2
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 1781
    const-string v0, "glLightModelf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1782
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1784
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1786
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    .line 1787
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1788
    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 2
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 1802
    const-string v0, "glLightModelfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1803
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 1805
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1807
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    .line 1808
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1809
    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 2
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 1791
    const-string v0, "glLightModelfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1792
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 1794
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1795
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1797
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    .line 1798
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1799
    return-void
.end method

.method public glLightModelx(II)V
    .locals 2
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 1812
    const-string v0, "glLightModelx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1813
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1815
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1817
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    .line 1818
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1819
    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 1833
    const-string v0, "glLightModelfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1834
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 1836
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1838
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    .line 1839
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1840
    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 2
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 1822
    const-string v0, "glLightModelxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1823
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 1825
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1826
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1828
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    .line 1829
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1830
    return-void
.end method

.method public glLightf(IIF)V
    .locals 2
    .parameter "light"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 1843
    const-string v0, "glLightf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1844
    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1847
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1849
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    .line 1850
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1851
    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 1866
    const-string v0, "glLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1867
    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 1870
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1872
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    .line 1873
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1874
    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 2
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 1854
    const-string v0, "glLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1855
    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 1858
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1859
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1861
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 1862
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1863
    return-void
.end method

.method public glLightx(III)V
    .locals 2
    .parameter "light"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 1877
    const-string v0, "glLightx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1878
    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1881
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1883
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    .line 1884
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1885
    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 1900
    const-string v0, "glLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1901
    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 1904
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1906
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    .line 1907
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1908
    return-void
.end method

.method public glLightxv(II[II)V
    .locals 2
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 1888
    const-string v0, "glLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1889
    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 1892
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1893
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1895
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    .line 1896
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1897
    return-void
.end method

.method public glLineWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 1911
    const-string v0, "glLineWidth"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1912
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1913
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1915
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 1916
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1917
    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 1920
    const-string v0, "glLineWidthx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1921
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1922
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1924
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 1925
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1926
    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    .prologue
    .line 1929
    const-string v0, "glLoadIdentity"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1930
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1932
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 1933
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1934
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 1947
    const-string v0, "glLoadMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1948
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 1949
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1951
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 1952
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1953
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 2
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 1937
    const-string v0, "glLoadMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1938
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 1939
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1940
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1942
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 1943
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1944
    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 1966
    const-string v0, "glLoadMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1967
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 1968
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1970
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 1971
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1972
    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 2
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 1956
    const-string v0, "glLoadMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1957
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 1958
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1959
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1961
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    .line 1962
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1963
    return-void
.end method

.method public glLoadPaletteFromModelViewMatrixOES()V
    .locals 1

    .prologue
    .line 3403
    const-string v0, "glLoadPaletteFromModelViewMatrixOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3404
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3405
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11Ext;->glLoadPaletteFromModelViewMatrixOES()V

    .line 3406
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3407
    return-void
.end method

.method public glLogicOp(I)V
    .locals 1
    .parameter "opcode"

    .prologue
    .line 1975
    const-string v0, "glLogicOp"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1976
    const-string/jumbo v0, "opcode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 1977
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1979
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    .line 1980
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1981
    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 2
    .parameter "face"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 1984
    const-string v0, "glMaterialf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1985
    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 1988
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 1990
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 1991
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 1992
    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 2007
    const-string v0, "glMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2008
    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 2011
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2013
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 2014
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2015
    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 2
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 1995
    const-string v0, "glMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 1996
    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 1999
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2000
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2002
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 2003
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2004
    return-void
.end method

.method public glMaterialx(III)V
    .locals 2
    .parameter "face"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 2018
    const-string v0, "glMaterialx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2019
    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2022
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2024
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    .line 2025
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2026
    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 2041
    const-string v0, "glMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2042
    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2045
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2047
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    .line 2048
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2049
    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 2
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 2029
    const-string v0, "glMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2030
    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2033
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2034
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2036
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    .line 2037
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2038
    return-void
.end method

.method public glMatrixIndexPointerOES(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 3420
    const-string v0, "glMatrixIndexPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3421
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3422
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3423
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3424
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3425
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3426
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIII)V

    .line 3427
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3428
    return-void
.end method

.method public glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 3411
    const-string v0, "glMatrixIndexPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3412
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 3413
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3414
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V

    .line 3415
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3416
    return-void
.end method

.method public glMatrixMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2052
    const-string v0, "glMatrixMode"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2053
    const-string/jumbo v0, "mode"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getMatrixMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2056
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 2057
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2058
    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 2071
    const-string v0, "glMultMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2072
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 2073
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2075
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 2076
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2077
    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 2
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 2061
    const-string v0, "glMultMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2062
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 2063
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2064
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2066
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 2067
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2068
    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 2090
    const-string v0, "glMultMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2091
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2092
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2094
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 2095
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2096
    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 2
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 2080
    const-string v0, "glMultMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2081
    const-string v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2082
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2083
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2085
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    .line 2086
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2087
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
    .line 2099
    const-string v0, "glMultiTexCoord4f"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2100
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2101
    const-string/jumbo v0, "s"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2102
    const-string/jumbo v0, "t"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2103
    const-string/jumbo v0, "r"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2104
    const-string/jumbo v0, "q"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2105
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2107
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    .line 2108
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2109
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
    .line 2112
    const-string v0, "glMultiTexCoord4x"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2113
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2114
    const-string/jumbo v0, "s"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2115
    const-string/jumbo v0, "t"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2116
    const-string/jumbo v0, "r"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2117
    const-string/jumbo v0, "q"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2118
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2120
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    .line 2121
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2122
    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1
    .parameter "nx"
    .parameter "ny"
    .parameter "nz"

    .prologue
    .line 2125
    const-string v0, "glNormal3f"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2126
    const-string/jumbo v0, "nx"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2127
    const-string/jumbo v0, "ny"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2128
    const-string/jumbo v0, "nz"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2129
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2131
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    .line 2132
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2133
    return-void
.end method

.method public glNormal3x(III)V
    .locals 1
    .parameter "nx"
    .parameter "ny"
    .parameter "nz"

    .prologue
    .line 2136
    const-string v0, "glNormal3x"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2137
    const-string/jumbo v0, "nx"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2138
    const-string/jumbo v0, "ny"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2139
    const-string/jumbo v0, "nz"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2140
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2142
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    .line 2143
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2144
    return-void
.end method

.method public glNormalPointer(III)V
    .locals 1
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 3366
    const-string v0, "glNormalPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3367
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3368
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3369
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3370
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3371
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    .line 3372
    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 6
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 2147
    const-string v0, "glNormalPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2148
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2149
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2150
    const-string/jumbo v0, "pointer"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2152
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    const/4 v2, 0x3

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 2154
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 2155
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2156
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
    .line 2160
    const-string v0, "glOrthof"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2161
    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2162
    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2163
    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2164
    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2165
    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2166
    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2167
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2169
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 2170
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2171
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
    .line 2175
    const-string v0, "glOrthox"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2176
    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2177
    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2178
    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2179
    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2180
    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2181
    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2182
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2184
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    .line 2185
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2186
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 2189
    const-string v0, "glPixelStorei"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2190
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2191
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2192
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2194
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    .line 2195
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2196
    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 3183
    const-string v0, "glPointParameterf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3184
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3185
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 3186
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3187
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterf(IF)V

    .line 3188
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3189
    return-void
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 2
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 3202
    const-string v0, "glPointParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3203
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3204
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3205
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3206
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(ILjava/nio/FloatBuffer;)V

    .line 3207
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3208
    return-void
.end method

.method public glPointParameterfv(I[FI)V
    .locals 2
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 3192
    const-string v0, "glPointParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3193
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3194
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3195
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3196
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3197
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(I[FI)V

    .line 3198
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3199
    return-void
.end method

.method public glPointParameterx(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 3211
    const-string v0, "glPointParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3212
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3213
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3214
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3215
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterx(II)V

    .line 3216
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3217
    return-void
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 3230
    const-string v0, "glPointParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3231
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3232
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3233
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3234
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(ILjava/nio/IntBuffer;)V

    .line 3235
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3236
    return-void
.end method

.method public glPointParameterxv(I[II)V
    .locals 2
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 3220
    const-string v0, "glPointParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3221
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3222
    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3223
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3224
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3225
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(I[II)V

    .line 3226
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3227
    return-void
.end method

.method public glPointSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 2199
    const-string v0, "glPointSize"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2200
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2201
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2203
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 2204
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2205
    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 2
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 3239
    const-string v0, "glPointSizePointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3240
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3241
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3242
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3244
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointSizePointerOES(IILjava/nio/Buffer;)V

    .line 3245
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3246
    return-void
.end method

.method public glPointSizex(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 2208
    const-string v0, "glPointSizex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2209
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2210
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2212
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    .line 2213
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2214
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1
    .parameter "factor"
    .parameter "units"

    .prologue
    .line 2217
    const-string v0, "glPolygonOffset"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2218
    const-string v0, "factor"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2219
    const-string/jumbo v0, "units"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2220
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2221
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    .line 2222
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2223
    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1
    .parameter "factor"
    .parameter "units"

    .prologue
    .line 2226
    const-string v0, "glPolygonOffsetx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2227
    const-string v0, "factor"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2228
    const-string/jumbo v0, "units"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2229
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2231
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    .line 2232
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2233
    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    .prologue
    .line 2236
    const-string v0, "glPopMatrix"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2237
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2239
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 2240
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2241
    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    .prologue
    .line 2244
    const-string v0, "glPushMatrix"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2245
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2247
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 2248
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2249
    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 4
    .parameter "mantissa"
    .parameter "exponent"

    .prologue
    const/16 v3, 0x10

    .line 2759
    const-string v1, "glQueryMatrixxOES"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2760
    const-string/jumbo v1, "mantissa"

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    const-string v1, "exponent"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2763
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    .line 2764
    .local v0, valid:I
    const/4 v1, 0x2

    invoke-direct {p0, v3, v1, p1}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 2765
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 2766
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2767
    return v0
.end method

.method public glQueryMatrixxOES([II[II)I
    .locals 4
    .parameter "mantissa"
    .parameter "mantissaOffset"
    .parameter "exponent"
    .parameter "exponentOffset"

    .prologue
    const/16 v3, 0x10

    .line 2746
    const-string v1, "glQueryMatrixxOES"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2747
    const-string/jumbo v1, "mantissa"

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    const-string v1, "exponent"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2749
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2750
    iget-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    move-result v0

    .line 2752
    .local v0, valid:I
    const/4 v1, 0x2

    invoke-direct {p0, v3, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 2753
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    .line 2754
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2755
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
    .line 2253
    const-string v0, "glReadPixels"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2254
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2255
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2256
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2257
    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2258
    const-string v0, "format"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2259
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2260
    const-string/jumbo v0, "pixels"

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2263
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 2264
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2265
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 2268
    const-string v0, "glRotatef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2269
    const-string v0, "angle"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2270
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2271
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2272
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2273
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2275
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 2276
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2277
    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 2280
    const-string v0, "glRotatex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2281
    const-string v0, "angle"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2282
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2283
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2284
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2285
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2287
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    .line 2288
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2289
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1
    .parameter "value"
    .parameter "invert"

    .prologue
    .line 2292
    const-string v0, "glSampleCoveragex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2293
    const-string/jumbo v0, "value"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2294
    const-string v0, "invert"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 2295
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2297
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    .line 2298
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2299
    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1
    .parameter "value"
    .parameter "invert"

    .prologue
    .line 2302
    const-string v0, "glSampleCoveragex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2303
    const-string/jumbo v0, "value"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2304
    const-string v0, "invert"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    .line 2305
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2307
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    .line 2308
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2309
    return-void
.end method

.method public glScalef(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 2312
    const-string v0, "glScalef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2313
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2314
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2315
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2316
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2318
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 2319
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2320
    return-void
.end method

.method public glScalex(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 2323
    const-string v0, "glScalex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2324
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2325
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2326
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2327
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2329
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    .line 2330
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2331
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2334
    const-string v0, "glScissor"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2335
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2336
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2337
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2338
    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2339
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2341
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 2342
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2343
    return-void
.end method

.method public glShadeModel(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2346
    const-string v0, "glShadeModel"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2347
    const-string/jumbo v0, "mode"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getShadeModel(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2350
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 2351
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2352
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1
    .parameter "func"
    .parameter "ref"
    .parameter "mask"

    .prologue
    .line 2355
    const-string v0, "glStencilFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2356
    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2357
    const-string/jumbo v0, "ref"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2358
    const-string/jumbo v0, "mask"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2359
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2361
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    .line 2362
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2363
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1
    .parameter "mask"

    .prologue
    .line 2366
    const-string v0, "glStencilMask"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2367
    const-string/jumbo v0, "mask"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2368
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2370
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    .line 2371
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2372
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1
    .parameter "fail"
    .parameter "zfail"
    .parameter "zpass"

    .prologue
    .line 2375
    const-string v0, "glStencilOp"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2376
    const-string v0, "fail"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2377
    const-string/jumbo v0, "zfail"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2378
    const-string/jumbo v0, "zpass"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2379
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2381
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    .line 2382
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2383
    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 3375
    const-string v0, "glTexCoordPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3376
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3377
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3378
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3379
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3380
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3381
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 3382
    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 2386
    const-string v0, "glTexCoordPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2387
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 2388
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2389
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 2391
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 2392
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2393
    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 2396
    const-string v0, "glTexEnvf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2397
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2398
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    const-string/jumbo v0, "param"

    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamName(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2402
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 2403
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2404
    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 2419
    const-string v0, "glTexEnvfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2420
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 2423
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2425
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    .line 2426
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2427
    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 2407
    const-string v0, "glTexEnvfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2408
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    .line 2411
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2412
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2414
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    .line 2415
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2416
    return-void
.end method

.method public glTexEnvi(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 3249
    const-string v0, "glTexEnvi"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3250
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3251
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3252
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3253
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3254
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvi(III)V

    .line 3255
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3256
    return-void
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 3270
    const-string v0, "glTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3271
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3272
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3273
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3274
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3275
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(IILjava/nio/IntBuffer;)V

    .line 3276
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3277
    return-void
.end method

.method public glTexEnviv(II[II)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 3259
    const-string v0, "glTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3260
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3261
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3262
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3264
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3265
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(II[II)V

    .line 3266
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3267
    return-void
.end method

.method public glTexEnvx(III)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 2430
    const-string v0, "glTexEnvx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2431
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2434
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2436
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 2437
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2438
    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 2453
    const-string v0, "glTexEnvxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2454
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2457
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2459
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 2460
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2461
    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 2441
    const-string v0, "glTexEnvxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2442
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2445
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2446
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2448
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    .line 2449
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2450
    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 13
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
    .line 2466
    const-string v3, "glTexImage2D"

    invoke-direct {p0, v3}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2467
    const-string/jumbo v3, "target"

    invoke-direct {p0, v3, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2468
    const-string v3, "level"

    invoke-direct {p0, v3, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2469
    const-string v3, "internalformat"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2470
    const-string/jumbo v3, "width"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2471
    const-string v3, "height"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2472
    const-string v3, "border"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2473
    const-string v3, "format"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2474
    const-string/jumbo v3, "type"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2475
    const-string/jumbo v3, "pixels"

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2478
    iget-object v3, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 2480
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2481
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 2484
    const-string v0, "glTexParameterf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2485
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2486
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    const-string/jumbo v0, "param"

    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getTextureParamName(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2490
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 2491
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2492
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 3292
    const-string v0, "glTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3293
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3294
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3295
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3297
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 3298
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3299
    return-void
.end method

.method public glTexParameterfv(II[FI)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 3281
    const-string v0, "glTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3282
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3283
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3284
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3285
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3286
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3287
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 3288
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3289
    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 3302
    const-string v0, "glTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3303
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3304
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3305
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3306
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3307
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 3308
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3309
    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 2517
    const-string v0, "glTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2518
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    const-string/jumbo v0, "params"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    .line 2521
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2523
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 2524
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2525
    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 2506
    const-string v0, "glTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2507
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    const-string/jumbo v0, "params"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    .line 2510
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2512
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 2513
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2514
    return-void
.end method

.method public glTexParameterx(III)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 2495
    const-string v0, "glTexParameterx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2496
    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2499
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2501
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 2502
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2503
    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 3324
    const-string v0, "glTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3325
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3326
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3327
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3328
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3329
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(IILjava/nio/IntBuffer;)V

    .line 3330
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3331
    return-void
.end method

.method public glTexParameterxv(II[II)V
    .locals 2
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 3313
    const-string v0, "glTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3314
    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3315
    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3316
    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3317
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3318
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3319
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(II[II)V

    .line 3320
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3321
    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 13
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
    .line 2530
    const-string v3, "glTexSubImage2D"

    invoke-direct {p0, v3}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2531
    const-string/jumbo v3, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2532
    const-string v3, "level"

    invoke-direct {p0, v3, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2533
    const-string/jumbo v3, "xoffset"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2534
    const-string/jumbo v3, "yoffset"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2535
    const-string/jumbo v3, "width"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2536
    const-string v3, "height"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2537
    const-string v3, "format"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p7

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2538
    const-string/jumbo v3, "type"

    move-object v0, p0

    move-object v1, v3

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2539
    const-string/jumbo v3, "pixels"

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2541
    iget-object v3, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 2543
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2544
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 2547
    const-string v0, "glTranslatef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2548
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2549
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2550
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    .line 2551
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2552
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 2553
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2554
    return-void
.end method

.method public glTranslatex(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 2557
    const-string v0, "glTranslatex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2558
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2559
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2560
    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2561
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2562
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    .line 2563
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2564
    return-void
.end method

.method public glVertexPointer(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 3385
    const-string v0, "glVertexPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3386
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3387
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3388
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3389
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3390
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3391
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 3392
    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 6
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 2567
    const-string v0, "glVertexPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2568
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 2569
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2570
    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    .line 2571
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 2572
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2573
    return-void
.end method

.method public glViewport(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2576
    const-string v0, "glViewport"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 2577
    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2578
    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2579
    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2580
    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 2581
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 2582
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 2583
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 2584
    return-void
.end method

.method public glWeightPointerOES(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 3440
    const-string v0, "glWeightPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3441
    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3442
    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3443
    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3444
    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 3445
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3446
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIII)V

    .line 3447
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3448
    return-void
.end method

.method public glWeightPointerOES(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 3432
    const-string v0, "glWeightPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    .line 3433
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    .line 3434
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    .line 3435
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIILjava/nio/Buffer;)V

    .line 3436
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    .line 3437
    return-void
.end method

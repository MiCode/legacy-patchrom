.class Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;
.super Ljava/lang/Object;
.source "CameraShutterRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/View/CameraShutterRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraShutterObject"
.end annotation


# static fields
.field private static final SIDELENGTH:F = 2.0f

.field private static final VERTS:I = 0x4


# instance fields
.field coords:[F

.field indices:[S

.field private mFVertexBuffer:Ljava/nio/FloatBuffer;

.field private mIndexBuffer:Ljava/nio/ShortBuffer;

.field private mTexBuffer:Ljava/nio/FloatBuffer;

.field final synthetic this$0:Lcom/motorola/CameraF/View/CameraShutterRender;


# direct methods
.method public constructor <init>(Lcom/motorola/CameraF/View/CameraShutterRender;)V
    .locals 4
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->this$0:Lcom/motorola/CameraF/View/CameraShutterRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/16 v3, 0xc

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->coords:[F

    .line 191
    const/4 v3, 0x6

    new-array v3, v3, [S

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->indices:[S

    .line 195
    const/16 v3, 0x30

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 196
    .local v2, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 197
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    .line 199
    const/16 v3, 0x20

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 200
    .local v1, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 201
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->mTexBuffer:Ljava/nio/FloatBuffer;

    .line 203
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 204
    .local v0, ibb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 205
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 207
    return-void

    .line 184
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xc0t
        0x0t 0x0t 0x0t 0xc0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xc0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0xc0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 191
    :array_1
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x0t 0x0t
        0x2t 0x0t
        0x3t 0x0t
    .end array-data
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .parameter "gl"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    const/4 v6, 0x0

    .line 210
    iget-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->this$0:Lcom/motorola/CameraF/View/CameraShutterRender;

    iget v3, v3, Lcom/motorola/CameraF/View/CameraShutterRender;->mShutterStatus:I

    if-eq v3, v7, :cond_1

    .line 211
    iget-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->this$0:Lcom/motorola/CameraF/View/CameraShutterRender;

    iget v3, v3, Lcom/motorola/CameraF/View/CameraShutterRender;->mTexScale:F

    sub-float v3, v4, v3

    div-float v1, v3, v5

    .line 212
    .local v1, x1:F
    iget-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->this$0:Lcom/motorola/CameraF/View/CameraShutterRender;

    iget v3, v3, Lcom/motorola/CameraF/View/CameraShutterRender;->mTexScale:F

    add-float/2addr v3, v4

    div-float v2, v3, v5

    .line 218
    .local v2, x2:F
    :goto_0
    const/16 v3, 0x8

    new-array v0, v3, [F

    aput v1, v0, v6

    aput v1, v0, v7

    aput v1, v0, v8

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v3, 0x4

    aput v2, v0, v3

    const/4 v3, 0x5

    aput v2, v0, v3

    const/4 v3, 0x6

    aput v2, v0, v3

    const/4 v3, 0x7

    aput v1, v0, v3

    .line 224
    .local v0, textcoords:[F
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "CameraCircleShutter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTexScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->this$0:Lcom/motorola/CameraF/View/CameraShutterRender;

    iget v5, v5, Lcom/motorola/CameraF/View/CameraShutterRender;->mTexScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x1 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x2 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iget-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->coords:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 226
    iget-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 227
    iget-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->mIndexBuffer:Ljava/nio/ShortBuffer;

    iget-object v4, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->indices:[S

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 228
    iget-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 229
    iget-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    iget-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 231
    const/4 v3, 0x3

    const/16 v4, 0x1406

    iget-object v5, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v3, v4, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 232
    const/16 v3, 0x1406

    iget-object v4, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v3, v6, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 233
    const/4 v3, 0x4

    const/4 v4, 0x6

    const/16 v5, 0x1403

    iget-object v6, p0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 234
    return-void

    .line 215
    .end local v0           #textcoords:[F
    .end local v1           #x1:F
    .end local v2           #x2:F
    :cond_1
    const/high16 v1, -0x4100

    .line 216
    .restart local v1       #x1:F
    const/high16 v2, 0x3fc0

    .restart local v2       #x2:F
    goto/16 :goto_0
.end method

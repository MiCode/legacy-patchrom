.class public Lcom/motorola/CameraF/View/DLSRShutterRenderer;
.super Ljava/lang/Object;
.source "DLSRShutterRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field static final SHUTTERS:F = 8.0f

.field static final STEPS:I = 0xa

.field private static final VERTS:I = 0x1c

.field private static bRunning:Z

.field static count:I

.field static currentStep:I

.field static currentTime:J

.field private static moveUp:Z

.field private static ratio:F


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field endCoords:[I

.field incDirection:I

.field mCallBackHander:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFVertexBuffer:Ljava/nio/FloatBuffer;

.field private mIndexBuffer:Ljava/nio/ShortBuffer;

.field private mTexBuffer:Ljava/nio/FloatBuffer;

.field private mTextureID:I

.field startCoords:[I

.field texCoords:[I

.field timeMills:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    sput-boolean v1, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->bRunning:Z

    .line 261
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->moveUp:Z

    .line 262
    sput v1, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->currentStep:I

    .line 263
    sput v1, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->count:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0x54

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 265
    const/4 v4, -0x1

    iput v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->incDirection:I

    .line 275
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->timeMills:J

    .line 277
    new-array v4, v6, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->startCoords:[I

    .line 286
    new-array v4, v6, [I

    fill-array-data v4, :array_1

    iput-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->endCoords:[I

    .line 295
    const/16 v4, 0x38

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    iput-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->texCoords:[I

    .line 56
    iput-object p1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mContext:Landroid/content/Context;

    .line 65
    const/16 v4, 0x150

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 66
    .local v3, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    .line 69
    const/16 v4, 0xe0

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 70
    .local v2, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mTexBuffer:Ljava/nio/FloatBuffer;

    .line 73
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 74
    .local v1, ibb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 78
    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    const/4 v0, 0x4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 80
    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    mul-int/lit8 v5, v0, 0x4

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 81
    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 82
    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x3

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 83
    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x3

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 84
    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 85
    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    mul-int/lit8 v5, v0, 0x4

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 79
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 87
    :cond_0
    const/4 v0, 0x6

    :goto_1
    const/4 v4, 0x5

    if-lt v0, v4, :cond_1

    .line 88
    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    mul-int/lit8 v5, v0, 0x4

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 89
    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 90
    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x3

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 91
    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x3

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 92
    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 93
    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    mul-int/lit8 v5, v0, 0x4

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 87
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 98
    :cond_1
    return-void

    .line 277
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x43t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x43t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7ct 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x7ct 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x29t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x29t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x18t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa4t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0xa4t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x7t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0xb8t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x17t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x17t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2et 0x3t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x80t 0x3t 0x0t 0x0t
        0x32t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc6t 0x3t 0x0t 0x0t
        0x78t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x4t 0x0t 0x0t
        0xcat 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2et 0x3t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x80t 0x3t 0x0t 0x0t
        0x32t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc6t 0x3t 0x0t 0x0t
        0x78t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x4t 0x0t 0x0t
        0xcat 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 286
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xdbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0xdbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x18t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x27t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x27t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x8at 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x8at 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x83t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x83t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xe2t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0xe2t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2et 0x3t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa2t 0x3t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2et 0x3t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa2t 0x3t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2et 0x3t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa2t 0x3t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2et 0x3t 0x0t 0x0t
        0x4t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa2t 0x3t 0x0t 0x0t
        0x4t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 295
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0xedt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3dt 0x1t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x3dt 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7at 0x1t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x7at 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x1t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0xb8t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbbt 0x1t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0xbbt 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbbt 0x1t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0xbbt 0x1t 0x0t 0x0t
    .end array-data
.end method

.method private draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .parameter "gl"

    .prologue
    const/16 v11, 0x1406

    const/16 v10, 0xa

    const/4 v9, 0x1

    const/high16 v8, 0x43f0

    const/4 v7, 0x0

    .line 305
    iget-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 306
    iget-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 308
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x54

    if-ge v0, v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->startCoords:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->endCoords:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->startCoords:[I

    aget v4, v4, v0

    sub-int/2addr v3, v4

    sget v4, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->currentStep:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 312
    iget-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    const/high16 v2, 0x3f80

    iget-object v3, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->startCoords:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->endCoords:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->startCoords:[I

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    sget v5, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->currentStep:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 315
    iget-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 308
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 317
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x38

    if-ge v0, v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mTexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->texCoords:[I

    aget v2, v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x4400

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 321
    iget-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 322
    iget-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v7}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 324
    const/16 v1, 0x901

    invoke-static {v1}, Landroid/opengl/GLES10;->glFrontFace(I)V

    .line 325
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v1, v11, v7, v2}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 326
    const/16 v1, 0xde1

    invoke-static {v1}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 327
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v1, v11, v7, v2}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 328
    const/4 v1, 0x4

    const/16 v2, 0x2a

    const/16 v3, 0x1403

    iget-object v4, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 329
    sget-boolean v1, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->bRunning:Z

    if-eqz v1, :cond_2

    .line 330
    sget-boolean v1, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->moveUp:Z

    if-eqz v1, :cond_3

    .line 331
    sget v1, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->currentStep:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->currentStep:I

    .line 332
    sget v1, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->currentStep:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->currentStep:I

    .line 333
    sget v1, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->currentStep:I

    if-le v1, v10, :cond_2

    .line 334
    sput v10, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->currentStep:I

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 357
    :cond_2
    :goto_2
    return-void

    .line 338
    :cond_3
    sget v1, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->currentStep:I

    sub-int/2addr v1, v9

    sput v1, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->currentStep:I

    .line 339
    sget v1, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->currentStep:I

    if-ge v1, v9, :cond_2

    .line 340
    sput-boolean v7, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->bRunning:Z

    .line 341
    sput v7, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->currentStep:I

    .line 342
    iget-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mCallBackHander:Landroid/os/Handler;

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method


# virtual methods
.method public SetCallBackHandle(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mCallBackHander:Landroid/os/Handler;

    .line 254
    return-void
.end method

.method public SetMovingUp(Z)V
    .locals 0
    .parameter "up"

    .prologue
    .line 250
    sput-boolean p1, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->moveUp:Z

    .line 251
    return-void
.end method

.method public SetRunning(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 242
    sput-boolean p1, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->bRunning:Z

    .line 243
    const/4 v0, 0x0

    sput v0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->currentStep:I

    .line 244
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->moveUp:Z

    .line 246
    return-void
.end method

.method public initialImage()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v1, "w20919 Camera Shutter"

    const-string v2, "initialImage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 169
    .local v0, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v1

    .line 172
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 175
    :goto_1
    throw v1

    .line 173
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .parameter "gl"

    .prologue
    const/16 v11, 0x2901

    const/16 v10, 0xde1

    const/4 v1, 0x0

    .line 186
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 188
    const/16 v0, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    .line 195
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES10;->glClear(I)V

    .line 201
    const/16 v0, 0x1700

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 202
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 205
    const/high16 v3, 0x40a0

    const/high16 v8, 0x3f80

    move-object v0, p1

    move v2, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 207
    const v0, 0x8074

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 208
    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 210
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES10;->glActiveTexture(I)V

    .line 211
    iget v0, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mTextureID:I

    invoke-static {v10, v0}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 212
    const/16 v0, 0x2802

    invoke-static {v10, v0, v11}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 213
    const/16 v0, 0x2803

    invoke-static {v10, v0, v11}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 215
    sget-boolean v0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->bRunning:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 217
    sget v0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->count:I

    .line 220
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7
    .parameter "gl"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 223
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES10;->glViewport(IIII)V

    .line 230
    int-to-float v0, p2

    int-to-float v2, p3

    div-float/2addr v0, v2

    sput v0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->ratio:F

    .line 231
    const-string v0, "Camera Shutter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", h ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ratio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->ratio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/16 v0, 0x1701

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 233
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 236
    sget v2, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->ratio:F

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4040

    const/high16 v6, 0x40e0

    move-object v0, p1

    move v3, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 237
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->moveUp:Z

    .line 239
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8
    .parameter "gl"
    .parameter "config"

    .prologue
    const/4 v7, 0x1

    const v6, 0x47012f00

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xde1

    .line 107
    const-string v1, "Camera Shutter"

    const-string v2, "onSurfaceCreated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/16 v1, 0xbd0

    invoke-static {v1}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 114
    const/16 v1, 0xc50

    const/16 v2, 0x1101

    invoke-static {v1, v2}, Landroid/opengl/GLES10;->glHint(II)V

    .line 115
    invoke-static {v3, v3, v3, v3}, Landroid/opengl/GLES10;->glClearColor(FFFF)V

    .line 116
    const/16 v1, 0x1d01

    invoke-static {v1}, Landroid/opengl/GLES10;->glShadeModel(I)V

    .line 117
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 118
    invoke-static {v4}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 119
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 120
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    .line 126
    new-array v0, v7, [I

    .line 127
    .local v0, textures:[I
    invoke-static {v7, v0, v5}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    .line 129
    aget v1, v0, v5

    iput v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mTextureID:I

    .line 130
    iget v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->mTextureID:I

    invoke-static {v4, v1}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 132
    const/16 v1, 0x2801

    const/high16 v2, 0x4618

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES10;->glTexParameterf(IIF)V

    .line 133
    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-static {v4, v1, v2}, Landroid/opengl/GLES10;->glTexParameterf(IIF)V

    .line 135
    const/16 v1, 0x2802

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES10;->glTexParameterf(IIF)V

    .line 136
    const/16 v1, 0x2803

    invoke-static {v4, v1, v6}, Landroid/opengl/GLES10;->glTexParameterf(IIF)V

    .line 138
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const v3, 0x45f00800

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES10;->glTexEnvf(IIF)V

    .line 154
    iget-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v5, v1, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 156
    iget-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 158
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/CameraF/View/DLSRShutterRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 159
    return-void
.end method

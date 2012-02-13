.class Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;
.super Ljava/lang/Object;
.source "entirePanRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/CameraF/View/Opengl/entirePanRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Quater1"
.end annotation


# instance fields
.field gusturePoints:[F

.field gustureTex:[F

.field private mFVertexBuffer:Ljava/nio/FloatBuffer;

.field private mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mTexBuffer:Ljava/nio/FloatBuffer;

.field points:[F

.field texs:[F

.field texsLabel:[F

.field texsLabelPoint:[F

.field texsback:[F

.field final synthetic this$0:Lcom/motorola/CameraF/View/Opengl/entirePanRender;


# direct methods
.method public constructor <init>(Lcom/motorola/CameraF/View/Opengl/entirePanRender;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0x8

    .line 411
    iput-object p1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->this$0:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    const/16 v3, 0x30

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 423
    .local v1, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 424
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    .line 426
    const/16 v3, 0x20

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 427
    .local v2, vbb1:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 428
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    .line 430
    const/4 v3, 0x6

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    .line 434
    .local v0, indices:[B
    array-length v3, v0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 435
    iget-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 436
    iget-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 438
    new-array v3, v6, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->points:[F

    .line 444
    new-array v3, v6, [F

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->gusturePoints:[F

    .line 450
    new-array v3, v5, [F

    fill-array-data v3, :array_3

    iput-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->gustureTex:[F

    .line 462
    new-array v3, v5, [F

    fill-array-data v3, :array_4

    iput-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->texsback:[F

    .line 470
    new-array v3, v5, [F

    fill-array-data v3, :array_5

    iput-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->texs:[F

    .line 477
    new-array v3, v6, [F

    fill-array-data v3, :array_6

    iput-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->texsLabelPoint:[F

    .line 493
    return-void

    .line 430
    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x2t
        0x3t
        0x0t
    .end array-data

    .line 438
    nop

    :array_1
    .array-data 0x4
        0x9at 0x99t 0x19t 0xbft
        0x9at 0x99t 0x19t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x19t 0xbft
        0x9at 0x99t 0x19t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x19t 0x3ft
        0x9at 0x99t 0x19t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x19t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 444
    :array_2
    .array-data 0x4
        0xcdt 0xcct 0x2ct 0xc0t
        0x5ct 0x8ft 0xc2t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x2ct 0xc0t
        0x5ct 0x8ft 0xc2t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x2ct 0x40t
        0x5ct 0x8ft 0xc2t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x2ct 0x40t
        0x5ct 0x8ft 0xc2t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 450
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xe9t 0x26t 0x31t 0x3et
        0x0t 0x0t 0x0t 0x0t
        0x46t 0xb6t 0x53t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x46t 0xb6t 0x53t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0xe9t 0x26t 0x31t 0x3et
    .end array-data

    .line 462
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 470
    :array_5
    .array-data 0x4
        0xc3t 0xf5t 0xa8t 0xbet
        0x7bt 0x14t 0x2et 0xbet
        0xc3t 0xf5t 0xa8t 0xbet
        0x0t 0x0t 0xc0t 0x3ft
        0x71t 0x3dt 0xaat 0x3ft
        0x0t 0x0t 0xc0t 0x3ft
        0x71t 0x3dt 0xaat 0x3ft
        0x7bt 0x14t 0x2et 0xbet
    .end array-data

    .line 477
    :array_6
    .array-data 0x4
        0xb8t 0x1et 0x5t 0xbft
        0x0t 0x0t 0x80t 0xbet
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x1et 0x5t 0xbft
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x1et 0x5t 0x3ft
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x1et 0x5t 0x3ft
        0x0t 0x0t 0x80t 0xbet
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 7
    .parameter "gl"
    .parameter "offset"

    .prologue
    const/16 v6, 0x1406

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 496
    const/16 v1, 0x901

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 498
    const/16 v1, 0x1d00

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 499
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 500
    const v1, 0x84c0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 502
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 503
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 504
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->points:[F

    mul-int/lit8 v3, v0, 0x3

    aget v2, v2, v3

    add-float/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 505
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->points:[F

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 506
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->points:[F

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 511
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 512
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->texsback:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 513
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 515
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 516
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 517
    const/4 v1, 0x6

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 521
    return-void
.end method

.method public drawGestrueBk(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const/16 v6, 0x1406

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 579
    const/16 v1, 0x901

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 581
    const/16 v1, 0x1d00

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 582
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 583
    const v1, 0x84c0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 585
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 587
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 588
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->gusturePoints:[F

    mul-int/lit8 v3, v0, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->this$0:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    #getter for: Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mFactor:F
    invoke-static {v3}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->access$000(Lcom/motorola/CameraF/View/Opengl/entirePanRender;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 589
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->gusturePoints:[F

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 590
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->gusturePoints:[F

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 597
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 598
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->gustureTex:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 599
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 601
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 602
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 603
    const/4 v1, 0x6

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 605
    return-void
.end method

.method public drawLable(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 7
    .parameter "gl"
    .parameter "offset"

    .prologue
    const/16 v6, 0x1406

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 524
    const/16 v1, 0x901

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 526
    const/16 v1, 0x1d00

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 527
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 528
    const v1, 0x84c0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 530
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 532
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 533
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->texsLabelPoint:[F

    mul-int/lit8 v3, v0, 0x3

    aget v2, v2, v3

    add-float/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 534
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->texsLabelPoint:[F

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 535
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->texsLabelPoint:[F

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 540
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 541
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->texsback:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 542
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 544
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 545
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 546
    const/4 v1, 0x6

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 549
    return-void
.end method

.method public drawbk(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 7
    .parameter "gl"
    .parameter "f"

    .prologue
    const/16 v6, 0x1406

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 552
    const/16 v1, 0x901

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 554
    const/16 v1, 0x1d00

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 555
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 556
    const v1, 0x84c0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 558
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 559
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 560
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->points:[F

    mul-int/lit8 v3, v0, 0x3

    aget v2, v2, v3

    add-float/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 561
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->points:[F

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 562
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->points:[F

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 567
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 568
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->texsback:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 569
    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 571
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 572
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v6, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 573
    const/4 v1, 0x6

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 576
    return-void
.end method

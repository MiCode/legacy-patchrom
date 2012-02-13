.class public Lcom/motorola/server/DisplayPointer;
.super Ljava/lang/Object;
.source "DisplayPointer.java"


# static fields
.field private static final DISPLAY_POINTER_DELAY:I = 0x1388

.field private static final POINTER_HEIGHT:I = 0x28

.field private static final POINTER_STROKE:I = 0x4

.field private static final POINTER_WIDTH:I = 0x18

.field static final TAG:Ljava/lang/String; = "DisplayPointer"


# instance fields
.field private final mDismissDisplayPointerRunner:Ljava/lang/Runnable;

.field private mDisplayHeight:I

.field private final mDisplayPointerControlHandler:Landroid/os/Handler;

.field private mDisplayWidth:I

.field private mPointerDisplayed:Z

.field public mPointerSurface:Landroid/view/Surface;

.field private mPtrDispX:I

.field private mPtrDispY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/server/DisplayPointer;->mDisplayPointerControlHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/server/DisplayPointer$1;

    invoke-direct {v0, p0}, Lcom/motorola/server/DisplayPointer$1;-><init>(Lcom/motorola/server/DisplayPointer;)V

    iput-object v0, p0, Lcom/motorola/server/DisplayPointer;->mDismissDisplayPointerRunner:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/server/DisplayPointer;->mPointerDisplayed:Z

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/server/DisplayPointer;->mPointerDisplayed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    iget-object v0, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->hide()V

    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/server/DisplayPointer;->mPointerDisplayed:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Landroid/view/SurfaceSession;II)Z
    .locals 16
    .parameter "surfaceSession"
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/4 v14, 0x1

    .local v14, result:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/server/DisplayPointer;->mDisplayHeight:I

    move v2, v0

    move/from16 v0, p2

    move v1, v2

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/server/DisplayPointer;->mDisplayWidth:I

    move v2, v0

    move/from16 v0, p3

    move v1, v2

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/server/DisplayPointer;->mPtrDispX:I

    move v15, v0

    .local v15, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/server/DisplayPointer;->mPtrDispY:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/server/DisplayPointer;->mPtrDispX:I

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/server/DisplayPointer;->mPtrDispY:I

    .end local v15           #x:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    move-object v2, v0

    if-nez v2, :cond_1

    const/16 v2, 0x18

    sub-int v2, p2, v2

    div-int/lit8 v2, v2, 0x2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/server/DisplayPointer;->mPtrDispX:I

    const/16 v2, 0x28

    sub-int v2, p3, v2

    div-int/lit8 v2, v2, 0x2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/server/DisplayPointer;->mPtrDispY:I

    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/view/Surface;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x18

    const/16 v7, 0x28

    const/4 v8, -0x2

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;IIIIII)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v10

    .local v10, c:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .local v13, pnt:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x4080

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, -0x1

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .local v12, p:Landroid/graphics/Path;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v2, 0x41c0

    const/high16 v3, 0x41c0

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x4160

    const/high16 v3, 0x41c0

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41b0

    const/high16 v3, 0x4220

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x4180

    const/high16 v3, 0x4220

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x4100

    const/high16 v3, 0x41d0

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v2, 0x0

    const/high16 v3, 0x4208

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    invoke-virtual {v10, v12}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/high16 v2, -0x100

    invoke-virtual {v10, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v10, v12, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    move-object v2, v0

    invoke-virtual {v2, v10}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-static {}, Landroid/view/Surface;->openTransaction()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    move-object v2, v0

    const/16 v3, 0x18

    const/16 v4, 0x28

    invoke-virtual {v2, v3, v4}, Landroid/view/Surface;->setSize(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/Surface;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    .end local v10           #c:Landroid/graphics/Canvas;
    .end local v12           #p:Landroid/graphics/Path;
    .end local v13           #pnt:Landroid/graphics/Paint;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return v14

    :catch_0
    move-exception v2

    move-object v11, v2

    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "DisplayPointer"

    const-string v3, "Exception creating pointer surface"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v14, 0x0

    :try_start_3
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto :goto_0

    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public isDisplayed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/server/DisplayPointer;->mPointerDisplayed:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleDismissDisplayPointer()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/motorola/server/DisplayPointer;->mDisplayPointerControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/server/DisplayPointer;->mDismissDisplayPointerRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/motorola/server/DisplayPointer;->mDisplayPointerControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/server/DisplayPointer;->mDismissDisplayPointerRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showABS(Landroid/view/MotionEvent;I)Z
    .locals 6
    .parameter "event"
    .parameter "layer"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .local v3, y:I
    const/4 v1, 0x1

    .local v1, result:Z
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/motorola/server/DisplayPointer;->mPtrDispX:I

    if-ne v2, v4, :cond_0

    iget v4, p0, Lcom/motorola/server/DisplayPointer;->mPtrDispY:I

    if-eq v3, v4, :cond_2

    :cond_0
    invoke-static {}, Landroid/view/Surface;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    invoke-virtual {v4, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    iget-object v4, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    invoke-virtual {v4, p2}, Landroid/view/Surface;->setLayer(I)V

    iget-boolean v4, p0, Lcom/motorola/server/DisplayPointer;->mPointerDisplayed:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/motorola/server/DisplayPointer;->mPointerSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->show()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/motorola/server/DisplayPointer;->mPointerDisplayed:Z

    :cond_1
    iput v2, p0, Lcom/motorola/server/DisplayPointer;->mPtrDispX:I

    iput v3, p0, Lcom/motorola/server/DisplayPointer;->mPtrDispY:I

    invoke-virtual {p0}, Lcom/motorola/server/DisplayPointer;->scheduleDismissDisplayPointer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v4, "DisplayPointer"

    const-string v5, "Failure showing mouse surface"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x0

    :try_start_4
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {}, Landroid/view/Surface;->closeTransaction()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

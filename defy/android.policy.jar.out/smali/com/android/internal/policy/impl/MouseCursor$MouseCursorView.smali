.class public Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;
.super Landroid/view/View;
.source "MouseCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MouseCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MouseCursorView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MouseCursor"


# instance fields
.field private mCurNumPointers:I

.field private mDisplay:Landroid/view/Display;

.field private mMaxNumPointers:I

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/policy/impl/MouseCursor;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MouseCursor;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "c"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->this$0:Lcom/android/internal/policy/impl/MouseCursor;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mDisplay:Landroid/view/Display;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mPointers:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->setFocusable(Z)V

    new-instance v0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;-><init>(Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;)V

    .local v0, ps:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mDisplay:Landroid/view/Display;

    return-void
.end method

.method private drawCursorAt(Landroid/graphics/Canvas;FF)V
    .locals 7
    .parameter "c"
    .parameter "absX"
    .parameter "absY"

    .prologue
    const/high16 v6, 0x4220

    const/high16 v5, 0x41c0

    const/4 v4, 0x0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .local v1, pnt:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x4080

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .local v0, p:Landroid/graphics/Path;
    add-float v2, v4, p2

    add-float v3, v4, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v2, v5, p2

    add-float v3, v5, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x4160

    add-float/2addr v2, p2

    add-float v3, v5, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41b0

    add-float/2addr v2, p2

    add-float v3, v6, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x4180

    add-float/2addr v2, p2

    add-float v3, v6, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x4100

    add-float/2addr v2, p2

    const/high16 v3, 0x41d0

    add-float/2addr v3, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v2, v4, p2

    const/high16 v3, 0x4208

    add-float/2addr v3, p3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/high16 v2, -0x100

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->this$0:Lcom/android/internal/policy/impl/MouseCursor;

    #calls: Lcom/android/internal/policy/impl/MouseCursor;->scheduleHideMouseCurosr()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/MouseCursor;->access$200(Lcom/android/internal/policy/impl/MouseCursor;)V

    return-void
.end method


# virtual methods
.method public addTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const-string v11, "MouseCursor"

    invoke-static {}, Lcom/android/internal/policy/impl/MouseCursor;->access$400()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "MouseCursor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " addTouchEvent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from source:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mPointers:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .local v3, action:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, NP:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v10

    and-int/lit16 v10, v10, 0x2002

    const/16 v11, 0x2002

    if-eq v10, v11, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/MouseCursor;->access$400()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "MouseCursor"

    const-string v11, "hide cursor for non-mouse events"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->this$0:Lcom/android/internal/policy/impl/MouseCursor;

    #calls: Lcom/android/internal/policy/impl/MouseCursor;->hide()V
    invoke-static {v10}, Lcom/android/internal/policy/impl/MouseCursor;->access$100(Lcom/android/internal/policy/impl/MouseCursor;)V

    monitor-exit v9

    :goto_0
    return-void

    :cond_2
    iget-object v10, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->this$0:Lcom/android/internal/policy/impl/MouseCursor;

    iget-object v10, v10, Lcom/android/internal/policy/impl/MouseCursor;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v11, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->this$0:Lcom/android/internal/policy/impl/MouseCursor;

    #calls: Lcom/android/internal/policy/impl/MouseCursor;->show()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/MouseCursor;->access$500(Lcom/android/internal/policy/impl/MouseCursor;)V

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x2

    if-ne v3, v10, :cond_4

    const/4 v7, 0x0

    .local v7, p:I
    :goto_1
    if-ge v7, v2, :cond_3

    :try_start_2
    const-string v10, "MouseCursor"

    const-string v11, "clean PointerState"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;

    .local v8, ps:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;
    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->clearTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7           #p:I
    .end local v8           #ps:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11

    .end local v2           #NP:I
    .end local v3           #action:I
    :catchall_1
    move-exception v10

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .restart local v2       #NP:I
    .restart local v3       #action:I
    .restart local v7       #p:I
    :cond_3
    const/4 v10, 0x0

    :try_start_5
    iput v10, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mMaxNumPointers:I

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->setVisibility(I)V

    .end local v7           #p:I
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .local v1, NI:I
    iput v1, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mCurNumPointers:I

    iget v10, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mMaxNumPointers:I

    iget v11, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mCurNumPointers:I

    if-ge v10, v11, :cond_5

    iget v10, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mCurNumPointers:I

    iput v10, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mMaxNumPointers:I

    :cond_5
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v1, :cond_7

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .local v5, id:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;

    .restart local v8       #ps:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .local v0, N:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    if-ge v6, v0, :cond_6

    #getter for: Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->access$300(Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v10

    invoke-virtual {p1, v4, v6, v10}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    invoke-virtual {p1, v4, v6}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v10

    invoke-virtual {p1, v4, v6}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v11

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->addTrace(FF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    #getter for: Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->access$300(Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v10

    invoke-virtual {p1, v4, v10}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    #getter for: Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->access$300(Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v10

    iget v10, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    #getter for: Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->access$300(Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->addTrace(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0           #N:I
    .end local v5           #id:I
    .end local v6           #j:I
    .end local v8           #ps:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->postInvalidate()V

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    iget-object v3, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mPointers:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, NP:I
    const/4 v1, 0x0

    .local v1, p:I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;

    .local v2, ps:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;
    #getter for: Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->access$300(Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v4

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    #getter for: Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->access$300(Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-direct {p0, p1, v4, v5}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->drawCursorAt(Landroid/graphics/Canvas;FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #ps:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;
    :cond_0
    monitor-exit v3

    return-void

    .end local v0           #NP:I
    .end local v1           #p:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/MouseCursor;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MouseCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->addTouchEvent(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/MouseCursor;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MouseCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trackball: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

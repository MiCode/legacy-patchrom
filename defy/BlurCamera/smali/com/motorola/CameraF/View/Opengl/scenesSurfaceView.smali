.class public Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "scenesSurfaceView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final SCROLLONE:Z = true

.field private static TAG:Ljava/lang/String; = null

.field private static final THRESHOLD:I = 0x8


# instance fields
.field private gestureScanner:Landroid/view/GestureDetector;

.field private mCallbackHander:Landroid/os/Handler;

.field private mDis:F

.field private mDisForOne:F

.field private mInitAngle:F

.field private mSceneRender:Lcom/motorola/CameraF/View/Opengl/entirePanRender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "scrollSurfaceView"

    sput-object v0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 36
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 28
    iput v2, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mDis:F

    .line 29
    const v0, 0x40333333

    iput v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mDisForOne:F

    .line 30
    iput v2, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mInitAngle:F

    .line 39
    new-instance v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    invoke-direct {v0, p1}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mSceneRender:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    .line 40
    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 42
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mSceneRender:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 45
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 47
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->gestureScanner:Landroid/view/GestureDetector;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v2, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mDis:F

    .line 29
    const v0, 0x40333333

    iput v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mDisForOne:F

    .line 30
    iput v2, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mInitAngle:F

    .line 53
    new-instance v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    invoke-direct {v0, p1}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mSceneRender:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    .line 56
    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 57
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mSceneRender:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 59
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->gestureScanner:Landroid/view/GestureDetector;

    .line 60
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 61
    return-void
.end method

.method private isEqualF(FF)Z
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 244
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rotateToCenter()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method


# virtual methods
.method public closeScrollView()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mSceneRender:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->setFadingOut(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->requestRender()V

    .line 84
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 159
    sget-object v0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDown:e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 171
    sget-object v0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling: velocityX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 132
    sget-object v0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->TAG:Ljava/lang/String;

    const-string v1, "onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->turnToPre()V

    move v0, v2

    .line 140
    :goto_0
    return v0

    .line 136
    :cond_0
    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->turnToNext()V

    move v0, v2

    .line 138
    goto :goto_0

    .line 140
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 185
    sget-object v0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->TAG:Ljava/lang/String;

    const-string v1, "onLongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 218
    sget-object v0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->TAG:Ljava/lang/String;

    const-string v1, "onShowPress"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    .line 223
    sget-object v3, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSingleTapUp, e.x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->getLeft()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "right="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->getRight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 226
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 228
    .local v2, y:I
    iget-object v3, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mSceneRender:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    invoke-virtual {v3}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->isMoving()Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mCallbackHander:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 234
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mCallbackHander:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->gestureScanner:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCallbackHandler(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mCallbackHander:Landroid/os/Handler;

    .line 65
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mSceneRender:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->setCallbackHandler(Landroid/os/Handler;)V

    .line 66
    return-void
.end method

.method public setCurrentScenes(IZ)V
    .locals 2
    .parameter "currentScenes"
    .parameter "isScene"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mSceneRender:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->setCurrentScenes(IZ)V

    .line 77
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mSceneRender:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->setFadingOut(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->requestRender()V

    .line 79
    return-void
.end method

.method public setScenesNum(I)V
    .locals 1
    .parameter "m"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mSceneRender:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->setScenesNum(I)V

    .line 70
    return-void
.end method

.method public turnToNext()V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->TAG:Ljava/lang/String;

    const-string v1, "scrollPre"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mSceneRender:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    iget v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mDisForOne:F

    neg-float v0, v0

    iput v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mDis:F

    .line 104
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mSceneRender:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    iget v1, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mDis:F

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->setTransx(F)V

    .line 106
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public turnToPre()V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->TAG:Ljava/lang/String;

    const-string v1, "scrollNext"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mSceneRender:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    invoke-virtual {v0}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    iget v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mDisForOne:F

    iput v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mDis:F

    .line 90
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mSceneRender:Lcom/motorola/CameraF/View/Opengl/entirePanRender;

    iget v1, p0, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->mDis:F

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->setTransx(F)V

    .line 94
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/Opengl/scenesSurfaceView;->requestRender()V

    goto :goto_0
.end method

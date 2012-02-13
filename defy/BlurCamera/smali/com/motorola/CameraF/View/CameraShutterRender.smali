.class public Lcom/motorola/CameraF/View/CameraShutterRender;
.super Ljava/lang/Object;
.source "CameraShutterRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;
    }
.end annotation


# static fields
.field static final CLOSE_TIME:I = 0x1f4

.field public static final TAG:Ljava/lang/String; = "CameraCircleShutter"


# instance fields
.field final SHUTTERCLOSE:I

.field final SHUTTERHOLD:I

.field final SHUTTEROPEN:I

.field private bRunning:Z

.field mCallBackHander:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mShutterObject:Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;

.field mShutterStatus:I

.field mStartTime:J

.field mTexScale:F

.field final texScaleMax:F

.field final texScaleMin:F

.field final texScaleRange:F

.field textures:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/high16 v2, 0x3f00

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->SHUTTERCLOSE:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->SHUTTERHOLD:I

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->SHUTTEROPEN:I

    .line 29
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->texScaleMax:F

    .line 30
    iput v2, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->texScaleMin:F

    .line 31
    const/high16 v0, 0x4138

    iput v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->texScaleRange:F

    .line 34
    iput v1, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mShutterStatus:I

    .line 35
    iput v2, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mTexScale:F

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->textures:[I

    .line 39
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->bRunning:Z

    .line 45
    iput-object p1, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;-><init>(Lcom/motorola/CameraF/View/CameraShutterRender;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mShutterObject:Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;

    .line 47
    return-void
.end method


# virtual methods
.method public SetCallBackHandle(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mCallBackHander:Landroid/os/Handler;

    .line 155
    return-void
.end method

.method public declared-synchronized SetRunning(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->bRunning:Z

    .line 175
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mTexScale:F

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mShutterStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .parameter "gl"

    .prologue
    .line 102
    const/16 v0, 0x4500

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 103
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 104
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 105
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x4000

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 106
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 107
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 108
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 109
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mShutterStatus:I

    if-nez v0, :cond_1

    .line 112
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->bRunning:Z

    if-eqz v0, :cond_0

    .line 113
    iget v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mTexScale:F

    const/high16 v1, 0x3f00

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mStartTime:J

    .line 116
    iget v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mTexScale:F

    const v1, 0x3dcccccd

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mTexScale:F

    .line 122
    :cond_0
    :goto_0
    iget v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mTexScale:F

    const/high16 v1, 0x4140

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mShutterStatus:I

    .line 125
    :cond_1
    iget v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mShutterStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 126
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->bRunning:Z

    if-eqz v0, :cond_2

    .line 127
    iget v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mTexScale:F

    const v1, 0x3f59999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mTexScale:F

    .line 128
    :cond_2
    iget v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mTexScale:F

    const/high16 v1, 0x3f00

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/CameraShutterRender;->SetRunning(Z)V

    .line 131
    iget-object v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mCallBackHander:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 134
    :cond_3
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "CameraCircleShutter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new mTexScale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mTexScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mShutterStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 138
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->textures:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 143
    :goto_1
    const v0, 0x84c0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 145
    iget-object v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mShutterObject:Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/View/CameraShutterRender$CameraShutterObject;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 146
    return-void

    .line 118
    :cond_5
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 119
    .local v10, curr:J
    const/high16 v0, 0x3f00

    iget-wide v1, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mStartTime:J

    sub-long v1, v10, v1

    long-to-float v1, v1

    const/high16 v2, 0x4138

    mul-float/2addr v1, v2

    const/high16 v2, 0x43fa

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mTexScale:F

    goto :goto_0

    .line 135
    .end local v10           #curr:J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 141
    :cond_6
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->textures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    goto :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7
    .parameter "gl"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x3f80

    .line 166
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 167
    int-to-float v0, p2

    int-to-float v1, p3

    div-float v2, v0, v1

    .line 168
    .local v2, ratio:F
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 169
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 170
    neg-float v1, v2

    const/high16 v3, -0x4080

    const/high16 v6, 0x40e0

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 171
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraCircleShutter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ration = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 12
    .parameter "gl"
    .parameter "config"

    .prologue
    const v10, 0x47012f00

    const v9, 0x46180400

    const/4 v8, 0x0

    const/16 v7, 0xde1

    const-string v11, "CameraCircleShutter"

    .line 49
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "CameraCircleShutter"

    const-string v3, "onSurfaceCreated begin "

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    const/16 v3, 0xbd0

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 51
    const/16 v3, 0xc50

    const/16 v4, 0x1101

    invoke-static {v3, v4}, Landroid/opengl/GLES10;->glHint(II)V

    .line 52
    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES10;->glClearColor(FFFF)V

    .line 53
    const/16 v3, 0x1d01

    invoke-static {v3}, Landroid/opengl/GLES10;->glShadeModel(I)V

    .line 54
    const/16 v3, 0xb71

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 55
    invoke-static {v7}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 56
    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 57
    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-static {v3, v4}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    .line 58
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->textures:[I

    invoke-static {v3, v4, v8}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    .line 59
    iget-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->textures:[I

    aget v3, v3, v8

    invoke-interface {p1, v7, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 60
    iget-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 63
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 66
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    :goto_0
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1

    const-string v3, "CameraCircleShutter"

    const-string v3, "Load texture 1"

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    invoke-static {v7, v8, v1, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 73
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    const/16 v3, 0x2801

    invoke-interface {p1, v7, v3, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 75
    const/16 v3, 0x2800

    invoke-interface {p1, v7, v3, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 76
    const/16 v3, 0x2802

    invoke-interface {p1, v7, v3, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 77
    const/16 v3, 0x2803

    invoke-interface {p1, v7, v3, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 78
    const/16 v3, 0x2300

    const/16 v4, 0x2200

    const v5, 0x45f00800

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 79
    iget-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->textures:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-interface {p1, v7, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 80
    iget-object v3, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 83
    .local v0, anotheris:Ljava/io/InputStream;
    :try_start_2
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 86
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 91
    :goto_1
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_2

    const-string v3, "CameraCircleShutter"

    const-string v3, "Load texture2"

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_2
    invoke-static {v7, v8, v1, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 93
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    const/16 v3, 0x2801

    invoke-interface {p1, v7, v3, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 95
    const/16 v3, 0x2800

    invoke-interface {p1, v7, v3, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 96
    const/16 v3, 0x2802

    invoke-interface {p1, v7, v3, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 97
    const/16 v3, 0x2803

    invoke-interface {p1, v7, v3, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 98
    const/16 v3, 0x2300

    const/16 v4, 0x2200

    const v5, 0x45f00800

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 99
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_3

    const-string v3, "CameraCircleShutter"

    const-string v3, "onSurfaceCreated end "

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_3
    return-void

    .line 65
    .end local v0           #anotheris:Ljava/io/InputStream;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    .line 66
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 69
    :goto_2
    throw v3

    .line 85
    .restart local v0       #anotheris:Ljava/io/InputStream;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v3

    .line 86
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 89
    :goto_3
    throw v3

    .line 67
    .end local v0           #anotheris:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 87
    .restart local v0       #anotheris:Ljava/io/InputStream;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_3
.end method

.method public declared-synchronized openShutter()V
    .locals 2

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraCircleShutter"

    const-string v1, "openShutter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->bRunning:Z

    .line 150
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mTexScale:F

    .line 151
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/CameraF/View/CameraShutterRender;->mShutterStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sizeChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7
    .parameter "gl"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 159
    int-to-float v0, p2

    int-to-float v1, p3

    div-float v2, v0, v1

    .line 160
    .local v2, ratio:F
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 161
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 162
    neg-float v1, v2

    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4040

    const/high16 v6, 0x40e0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 163
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraCircleShutter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ration = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    return-void
.end method

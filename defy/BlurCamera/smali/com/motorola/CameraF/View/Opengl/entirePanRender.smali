.class public Lcom/motorola/CameraF/View/Opengl/entirePanRender;
.super Ljava/lang/Object;
.source "entirePanRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;
    }
.end annotation


# static fields
.field public static final DISTANCE:F = 2.8f

.field private static final FADEOUTSTEP:I = 0xf

.field public static final INIT:I = 0x0

.field private static final STEP:I = 0xa

.field private static final TAG:Ljava/lang/String; = "panRender"

.field public static final TURNLEFT:I = 0x1

.field public static final TURNRIGHT:I = 0x2

.field private static final ZERO:F = 0.0010f

.field private static mFadingOut:Z

.field private static mIsSceneMode:Z


# instance fields
.field private SCENESNUM:I

.field count:I

.field private currentScenes:I

.field private fadeoutAlf:F

.field private mCallbackHander:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private mFactor:F

.field private mLabelPaint:Landroid/graphics/Paint;

.field private mLabels:Lcom/motorola/CameraF/View/Opengl/LabelMaker;

.field private mPreTime:J

.field private mQuater:Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;

.field private mStatus:I

.field private mTransx:F

.field textures:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mIsSceneMode:Z

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mFadingOut:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->fadeoutAlf:F

    .line 48
    iput v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->count:I

    .line 50
    const/16 v0, 0x8

    iput v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->SCENESNUM:I

    .line 53
    iput v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mTransx:F

    .line 54
    iput v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->currentScenes:I

    .line 62
    iput v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mStatus:I

    .line 66
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mFactor:F

    .line 69
    iput-object p1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;-><init>(Lcom/motorola/CameraF/View/Opengl/entirePanRender;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mQuater:Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;

    .line 71
    sput-boolean v1, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mFadingOut:Z

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mLabelPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4210

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 77
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/CameraF/View/Opengl/entirePanRender;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mFactor:F

    return v0
.end method

.method private getNextNum(I)I
    .locals 2
    .parameter "k"

    .prologue
    .line 229
    iget v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->SCENESNUM:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private getNextSceneNum(II)I
    .locals 1
    .parameter "current"
    .parameter "status"

    .prologue
    .line 211
    packed-switch p2, :pswitch_data_0

    move v0, p1

    .line 217
    :goto_0
    return v0

    .line 213
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->getNextNum(I)I

    move-result v0

    goto :goto_0

    .line 215
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->getPreNum(I)I

    move-result v0

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPreNum(I)I
    .locals 2
    .parameter "k"

    .prologue
    const/4 v1, 0x1

    .line 221
    if-nez p1, :cond_0

    .line 222
    iget v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->SCENESNUM:I

    sub-int/2addr v0, v1

    .line 224
    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, v1

    goto :goto_0
.end method


# virtual methods
.method public drawGestureBack(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 239
    const/16 v0, 0xbc0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 241
    const/16 v0, 0x204

    const v1, 0x3e4ccccd

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 242
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 244
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->textures:[I

    iget v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->SCENESNUM:I

    mul-int/lit8 v2, v2, 0x2

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 245
    iget-object v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mQuater:Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;

    invoke-virtual {v0, p1}, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->drawGestrueBk(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 246
    return-void
.end method

.method public drawPanel(Ljavax/microedition/khronos/opengles/GL10;IF)V
    .locals 5
    .parameter "gl"
    .parameter "current"
    .parameter "offset"

    .prologue
    const/16 v4, 0xde1

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, next:I
    const/4 v1, 0x0

    .line 253
    .local v1, nextDis:F
    const/16 v2, 0xbc0

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 255
    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->textures:[I

    iget v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->SCENESNUM:I

    add-int/2addr v3, p2

    aget v2, v2, v3

    invoke-interface {p1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 256
    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mQuater:Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;

    invoke-virtual {v2, p1, p3}, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->drawLable(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 258
    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->textures:[I

    aget v2, v2, p2

    invoke-interface {p1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 259
    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mQuater:Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;

    invoke-virtual {v2, p1, p3}, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 261
    iget v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mTransx:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 262
    invoke-direct {p0, p2}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->getPreNum(I)I

    move-result v0

    .line 263
    const v1, -0x3fcccccd

    .line 270
    :goto_0
    sget-boolean v2, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mFadingOut:Z

    if-nez v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->textures:[I

    iget v3, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->SCENESNUM:I

    add-int/2addr v3, v0

    aget v2, v2, v3

    invoke-interface {p1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 272
    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mQuater:Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;

    add-float v3, v1, p3

    invoke-virtual {v2, p1, v3}, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->drawLable(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 274
    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->textures:[I

    aget v2, v2, v0

    invoke-interface {p1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 275
    iget-object v2, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mQuater:Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;

    add-float v3, v1, p3

    invoke-virtual {v2, p1, v3}, Lcom/motorola/CameraF/View/Opengl/entirePanRender$Quater1;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 278
    :cond_0
    return-void

    .line 266
    :cond_1
    invoke-direct {p0, p2}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->getNextNum(I)I

    move-result v0

    .line 267
    const v1, 0x40333333

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mStatus:I

    return v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mFadingOut:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mStatus:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 21
    .parameter "gl"

    .prologue
    .line 124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mPreTime:J

    .line 125
    const/16 v5, 0xbd0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 127
    const/16 v5, 0x2300

    const/16 v6, 0x2200

    const/16 v7, 0x2100

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 136
    const/16 v5, 0x4100

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 137
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 143
    const/16 v5, 0x1700

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 144
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 146
    const/high16 v6, -0x8000

    const/4 v7, 0x0

    const/high16 v8, 0x4090

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v14}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 148
    const v5, 0x8074

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 149
    const v5, 0x8078

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 151
    const v5, 0x84c0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mStatus:I

    move v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->count:I

    move v5, v0

    const/16 v6, 0xa

    if-ge v5, v6, :cond_0

    .line 154
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->count:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->count:I

    .line 156
    :cond_0
    const/4 v15, 0x0

    .line 157
    .local v15, alpha:F
    sget-boolean v5, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mFadingOut:Z

    if-eqz v5, :cond_5

    .line 158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->fadeoutAlf:F

    move v5, v0

    const/high16 v6, 0x4170

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->fadeoutAlf:F

    move v5, v0

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->fadeoutAlf:F

    .line 164
    :goto_0
    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->fadeoutAlf:F

    move v6, v0

    const/high16 v7, 0x4170

    div-float/2addr v6, v7

    sub-float v15, v5, v6

    .line 170
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mTransx:F

    move v5, v0

    const/high16 v6, 0x4120

    div-float v18, v5, v6

    .line 176
    .local v18, oneStep:F
    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v15

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 177
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->drawGestureBack(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 179
    sget-boolean v5, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mFadingOut:Z

    if-eqz v5, :cond_1

    .line 180
    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const v8, 0x3f333333

    mul-float/2addr v8, v15

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 182
    :cond_1
    sget-boolean v5, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mIsSceneMode:Z

    if-eqz v5, :cond_2

    .line 183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->currentScenes:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->count:I

    move v6, v0

    int-to-float v6, v6

    mul-float v6, v6, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->drawPanel(Ljavax/microedition/khronos/opengles/GL10;IF)V

    .line 186
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->count:I

    move v5, v0

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    .line 187
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->currentScenes:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mStatus:I

    move v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->getNextSceneNum(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->currentScenes:I

    .line 188
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mStatus:I

    .line 189
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->count:I

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mCallbackHander:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->currentScenes:I

    move v7, v0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    .line 192
    .local v17, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mCallbackHander:Landroid/os/Handler;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    .end local v17           #msg:Landroid/os/Message;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mCurrentTime:J

    .line 196
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mCurrentTime:J

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mPreTime:J

    move-wide v11, v0

    sub-long/2addr v9, v11

    sub-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    .line 200
    .local v19, sleeptime:J
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_2
    return-void

    .line 161
    .end local v18           #oneStep:F
    .end local v19           #sleeptime:J
    :cond_4
    const/4 v5, 0x0

    sput-boolean v5, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mFadingOut:Z

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mCallbackHander:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 167
    :cond_5
    const/high16 v15, 0x3f80

    goto/16 :goto_1

    .line 201
    .restart local v18       #oneStep:F
    .restart local v19       #sleeptime:J
    :catch_0
    move-exception v5

    move-object/from16 v16, v5

    .line 203
    .local v16, e:Ljava/lang/InterruptedException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x3f80

    .line 282
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 289
    const-string v0, "panRender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged:w="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "h="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    int-to-float v0, p2

    int-to-float v1, p3

    div-float v2, v0, v1

    .line 292
    .local v2, ratio:F
    iput v4, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mFactor:F

    .line 293
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 294
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 295
    neg-float v1, v2

    const/high16 v3, -0x4080

    const/high16 v5, 0x4040

    const/high16 v6, 0x40e0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 297
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 13
    .parameter "gl"
    .parameter "config"

    .prologue
    const v12, 0x47012f00

    const v11, 0x46180400

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v9, 0xde1

    .line 302
    const-string v5, "panRender"

    const-string v6, "onSurfaceCreated"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/16 v5, 0xbd0

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 307
    invoke-interface {p1, v7, v7, v7, v7}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 308
    const/16 v5, 0x1d01

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 310
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 312
    iget v5, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->SCENESNUM:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->textures:[I

    .line 313
    iget v5, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->SCENESNUM:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->textures:[I

    invoke-interface {p1, v5, v6, v10}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 317
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    iget v5, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->SCENESNUM:I

    if-ge v2, v5, :cond_0

    .line 318
    iget-object v5, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->textures:[I

    aget v5, v5, v2

    invoke-interface {p1, v9, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 320
    const/16 v5, 0x2801

    invoke-interface {p1, v9, v5, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 322
    const/16 v5, 0x2800

    invoke-interface {p1, v9, v5, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 327
    const/16 v5, 0x2802

    invoke-interface {p1, v9, v5, v12}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 330
    const/16 v5, 0x2803

    invoke-interface {p1, v9, v5, v12}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 333
    const/16 v5, 0x2300

    const/16 v6, 0x2200

    const v7, 0x45f00800

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 336
    iget-object v5, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v2}, Lcom/motorola/CameraF/CameraGlobalTools;->getCenterScenesResouce(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 339
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 342
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 347
    :goto_1
    invoke-static {v9, v10, v0, v10}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 348
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v5

    .line 342
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 345
    :goto_2
    throw v5

    .line 351
    .end local v1           #is:Ljava/io/InputStream;
    :cond_0
    const-string v5, "panRender"

    const-string v6, "begin LabelMaker"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v5, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mLabels:Lcom/motorola/CameraF/View/Opengl/LabelMaker;

    if-eqz v5, :cond_1

    .line 353
    iget-object v5, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mLabels:Lcom/motorola/CameraF/View/Opengl/LabelMaker;

    invoke-virtual {v5, p1}, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->shutdown(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 358
    :goto_3
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v5

    if-nez v5, :cond_2

    .line 359
    const v3, 0x7f07001d

    .line 367
    .local v3, mScenesTitleID:I
    :goto_4
    iget-object v5, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, scenesTitle:[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_5
    iget v5, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->SCENESNUM:I

    if-ge v2, v5, :cond_4

    .line 369
    iget-object v5, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mLabels:Lcom/motorola/CameraF/View/Opengl/LabelMaker;

    iget-object v6, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->textures:[I

    iget v7, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->SCENESNUM:I

    add-int/2addr v7, v2

    aget v6, v6, v7

    aget-object v7, v4, v2

    iget-object v8, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1, v6, v7, v8}, Lcom/motorola/CameraF/View/Opengl/LabelMaker;->generateLabelTex(Ljavax/microedition/khronos/opengles/GL10;ILjava/lang/String;Landroid/graphics/Paint;)V

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 355
    .end local v3           #mScenesTitleID:I
    .end local v4           #scenesTitle:[Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/motorola/CameraF/View/Opengl/LabelMaker;

    const/4 v6, 0x1

    const/16 v7, 0x100

    const/16 v8, 0x40

    invoke-direct {v5, v6, v7, v8}, Lcom/motorola/CameraF/View/Opengl/LabelMaker;-><init>(ZII)V

    iput-object v5, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mLabels:Lcom/motorola/CameraF/View/Opengl/LabelMaker;

    goto :goto_3

    .line 360
    :cond_2
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->AUDIOSCENES:Z

    if-eqz v5, :cond_3

    .line 361
    const v3, 0x7f070022

    .restart local v3       #mScenesTitleID:I
    goto :goto_4

    .line 363
    .end local v3           #mScenesTitleID:I
    :cond_3
    const v3, 0x7f070020

    .restart local v3       #mScenesTitleID:I
    goto :goto_4

    .line 374
    .restart local v4       #scenesTitle:[Ljava/lang/String;
    :cond_4
    const-string v5, "panRender"

    const-string v6, "load gesture mask land"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v5, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->textures:[I

    iget v6, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->SCENESNUM:I

    mul-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    invoke-interface {p1, v9, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 377
    const/16 v5, 0x2801

    invoke-interface {p1, v9, v5, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 379
    const/16 v5, 0x2800

    invoke-interface {p1, v9, v5, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 383
    const/16 v5, 0x2802

    invoke-interface {p1, v9, v5, v12}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 386
    const/16 v5, 0x2803

    invoke-interface {p1, v9, v5, v12}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 389
    const/16 v5, 0x2300

    const/16 v6, 0x2200

    const v7, 0x45f00800

    invoke-interface {p1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 392
    iget-object v5, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 395
    .restart local v1       #is:Ljava/io/InputStream;
    :try_start_3
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 398
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 403
    :goto_6
    invoke-static {v9, v10, v0, v10}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 404
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 406
    const-string v5, "panRender"

    const-string v6, "end LabelMaker"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void

    .line 397
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v5

    .line 398
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 401
    :goto_7
    throw v5

    .line 343
    .end local v3           #mScenesTitleID:I
    .end local v4           #scenesTitle:[Ljava/lang/String;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    goto/16 :goto_1

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v6

    goto/16 :goto_2

    .line 399
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #mScenesTitleID:I
    .restart local v4       #scenesTitle:[Ljava/lang/String;
    :catch_2
    move-exception v5

    goto :goto_6

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_3
    move-exception v6

    goto :goto_7
.end method

.method public setCallbackHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mCallbackHander:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method public setCurrentScenes(IZ)V
    .locals 1
    .parameter "c"
    .parameter "isScenes"

    .prologue
    const/4 v0, 0x0

    .line 97
    iput p1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->currentScenes:I

    .line 98
    iput v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->count:I

    .line 99
    iput v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mStatus:I

    .line 100
    sput-boolean p2, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mIsSceneMode:Z

    .line 101
    return-void
.end method

.method public setFadingOut(Z)V
    .locals 3
    .parameter "f"

    .prologue
    .line 112
    const-string v0, "panRender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFadingOut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sput-boolean p1, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mFadingOut:Z

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->fadeoutAlf:F

    .line 115
    return-void
.end method

.method public setScenesNum(I)V
    .locals 0
    .parameter "n"

    .prologue
    .line 108
    iput p1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->SCENESNUM:I

    .line 109
    return-void
.end method

.method public setTransx(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 86
    iget v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mStatus:I

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->count:I

    .line 88
    iput p1, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mTransx:F

    .line 89
    const v0, -0x457ced91

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mStatus:I

    goto :goto_0

    .line 91
    :cond_2
    const v0, 0x3a83126f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/CameraF/View/Opengl/entirePanRender;->mStatus:I

    goto :goto_0
.end method

.class public Lcom/motorola/CameraF/View/FaceTrackingView;
.super Landroid/view/View;
.source "FaceTrackingView.java"


# static fields
.field private static final FOCUS_LINE_WIDTH:F = 4.0f

.field private static final FOCUS_SEGMENT_LENGTH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "FaceTrackingView"


# instance fields
.field private mFocusAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mFocusNum:I

.field mFocused:Z

.field private mFocusedFace:Landroid/graphics/Rect;

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mTouchedFace:Landroid/graphics/drawable/Drawable;

.field myImage:Landroid/graphics/drawable/Drawable;

.field res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    iput v1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusNum:I

    .line 50
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocused:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusAreas:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mPaint:Landroid/graphics/Paint;

    .line 63
    iput v1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mOffsetLeft:I

    .line 64
    iput v1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mOffsetTop:I

    .line 78
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/FaceTrackingView;->setBackgroundColor(I)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->res:Landroid/content/res/Resources;

    .line 80
    iget-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->res:Landroid/content/res/Resources;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->myImage:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->res:Landroid/content/res/Resources;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mTouchedFace:Landroid/graphics/drawable/Drawable;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput v1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusNum:I

    .line 50
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocused:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusAreas:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mPaint:Landroid/graphics/Paint;

    .line 63
    iput v1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mOffsetLeft:I

    .line 64
    iput v1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mOffsetTop:I

    .line 90
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/FaceTrackingView;->setBackgroundColor(I)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->res:Landroid/content/res/Resources;

    .line 92
    iget-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->res:Landroid/content/res/Resources;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->myImage:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->res:Landroid/content/res/Resources;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mTouchedFace:Landroid/graphics/drawable/Drawable;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput v1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusNum:I

    .line 50
    iput-boolean v1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocused:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusAreas:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mPaint:Landroid/graphics/Paint;

    .line 63
    iput v1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mOffsetLeft:I

    .line 64
    iput v1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mOffsetTop:I

    .line 103
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/FaceTrackingView;->setBackgroundColor(I)V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->res:Landroid/content/res/Resources;

    .line 105
    iget-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->res:Landroid/content/res/Resources;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->myImage:Landroid/graphics/drawable/Drawable;

    .line 106
    return-void
.end method


# virtual methods
.method public clearFocusAreas()V
    .locals 2

    .prologue
    .line 130
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "FaceTrackingView"

    const-string v1, "clearing face tracking focus areas"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusedFace:Landroid/graphics/Rect;

    .line 133
    iget-object v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusNum:I

    .line 136
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x1

    const-string v9, "FaceTrackingView"

    .line 141
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    iget v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusNum:I

    if-nez v6, :cond_2

    .line 144
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_0

    .line 145
    const-string v6, "FaceTrackingView"

    const-string v6, "clear face view onDraw"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 208
    :cond_1
    return-void

    .line 150
    :cond_2
    iget-boolean v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocused:Z

    if-nez v6, :cond_5

    .line 151
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->res:Landroid/content/res/Resources;

    const v7, 0x7f02002e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->myImage:Landroid/graphics/drawable/Drawable;

    .line 158
    :goto_0
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x4080

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 161
    const-string v6, "FaceTrackingView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawing faces"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 170
    .local v2, l1:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    .line 173
    .local v4, t1:I
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusAreas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 174
    .local v0, f:Landroid/graphics/Rect;
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_4

    const-string v6, "FaceTrackingView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rectangle f is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mFocusedFace is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusedFace:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_4
    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-ltz v6, :cond_3

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    if-gt v6, v7, :cond_3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    if-ltz v6, :cond_3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    if-gt v6, v7, :cond_3

    .line 178
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusedFace:Landroid/graphics/Rect;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusedFace:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eq v10, v6, :cond_3

    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusedFace:Landroid/graphics/Rect;

    invoke-static {v0, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 179
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusedFace:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 180
    .local v3, l2:I
    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusedFace:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 181
    .local v5, t2:I
    if-le v2, v3, :cond_3

    if-le v4, v5, :cond_3

    .line 182
    move v2, v3

    .line 183
    move v4, v5

    .line 184
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusedFace:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 185
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_3

    const-string v6, "FaceTrackingView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "l1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "t1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 154
    .end local v0           #f:Landroid/graphics/Rect;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l1:I
    .end local v3           #l2:I
    .end local v4           #t1:I
    .end local v5           #t2:I
    :cond_5
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mPaint:Landroid/graphics/Paint;

    const v7, -0xff0100

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->res:Landroid/content/res/Resources;

    const v7, 0x7f02002d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->myImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 191
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #l1:I
    .restart local v4       #t1:I
    :cond_6
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusAreas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 192
    .restart local v0       #f:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusedFace:Landroid/graphics/Rect;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusedFace:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eq v10, v6, :cond_8

    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusedFace:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 193
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_7

    const-string v6, "FaceTrackingView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NEW FOCUSED FACE is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_7
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mTouchedFace:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 195
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mTouchedFace:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 198
    :cond_8
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->myImage:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_9

    .line 199
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->myImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 200
    iget-object v6, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->myImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 203
    :cond_9
    const-string v6, "FaceTrackingView"

    const-string v6, "myImage is NULL - null point dereference error"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const-string v7, "FaceTrackingView"

    .line 211
    const/4 v0, 0x1

    .line 212
    .local v0, clearFocus:Z
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/FaceTrackingView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 214
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 215
    .local v4, y:I
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_0

    .line 216
    const-string v5, "FaceTrackingView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Touch event at"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget-object v5, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusAreas:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 219
    .local v1, f:Landroid/graphics/Rect;
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    const/4 v0, 0x0

    .line 223
    sget-boolean v5, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2

    const-string v5, "FaceTrackingView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() - Setting focus to face area "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_2
    iput-object v1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusedFace:Landroid/graphics/Rect;

    goto :goto_0

    .line 227
    .end local v1           #f:Landroid/graphics/Rect;
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/FaceTrackingView;->clearFocusAreas()V

    .line 229
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5
.end method

.method public setFocusAreas(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, focus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    const-string v4, "FaceTrackingView"

    .line 109
    sget-boolean v2, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "FaceTrackingView"

    const-string v2, "setFocusAreas() - Enter"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusNum:I

    .line 112
    const-string v2, "FaceTrackingView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found faces="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-object p1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusAreas:Ljava/util/ArrayList;

    .line 114
    iget-object v2, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusAreas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 115
    .local v0, f:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mOffsetLeft:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 116
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mOffsetLeft:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 117
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mOffsetTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 118
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mOffsetTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 121
    .end local v0           #f:Landroid/graphics/Rect;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 67
    iput p1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mOffsetLeft:I

    .line 68
    iput p2, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mOffsetTop:I

    .line 69
    return-void
.end method

.method public updateFocusAreas(Z)V
    .locals 3
    .parameter "focused"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocused:Z

    .line 125
    const-string v0, "FaceTrackingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating focus area="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "num faces="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/CameraF/View/FaceTrackingView;->mFocusNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/FaceTrackingView;->invalidate()V

    .line 127
    return-void
.end method

.class public Lcom/motorola/CameraF/View/ScenesScroll;
.super Landroid/widget/RelativeLayout;
.source "ScenesScroll.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoScenesScroll"

.field private static final UPDATE_SCREEN:I


# instance fields
.field private mCurrentpos:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mInScenesMode:Z

.field private mScenesCurrent:Landroid/widget/Button;

.field private mScenesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScenesNext:Landroid/widget/Button;

.field private mScenesPre:Landroid/widget/Button;

.field private mScenesTitleID:I

.field private mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/16 v0, 0x96

    iput v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mSpacing:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mInScenesMode:Z

    .line 54
    iput v1, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mDisplayWidth:I

    .line 55
    iput v1, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mDisplayHeight:I

    .line 62
    new-instance v0, Lcom/motorola/CameraF/View/ScenesScroll$1;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/View/ScenesScroll$1;-><init>(Lcom/motorola/CameraF/View/ScenesScroll;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/16 v0, 0x96

    iput v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mSpacing:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mInScenesMode:Z

    .line 54
    iput v1, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mDisplayWidth:I

    .line 55
    iput v1, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mDisplayHeight:I

    .line 62
    new-instance v0, Lcom/motorola/CameraF/View/ScenesScroll$1;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/View/ScenesScroll$1;-><init>(Lcom/motorola/CameraF/View/ScenesScroll;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/16 v0, 0x96

    iput v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mSpacing:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mInScenesMode:Z

    .line 54
    iput v1, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mDisplayWidth:I

    .line 55
    iput v1, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mDisplayHeight:I

    .line 62
    new-instance v0, Lcom/motorola/CameraF/View/ScenesScroll$1;

    invoke-direct {v0, p0}, Lcom/motorola/CameraF/View/ScenesScroll$1;-><init>(Lcom/motorola/CameraF/View/ScenesScroll;)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/CameraF/View/ScenesScroll;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mCurrentpos:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/CameraF/View/ScenesScroll;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mInScenesMode:Z

    return v0
.end method

.method private getNextPos(I)I
    .locals 2
    .parameter "pos"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private getPrePos(I)I
    .locals 2
    .parameter "pos"

    .prologue
    const/4 v1, 0x1

    .line 95
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, v1

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    const-string v1, "MotoScenesScroll"

    .line 155
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoScenesScroll"

    const-string v0, "onFinishInflate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    const v0, 0x7f0e008c

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/ScenesScroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesCurrent:Landroid/widget/Button;

    .line 157
    const v0, 0x7f0e0089

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/ScenesScroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesPre:Landroid/widget/Button;

    .line 158
    const v0, 0x7f0e008a

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/ScenesScroll;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesNext:Landroid/widget/Button;

    .line 159
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoScenesScroll"

    const-string v0, "prefectched the Scene controls"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 161
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 171
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_0

    const-string v6, "MotoScenesScroll"

    const-string v7, "onLayout"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget-object v6, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesCurrent:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v4

    .line 173
    .local v4, scenes_width:I
    iget-object v6, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesCurrent:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v3

    .line 175
    .local v3, scenes_height:I
    sub-int v5, p4, p2

    .line 176
    .local v5, width:I
    sub-int v0, p5, p3

    .line 177
    .local v0, height:I
    const/4 v1, 0x0

    .line 178
    .local v1, offsetH_Center:I
    const/4 v2, 0x0

    .line 180
    .local v2, offsetW_Center:I
    iget-object v6, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesCurrent:Landroid/widget/Button;

    sub-int v7, v5, v4

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    sub-int v8, v0, v3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    add-int v9, v5, v4

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v2

    add-int v10, v0, v3

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/Button;->layout(IIII)V

    .line 185
    iget-object v6, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesPre:Landroid/widget/Button;

    iget v7, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mSpacing:I

    sub-int v7, v2, v7

    sub-int/2addr v7, v4

    sub-int v8, v5, v4

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int v8, v0, v3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    iget v9, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mSpacing:I

    sub-int v9, v2, v9

    sub-int v10, v5, v4

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    add-int v10, v0, v3

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/Button;->layout(IIII)V

    .line 190
    iget-object v6, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesNext:Landroid/widget/Button;

    iget v7, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mSpacing:I

    add-int/2addr v7, v2

    add-int v8, v5, v4

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int v8, v0, v3

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    iget v9, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mSpacing:I

    add-int/2addr v9, v2

    add-int/2addr v9, v4

    add-int v10, v5, v4

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    add-int v10, v0, v3

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/Button;->layout(IIII)V

    .line 195
    sget-boolean v6, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoScenesScroll"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "return onlayout "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    return-void
.end method

.method public setDisplaySize(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 58
    iput p1, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mDisplayWidth:I

    .line 59
    iput p2, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mDisplayHeight:I

    .line 60
    return-void
.end method

.method public setImageRes(Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter "scenesTitleId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, imageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesList:Ljava/util/List;

    .line 91
    iput p2, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesTitleID:I

    .line 92
    return-void
.end method

.method public setSelectedItem(IZ)V
    .locals 10
    .parameter "pos"
    .parameter "isScenesMode"

    .prologue
    const v8, 0x7f020126

    const v7, 0x7f02010d

    const/4 v6, 0x0

    const-string v9, "MotoScenesScroll"

    .line 107
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoScenesScroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter setSelectedItempos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iput-boolean p2, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mInScenesMode:Z

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    iput p1, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mCurrentpos:I

    .line 111
    move v2, p1

    .line 112
    .local v2, postemp:I
    iget v1, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mDisplayHeight:I

    .line 114
    .local v1, min:I
    iget v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mDisplayWidth:I

    if-le v1, v3, :cond_1

    .line 115
    iget v1, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mDisplayWidth:I

    .line 117
    :cond_1
    if-eqz p2, :cond_3

    .line 118
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesCurrent:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 119
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/ScenesScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/motorola/CameraF/CameraGlobalTools;->getCenterScenesResouce(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 121
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesCurrent:Landroid/widget/Button;

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesCurrent:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/ScenesScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesTitleID:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/ScenesScroll;->getPrePos(I)I

    move-result v2

    .line 125
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesPre:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 126
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/ScenesScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/motorola/CameraF/CameraGlobalTools;->getCenterScenesResouce(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesPre:Landroid/widget/Button;

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesPre:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/ScenesScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesTitleID:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/motorola/CameraF/View/ScenesScroll;->getNextPos(I)I

    move-result v2

    .line 132
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesNext:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 133
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/ScenesScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/motorola/CameraF/CameraGlobalTools;->getCenterScenesResouce(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesNext:Landroid/widget/Button;

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesNext:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/motorola/CameraF/View/ScenesScroll;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesTitleID:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_0
    sget-boolean v3, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_2

    const-string v3, "MotoScenesScroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return setSelectedItem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_2
    return-void

    .line 139
    :cond_3
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesCurrent:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 140
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesCurrent:Landroid/widget/Button;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesCurrent:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesPre:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 143
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesPre:Landroid/widget/Button;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesPre:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesNext:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 146
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesNext:Landroid/widget/Button;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v3, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mScenesNext:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "space"

    .prologue
    .line 103
    iput p1, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mSpacing:I

    .line 104
    return-void
.end method

.method public updateScreen(IZ)V
    .locals 2
    .parameter "pos"
    .parameter "isScenes"

    .prologue
    .line 164
    iput p1, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mCurrentpos:I

    .line 165
    iput-boolean p2, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mInScenesMode:Z

    .line 166
    iget-object v0, p0, Lcom/motorola/CameraF/View/ScenesScroll;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 167
    return-void
.end method

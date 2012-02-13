.class public Lcom/motorola/CameraF/View/CameraContentView;
.super Landroid/widget/RelativeLayout;
.source "CameraContentView.java"


# static fields
.field private static final OFFSET_BOTTOM:I = 0x78

.field private static final OFFSET_STATUS:I = 0x2b

.field public static final TAG:Ljava/lang/String; = "MotoCameraContentView"


# instance fields
.field private mCameraView:Landroid/view/View;

.field private mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

.field private mFaceTracker:Landroid/view/View;

.field private mFocusView:Landroid/view/View;

.field private mLastFocusRegion:Landroid/graphics/RectF;

.field private mOffset_Right:I

.field private mOffset_Status:I

.field private mRemaining:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/16 v0, 0x78

    iput v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mOffset_Right:I

    .line 40
    const/16 v0, 0x2b

    iput v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mOffset_Status:I

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mLastFocusRegion:Landroid/graphics/RectF;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/16 v0, 0x78

    iput v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mOffset_Right:I

    .line 40
    const/16 v0, 0x2b

    iput v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mOffset_Status:I

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mLastFocusRegion:Landroid/graphics/RectF;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/16 v0, 0x78

    iput v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mOffset_Right:I

    .line 40
    const/16 v0, 0x2b

    iput v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mOffset_Status:I

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mLastFocusRegion:Landroid/graphics/RectF;

    .line 54
    return-void
.end method


# virtual methods
.method public centerVFNow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mOffset_Right:I

    .line 179
    iput v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mOffset_Status:I

    .line 180
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/CameraContentView;->requestLayout()V

    .line 181
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 59
    const v0, 0x7f0e005b

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mCameraView:Landroid/view/View;

    .line 60
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mRemaining:Landroid/view/View;

    .line 61
    const v0, 0x7f0e0062

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mFocusView:Landroid/view/View;

    .line 63
    const v0, 0x7f0e0061

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/CameraF/View/FocusView;

    iput-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    .line 65
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v0

    iget-boolean v0, v0, Lcom/motorola/CameraF/CamSetting/CamSetting;->mAutoFocusAvailable:Z

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/FocusView;->setVisibility(I)V

    .line 79
    :cond_0
    :goto_0
    const v0, 0x7f0e005f

    invoke-virtual {p0, v0}, Lcom/motorola/CameraF/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mFaceTracker:Landroid/view/View;

    .line 80
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 81
    return-void

    .line 69
    :cond_1
    sget-boolean v0, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mFocusView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mFocusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/FocusView;->setVisibility(I)V

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mFocusView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mFocusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 90
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/CameraContentView;->mCameraView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 92
    .local v6, cv_width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/CameraContentView;->mCameraView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 93
    .local v5, cv_height:I
    sub-int v17, p4, p2

    .line 94
    .local v17, width:I
    sub-int v10, p5, p3

    .line 95
    .local v10, height:I
    const/4 v12, 0x0

    .line 96
    .local v12, offsetW:I
    const/4 v11, 0x0

    .line 97
    .local v11, offsetH:I
    const/4 v14, 0x0

    .line 98
    .local v14, resolved_width:I
    const/4 v13, 0x0

    .line 100
    .local v13, resolved_height:I
    const-string v18, "MotoCameraContentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "OnLayout width = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", height = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", cv_width = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", cv_height = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    move/from16 v0, v17

    move v1, v10

    if-le v0, v1, :cond_0

    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    if-le v6, v10, :cond_0

    .line 113
    sub-int v18, v17, v6

    div-int/lit8 v12, v18, 0x2

    .line 115
    if-gez v12, :cond_0

    .line 116
    const/4 v12, 0x0

    .line 118
    :cond_0
    move v0, v10

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    if-ge v5, v10, :cond_1

    .line 120
    sub-int v18, v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/CameraContentView;->mOffset_Right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/CameraContentView;->mOffset_Status:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/CameraF/View/CameraContentView;->mOffset_Status:I

    move/from16 v19, v0

    add-int v11, v18, v19

    .line 122
    if-gez v11, :cond_1

    .line 123
    const/4 v11, 0x0

    .line 126
    :cond_1
    move/from16 v0, v17

    move v1, v10

    if-le v0, v1, :cond_4

    .line 128
    move v13, v10

    .line 129
    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 130
    move v14, v6

    .line 145
    :goto_0
    sget-boolean v18, Lcom/motorola/CameraF/CameraGlobalType;->DYNAMIC_REGION_FOCUS:Z

    if-nez v18, :cond_6

    .line 147
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/CameraContentView;->mFocusView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/CameraContentView;->mFocusView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 149
    .local v9, focus_width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/CameraContentView;->mFocusView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 151
    .local v8, focus_height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/CameraContentView;->mFocusView:Landroid/view/View;

    move-object/from16 v18, v0

    sub-int v19, v14, v9

    div-int/lit8 v19, v19, 0x2

    add-int v19, v19, v12

    sub-int v20, v13, v8

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, v11

    add-int v21, v14, v9

    div-int/lit8 v21, v21, 0x2

    add-int v21, v21, v12

    add-int v22, v13, v8

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v11

    invoke-virtual/range {v18 .. v22}, Landroid/view/View;->layout(IIII)V

    .line 175
    .end local v8           #focus_height:I
    .end local v9           #focus_width:I
    :cond_2
    :goto_1
    return-void

    .line 132
    :cond_3
    move/from16 v14, v17

    goto :goto_0

    .line 136
    :cond_4
    move/from16 v14, v17

    .line 137
    if-ge v5, v10, :cond_5

    .line 138
    move v13, v5

    goto :goto_0

    .line 140
    :cond_5
    move v13, v10

    goto :goto_0

    .line 155
    :cond_6
    invoke-static {}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCamSetting()Lcom/motorola/CameraF/CamSetting/CamSetting;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/CameraF/CamSetting/CamSetting;->getCurrentAppMode()I

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/CameraContentView;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 157
    new-instance v7, Landroid/graphics/RectF;

    move v0, v12

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v11

    int-to-float v0, v0

    move/from16 v19, v0

    add-int v20, v12, v14

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-int v21, v11, v13

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v7

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 158
    .local v7, focusRegion:Landroid/graphics/RectF;
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 159
    .local v15, tempRegion1:Landroid/graphics/Rect;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 161
    .local v16, tempRegion2:Landroid/graphics/Rect;
    invoke-virtual {v7, v15}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/CameraContentView;->mLastFocusRegion:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 163
    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/CameraContentView;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/motorola/CameraF/View/FocusView;->setFocusRegion(Landroid/graphics/RectF;)V

    .line 168
    sget-boolean v18, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v18, :cond_7

    .line 169
    const-string v18, "MotoCameraContentView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CameraContentView, onLayout: left = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " top = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "right = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int v20, v12, v14

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " bottom = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int v20, v11, v13

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/CameraF/View/CameraContentView;->mDrawFocusView:Lcom/motorola/CameraF/View/FocusView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/CameraF/View/FocusView;->resetFocusArea()V

    .line 171
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/CameraF/View/CameraContentView;->mLastFocusRegion:Landroid/graphics/RectF;

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 86
    return-void
.end method

.method public restoreVFNow()V
    .locals 1

    .prologue
    .line 184
    const/16 v0, 0x78

    iput v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mOffset_Right:I

    .line 185
    const/16 v0, 0x2b

    iput v0, p0, Lcom/motorola/CameraF/View/CameraContentView;->mOffset_Status:I

    .line 186
    invoke-virtual {p0}, Lcom/motorola/CameraF/View/CameraContentView;->requestLayout()V

    .line 187
    return-void
.end method

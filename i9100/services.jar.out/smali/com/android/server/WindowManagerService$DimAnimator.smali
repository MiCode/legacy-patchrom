.class Lcom/android/server/WindowManagerService$DimAnimator;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DimAnimator"
.end annotation


# instance fields
.field mDimCurrentAlpha:F

.field mDimDeltaPerMs:F

.field mDimShown:Z

.field mDimSurface:Landroid/view/Surface;

.field mDimTargetAlpha:F

.field mLastDimAnimTime:J

.field mLastDimHeight:I

.field mLastDimWidth:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;)V
    .locals 10
    .parameter "session"

    .prologue
    const/4 v0, 0x0

    .line 11059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11051
    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    .line 11060
    iget-object v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 11064
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    const/4 v2, 0x0

    const-string v3, "DimSurface"

    const/4 v4, -0x1

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, -0x1

    const/high16 v8, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    .line 11068
    iget-object v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11073
    :cond_0
    :goto_0
    return-void

    .line 11069
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 11070
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public printTo(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 11194
    const-string v0, "  mDimShown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 11195
    const-string v0, " current="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 11196
    const-string v0, " target="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 11197
    const-string v0, " delta="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 11198
    const-string v0, " lastAnimTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 11199
    return-void
.end method

.method show(II)V
    .locals 4
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 11079
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    if-nez v1, :cond_1

    .line 11082
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    .line 11084
    :try_start_0
    iput p1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimWidth:I

    .line 11085
    iput p2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimHeight:I

    .line 11086
    iget-object v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    .line 11087
    iget-object v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1, p2}, Landroid/view/Surface;->setSize(II)V

    .line 11088
    iget-object v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11097
    :cond_0
    :goto_0
    return-void

    .line 11089
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 11090
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    const-string v2, "Failure showing dim surface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 11092
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    iget v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimWidth:I

    if-ne v1, p1, :cond_2

    iget v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimHeight:I

    if-eq v1, p2, :cond_0

    .line 11093
    :cond_2
    iput p1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimWidth:I

    .line 11094
    iput p2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimHeight:I

    .line 11095
    iget-object v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1, p2}, Landroid/view/Surface;->setSize(II)V

    goto :goto_0
.end method

.method updateParameters(Lcom/android/server/WindowManagerService$WindowState;J)V
    .locals 6
    .parameter "w"
    .parameter "currentTime"

    .prologue
    .line 11104
    iget-object v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setLayer(I)V

    .line 11106
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    move v2, v3

    .line 11109
    .local v2, target:F
    :goto_0
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_2

    .line 11112
    iput-wide p2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    .line 11113
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v3

    move-wide v0, v3

    .line 11116
    .local v0, duration:J
    :goto_1
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 11121
    const-wide/16 v3, 0x6

    mul-long/2addr v0, v3

    .line 11123
    :cond_0
    const-wide/16 v3, 0x1

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    .line 11125
    const-wide/16 v0, 0x1

    .line 11127
    :cond_1
    iput v2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    .line 11128
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    sub-float/2addr v3, v4

    long-to-float v4, v0

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    .line 11130
    .end local v0           #duration:J
    :cond_2
    return-void

    .line 11106
    .end local v2           #target:F
    :cond_3
    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    move v2, v3

    goto :goto_0

    .line 11113
    .restart local v2       #target:F
    :cond_4
    const-wide/16 v3, 0xc8

    move-wide v0, v3

    goto :goto_1
.end method

.method updateSurface(ZJZ)Z
    .locals 10
    .parameter "dimming"
    .parameter "currentTime"
    .parameter "displayFrozen"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 11137
    if-nez p1, :cond_0

    .line 11138
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_0

    .line 11139
    iput-wide p2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    .line 11140
    iput v7, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    .line 11141
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    neg-float v3, v3

    const/high16 v4, 0x4348

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    .line 11145
    :cond_0
    const/4 v0, 0x0

    .line 11146
    .local v0, animating:Z
    iget-wide v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_2

    .line 11147
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    iget-wide v5, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    sub-long v5, p2, v5

    long-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    .line 11149
    const/4 v2, 0x1

    .line 11150
    .local v2, more:Z
    if-eqz p4, :cond_3

    .line 11152
    const/4 v2, 0x0

    .line 11166
    :cond_1
    :goto_0
    if-eqz v2, :cond_6

    .line 11169
    iput-wide p2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    .line 11170
    iget-object v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setAlpha(F)V

    .line 11171
    const/4 v0, 0x1

    .line 11190
    .end local v2           #more:Z
    :cond_2
    :goto_1
    return v0

    .line 11153
    .restart local v2       #more:Z
    :cond_3
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_4

    .line 11154
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 11155
    const/4 v2, 0x0

    goto :goto_0

    .line 11157
    :cond_4
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_5

    .line 11158
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 11159
    const/4 v2, 0x0

    goto :goto_0

    .line 11162
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 11173
    :cond_6
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    iput v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    .line 11174
    iput-wide v8, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    .line 11177
    iget-object v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setAlpha(F)V

    .line 11178
    if-nez p1, :cond_2

    .line 11182
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11186
    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    goto :goto_1

    .line 11183
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 11184
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    const-string v4, "Illegal argument exception hiding dim surface"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

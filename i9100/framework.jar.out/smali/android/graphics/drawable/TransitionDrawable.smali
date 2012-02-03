.class public Landroid/graphics/drawable/TransitionDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "TransitionDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/TransitionDrawable$1;,
        Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    }
.end annotation


# static fields
.field private static final TRANSITION_NONE:I = 0x2

.field private static final TRANSITION_RUNNING:I = 0x1

.field private static final TRANSITION_STARTING:I


# instance fields
.field private mAlpha:I

.field private mCrossFade:Z

.field private mDuration:I

.field private mFrom:I

.field private mOriginalDuration:I

.field private mReverse:Z

.field private mStartTimeMillis:J

.field private mTo:I

.field private mTransitionState:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 88
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v1, v0, v0, v0}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    check-cast v0, Landroid/content/res/Resources;

    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    .line 89
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "state"
    .parameter "res"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/graphics/drawable/TransitionDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "state"
    .parameter "layers"

    .prologue
    .line 96
    invoke-direct {p0, p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 97
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "layers"

    .prologue
    const/4 v1, 0x0

    .line 78
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V

    .line 79
    return-void
.end method


# virtual methods
.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1
    .parameter "state"
    .parameter "res"

    .prologue
    .line 101
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    check-cast p1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    .end local p1
    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x3f80

    const/16 v11, 0xff

    const/4 v10, 0x1

    .line 167
    const/4 v4, 0x1

    .line 169
    .local v4, done:Z
    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    packed-switch v6, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 188
    .local v0, alpha:I
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    .line 189
    .local v2, crossFade:Z
    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 192
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    aget-object v6, v1, v13

    iget-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 194
    sub-int v6, v11, v0

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 196
    :cond_1
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    if-eqz v2, :cond_2

    .line 198
    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 201
    :cond_2
    if-lez v0, :cond_3

    .line 202
    aget-object v6, v1, v10

    iget-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 203
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 204
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 205
    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 208
    :cond_3
    if-nez v4, :cond_4

    .line 209
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 211
    :cond_4
    return-void

    .line 171
    .end local v0           #alpha:I
    .end local v1           #array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2           #crossFade:Z
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    .line 172
    const/4 v4, 0x0

    .line 173
    iput v10, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    goto :goto_0

    .line 177
    :pswitch_1
    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    iget v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 180
    .local v5, normalized:F
    cmpl-float v6, v5, v12

    if-ltz v6, :cond_5

    move v4, v10

    .line 181
    :goto_1
    invoke-static {v5, v12}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 182
    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    int-to-float v6, v6

    iget v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iget v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    goto :goto_0

    :cond_5
    move v4, v13

    .line 180
    goto :goto_1

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isCrossFadeEnabled()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return v0
.end method

.method public resetTransition()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 125
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 126
    return-void
.end method

.method public reverseTransition(I)V
    .locals 9
    .parameter "duration"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xff

    const/4 v6, 0x0

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 139
    .local v0, time:J
    iget-wide v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v2, v0, v2

    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 140
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    if-nez v2, :cond_0

    .line 141
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 142
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 143
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 144
    iput-boolean v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 151
    :goto_0
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 152
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 153
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 163
    :goto_1
    return-void

    .line 146
    :cond_0
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 147
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 148
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 149
    iput-boolean v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    goto :goto_0

    .line 157
    :cond_1
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-nez v2, :cond_2

    move v2, v8

    :goto_2
    iput-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 158
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 159
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz v2, :cond_3

    move v2, v6

    :goto_3
    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 160
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz v2, :cond_4

    iget-wide v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v2, v0, v2

    :goto_4
    long-to-int v2, v2

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 162
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    goto :goto_1

    :cond_2
    move v2, v6

    .line 157
    goto :goto_2

    :cond_3
    move v2, v7

    .line 159
    goto :goto_3

    .line 160
    :cond_4
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    int-to-long v2, v2

    iget-wide v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v4, v0, v4

    sub-long/2addr v2, v4

    goto :goto_4
.end method

.method public setCrossFadeEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 222
    iput-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    .line 223
    return-void
.end method

.method public startTransition(I)V
    .locals 2
    .parameter "durationMillis"

    .prologue
    const/4 v1, 0x0

    .line 110
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 111
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 112
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 113
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 114
    iput-boolean v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 115
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 116
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 117
    return-void
.end method

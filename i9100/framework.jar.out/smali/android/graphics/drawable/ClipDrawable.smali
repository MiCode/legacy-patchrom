.class public Landroid/graphics/drawable/ClipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ClipDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ClipDrawable$1;,
        Landroid/graphics/drawable/ClipDrawable$ClipState;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x1

.field public static final VERTICAL:I = 0x2


# instance fields
.field private mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "state"
    .parameter "res"

    .prologue
    .line 288
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 289
    new-instance v0, Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/ClipDrawable$ClipState;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/graphics/drawable/ClipDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 290
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .parameter "drawable"
    .parameter "gravity"
    .parameter "orientation"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;)V

    .line 65
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput-object p1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput p2, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 67
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput p3, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/16 v10, 0x2710

    const/4 v9, 0x0

    .line 192
    iget-object v7, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v7, v7, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v7

    if-nez v7, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/ClipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 197
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 198
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v4

    .line 199
    .local v4, level:I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 200
    .local v6, w:I
    const/4 v3, 0x0

    .line 201
    .local v3, iw:I
    iget-object v7, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v7, v7, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    .line 202
    sub-int v7, v6, v9

    sub-int v8, v10, v4

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0x2710

    sub-int/2addr v6, v7

    .line 204
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 205
    .local v1, h:I
    const/4 v2, 0x0

    .line 206
    .local v2, ih:I
    iget-object v7, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v7, v7, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    .line 207
    sub-int v7, v1, v9

    sub-int v8, v10, v4

    mul-int/2addr v7, v8

    div-int/lit16 v7, v7, 0x2710

    sub-int/2addr v1, v7

    .line 209
    :cond_3
    iget-object v7, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v7, v7, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    invoke-static {v7, v6, v1, v0, v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 211
    if-lez v6, :cond_0

    if-lez v1, :cond_0

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 214
    iget-object v7, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v7, v7, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget v1, v1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v1, v1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable$ClipState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mChangingConfigurations:I

    .line 233
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    .line 235
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 81
    sget-object v6, Lcom/android/internal/R$styleable;->ClipDrawable:[I

    invoke-virtual {p1, p3, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 86
    .local v3, orientation:I
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 87
    .local v2, g:I
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 89
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 93
    .local v4, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v7, :cond_2

    if-ne v5, v9, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v4, :cond_2

    .line 94
    :cond_1
    if-ne v5, v8, :cond_0

    .line 97
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 100
    :cond_2
    if-nez v1, :cond_3

    .line 101
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "No drawable specified for <clip>"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 104
    :cond_3
    iget-object v6, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput-object v1, v6, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    iget-object v6, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput v3, v6, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    .line 106
    iget-object v6, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iput v2, v6, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    .line 108
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 109
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 114
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 186
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 187
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 179
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 180
    invoke-virtual {p0}, Landroid/graphics/drawable/ClipDrawable;->invalidateSelf()V

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 174
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 123
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 154
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 155
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 159
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 160
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 148
    iget-object v0, p0, Landroid/graphics/drawable/ClipDrawable;->mClipState:Landroid/graphics/drawable/ClipDrawable$ClipState;

    iget-object v0, v0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 149
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 126
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 129
    :cond_0
    return-void
.end method

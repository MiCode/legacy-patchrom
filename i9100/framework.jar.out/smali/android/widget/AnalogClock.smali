.class public Landroid/widget/AnalogClock;
.super Landroid/view/View;
.source "AnalogClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDialHeight:I

.field private mDialWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AnalogClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroid/widget/AnalogClock;->mHandler:Landroid/os/Handler;

    .line 233
    new-instance v2, Landroid/widget/AnalogClock$1;

    invoke-direct {v2, p0}, Landroid/widget/AnalogClock$1;-><init>(Landroid/widget/AnalogClock;)V

    iput-object v2, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 69
    .local v1, r:Landroid/content/res/Resources;
    sget-object v2, Lcom/android/internal/R$styleable;->AnalogClock:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 74
    iget-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 75
    const v2, 0x1080160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 78
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v2, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 80
    const v2, 0x1080161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 83
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object v2, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 85
    const v2, 0x1080162

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 88
    :cond_2
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 90
    iget-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    .line 91
    iget-object v2, p0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    .line 92
    return-void
.end method

.method static synthetic access$002(Landroid/widget/AnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$100(Landroid/widget/AnalogClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    const/high16 v5, 0x4270

    .line 222
    iget-object v3, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 224
    iget-object v3, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 225
    .local v0, hour:I
    iget-object v3, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 226
    .local v1, minute:I
    iget-object v3, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 228
    .local v2, second:I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AnalogClock;->mMinutes:F

    .line 229
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/AnalogClock;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AnalogClock;->mHour:F

    .line 230
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 231
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 96
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 98
    iget-boolean v1, p0, Landroid/widget/AnalogClock;->mAttached:Z

    if-nez v1, :cond_0

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AnalogClock;->mAttached:Z

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/AnalogClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 113
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 116
    invoke-direct {p0}, Landroid/widget/AnalogClock;->onTimeChanged()V

    .line 117
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 122
    iget-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/widget/AnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mAttached:Z

    .line 126
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 161
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 163
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AnalogClock;->mChanged:Z

    move v7, v0

    .line 164
    .local v7, changed:Z
    if-eqz v7, :cond_0

    .line 165
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AnalogClock;->mChanged:Z

    .line 168
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 169
    .local v6, availableWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 171
    .local v5, availableHeight:I
    div-int/lit8 v15, v6, 0x2

    .line 172
    .local v15, x:I
    div-int/lit8 v16, v5, 0x2

    .line 174
    .local v16, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    .line 175
    .local v8, dial:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 176
    .local v14, w:I
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 178
    .local v9, h:I
    const/4 v13, 0x0

    .line 180
    .local v13, scaled:Z
    if-lt v6, v14, :cond_1

    if-ge v5, v9, :cond_2

    .line 181
    :cond_1
    const/4 v13, 0x1

    .line 182
    move v0, v6

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move v0, v5

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v9

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 184
    .local v12, scale:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 185
    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move v1, v12

    move v2, v12

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 188
    .end local v12           #scale:F
    :cond_2
    if-eqz v7, :cond_3

    .line 189
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v9, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v9, 0x2

    add-int v20, v20, v16

    move-object v0, v8

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 191
    :cond_3
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 194
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AnalogClock;->mHour:F

    move/from16 v17, v0

    const/high16 v18, 0x4140

    div-float v17, v17, v18

    const/high16 v18, 0x43b4

    mul-float v17, v17, v18

    move v0, v15

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    .line 196
    .local v10, hourHand:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_4

    .line 197
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 198
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 199
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v9, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v9, 0x2

    add-int v20, v20, v16

    move-object v0, v10

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 201
    :cond_4
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 205
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AnalogClock;->mMinutes:F

    move/from16 v17, v0

    const/high16 v18, 0x4270

    div-float v17, v17, v18

    const/high16 v18, 0x43b4

    mul-float v17, v17, v18

    move v0, v15

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AnalogClock;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    .line 208
    .local v11, minuteHand:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_5

    .line 209
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 210
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 211
    div-int/lit8 v17, v14, 0x2

    sub-int v17, v15, v17

    div-int/lit8 v18, v9, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v14, 0x2

    add-int v19, v19, v15

    div-int/lit8 v20, v9, 0x2

    add-int v20, v20, v16

    move-object v0, v11

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 213
    :cond_5
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 216
    if-eqz v13, :cond_6

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 219
    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 131
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 132
    .local v5, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 133
    .local v6, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 134
    .local v1, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 136
    .local v2, heightSize:I
    const/high16 v0, 0x3f80

    .line 137
    .local v0, hScale:F
    const/high16 v4, 0x3f80

    .line 139
    .local v4, vScale:F
    if-eqz v5, :cond_0

    iget v7, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    if-ge v6, v7, :cond_0

    .line 140
    int-to-float v7, v6

    iget v8, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 143
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    if-ge v2, v7, :cond_1

    .line 144
    int-to-float v7, v2

    iget v8, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 147
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 149
    .local v3, scale:F
    iget v7, p0, Landroid/widget/AnalogClock;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1}, Landroid/widget/AnalogClock;->resolveSize(II)I

    move-result v7

    iget v8, p0, Landroid/widget/AnalogClock;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2}, Landroid/widget/AnalogClock;->resolveSize(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Landroid/widget/AnalogClock;->setMeasuredDimension(II)V

    .line 151
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock;->mChanged:Z

    .line 157
    return-void
.end method

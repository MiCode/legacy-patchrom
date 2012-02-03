.class public Landroid/text/style/TextAppearanceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextAppearanceSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mStyle:I

.field private final mTextColor:Landroid/content/res/ColorStateList;

.field private final mTextColorLink:Landroid/content/res/ColorStateList;

.field private final mTextSize:I

.field private final mTypeface:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "appearance"

    .prologue
    .line 45
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "appearance"
    .parameter "colorList"

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 60
    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 66
    .local v1, textColor:Landroid/content/res/ColorStateList;
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 68
    const/4 v3, -0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 71
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 72
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 74
    .local v2, tf:I
    packed-switch v2, :pswitch_data_0

    .line 88
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    .line 92
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    if-ltz p3, :cond_0

    .line 95
    const v3, 0x1030005

    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    :cond_0
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 103
    return-void

    .line 76
    :pswitch_0
    const-string/jumbo v3, "sans"

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    goto :goto_0

    .line 80
    :pswitch_1
    const-string/jumbo v3, "serif"

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    goto :goto_0

    .line 84
    :pswitch_2
    const-string/jumbo v3, "monospace"

    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 127
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 132
    :goto_1
    return-void

    .line 125
    :cond_0
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 130
    :cond_1
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "family"
    .parameter "style"
    .parameter "size"
    .parameter "color"
    .parameter "linkColor"

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 111
    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    .line 112
    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    .line 113
    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    .line 114
    iput-object p4, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    .line 115
    iput-object p5, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    .line 116
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0x11

    return v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    return v0
.end method

.method public getTextStyle()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .parameter "ds"

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-virtual {p0, p1}, Landroid/text/style/TextAppearanceSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 204
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 208
    :cond_0
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    .line 211
    :cond_1
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 4
    .parameter "ds"

    .prologue
    .line 215
    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    if-nez v3, :cond_0

    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    if-eqz v3, :cond_4

    .line 216
    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    .line 217
    .local v2, tf:Landroid/graphics/Typeface;
    const/4 v1, 0x0

    .line 219
    .local v1, style:I
    if-eqz v2, :cond_1

    .line 220
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 223
    :cond_1
    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    or-int/2addr v1, v3

    .line 225
    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 226
    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 233
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int v0, v1, v3

    .line 235
    .local v0, fake:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 236
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 239
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    .line 240
    const/high16 v3, -0x4180

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 243
    :cond_3
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 246
    .end local v0           #fake:I
    .end local v1           #style:I
    .end local v2           #tf:Landroid/graphics/Typeface;
    :cond_4
    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    if-lez v3, :cond_5

    .line 247
    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 249
    :cond_5
    return-void

    .line 227
    .restart local v1       #style:I
    .restart local v2       #tf:Landroid/graphics/Typeface;
    :cond_6
    if-nez v2, :cond_7

    .line 228
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_0

    .line 230
    :cond_7
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 152
    :goto_0
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    :goto_1
    return-void

    .line 150
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

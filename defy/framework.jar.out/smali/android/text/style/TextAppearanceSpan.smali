.class public Landroid/text/style/TextAppearanceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextAppearanceSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mMotTypefaceFileName:Ljava/lang/String;

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
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 9
    .parameter "context"
    .parameter "appearance"
    .parameter "colorList"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    sget-object v6, Lcom/motorola/android/widget/R$styleable;->MotTextView:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, mot_a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, mot_a_n:I
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, varMotTypefaceFamily:Ljava/lang/String;
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mMotTypefaceFileName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .local v3, textColor:Landroid/content/res/ColorStateList;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    const/4 v6, -0x1

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .local v4, tf:I
    if-eqz v5, :cond_1

    iput-object v5, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-ltz p3, :cond_0

    const v6, 0x1030005

    sget-object v7, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iput-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    return-void

    :cond_1
    packed-switch v4, :pswitch_data_0

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    const-string v6, "sans"

    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v6, "serif"

    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v6, "monospace"

    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string v6, "handsetCondensed"

    iput-object v6, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mMotTypefaceFileName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    :goto_1
    return-void

    :cond_0
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "family"
    .parameter "style"
    .parameter "size"
    .parameter "color"
    .parameter "linkColor"

    .prologue
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mMotTypefaceFileName:Ljava/lang/String;

    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    iput-object p4, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iput-object p5, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "family"
    .parameter "file"
    .parameter "style"
    .parameter "size"
    .parameter "color"
    .parameter "linkColor"

    .prologue
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p2, p0, Landroid/text/style/TextAppearanceSpan;->mMotTypefaceFileName:Ljava/lang/String;

    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    iput p4, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    iput-object p5, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iput-object p6, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyFileName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mMotTypefaceFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    const/16 v0, 0x11

    return v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    return v0
.end method

.method public getTextStyle()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .parameter "ds"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/text/style/TextAppearanceSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    :cond_1
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 4
    .parameter "ds"

    .prologue
    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mMotTypefaceFileName:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    if-nez v3, :cond_0

    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    .local v2, tf:Landroid/graphics/Typeface;
    const/4 v1, 0x0

    .local v1, style:I
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    :cond_1
    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    or-int/2addr v1, v3

    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mMotTypefaceFileName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mMotTypefaceFileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int v0, v1, v3

    .local v0, fake:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :goto_1
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_8

    const/high16 v3, -0x4180

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :goto_2
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .end local v0           #fake:I
    .end local v1           #style:I
    .end local v2           #tf:Landroid/graphics/Typeface;
    :cond_2
    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    if-lez v3, :cond_3

    iget v3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_3
    return-void

    .restart local v1       #style:I
    .restart local v2       #tf:Landroid/graphics/Typeface;
    :cond_4
    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_0

    :cond_6
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_0

    .restart local v0       #fake:I
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mMotTypefaceFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

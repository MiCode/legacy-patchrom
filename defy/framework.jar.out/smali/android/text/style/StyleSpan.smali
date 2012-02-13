.class public Landroid/text/style/StyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "StyleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mStyle:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "style"

    .prologue
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput p1, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return-void
.end method

.method private static apply(Landroid/graphics/Paint;I)V
    .locals 6
    .parameter "paint"
    .parameter "style"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .local v1, old:Landroid/graphics/Typeface;
    if-nez v1, :cond_2

    const/4 v2, 0x0

    .local v2, oldStyle:I
    :goto_0
    or-int v4, v2, p1

    .local v4, want:I
    if-nez v1, :cond_3

    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    .local v3, tf:Landroid/graphics/Typeface;
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v5

    xor-int/lit8 v5, v5, -0x1

    and-int v0, v4, v5

    .local v0, fake:I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_0
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_1

    const/high16 v5, -0x4180

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_1
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    .end local v0           #fake:I
    .end local v2           #oldStyle:I
    .end local v3           #tf:Landroid/graphics/Typeface;
    .end local v4           #want:I
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .restart local v2       #oldStyle:I
    goto :goto_0

    .restart local v4       #want:I
    :cond_3
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .restart local v3       #tf:Landroid/graphics/Typeface;
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    const/4 v0, 0x7

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-static {p1, v0}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;I)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "paint"

    .prologue
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-static {p1, v0}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

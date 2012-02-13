.class public Landroid/text/style/TypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TypefaceSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mFamily:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "family"

    .prologue
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    return-void
.end method

.method private static apply(Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 5
    .parameter "paint"
    .parameter "family"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .local v1, old:Landroid/graphics/Typeface;
    if-nez v1, :cond_2

    const/4 v2, 0x0

    .local v2, oldStyle:I
    :goto_0
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .local v3, tf:Landroid/graphics/Typeface;
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    xor-int/lit8 v4, v4, -0x1

    and-int v0, v2, v4

    .local v0, fake:I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_0
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_1

    const/high16 v4, -0x4180

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_1
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    .end local v0           #fake:I
    .end local v2           #oldStyle:I
    .end local v3           #tf:Landroid/graphics/Typeface;
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .restart local v2       #oldStyle:I
    goto :goto_0
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
    iget-object v0, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    const/16 v0, 0xd

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    iget-object v0, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/style/TypefaceSpan;->apply(Landroid/graphics/Paint;Ljava/lang/String;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "paint"

    .prologue
    iget-object v0, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/style/TypefaceSpan;->apply(Landroid/graphics/Paint;Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

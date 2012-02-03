.class public Landroid/text/style/AbsoluteSizeSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "AbsoluteSizeSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private mDip:Z

.field private final mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 33
    iput p1, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 34
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .parameter "size"
    .parameter "dip"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 42
    iput p1, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 43
    iput-boolean p2, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getDip()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x10

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .parameter "ds"

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    if-eqz v0, :cond_0

    .line 75
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    iget v1, p1, Landroid/text/TextPaint;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2
    .parameter "ds"

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    if-eqz v0, :cond_0

    .line 84
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    iget v1, p1, Landroid/text/TextPaint;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 60
    iget v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

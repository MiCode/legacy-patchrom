.class public Landroid/text/style/ForegroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "ForegroundColorSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "color"

    .prologue
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput p1, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundColor()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    iget v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.class public Landroid/text/style/StrikethroughSpan;
.super Landroid/text/style/CharacterStyle;
.source "StrikethroughSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;
.implements Landroid/text/ParcelableSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x5

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    .line 46
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 41
    return-void
.end method

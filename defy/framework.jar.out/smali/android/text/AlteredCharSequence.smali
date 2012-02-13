.class public Landroid/text/AlteredCharSequence;
.super Ljava/lang/Object;
.source "AlteredCharSequence.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/AlteredCharSequence$1;,
        Landroid/text/AlteredCharSequence$AlteredSpanned;
    }
.end annotation


# instance fields
.field private mChars:[C

.field private mEnd:I

.field private mSource:Ljava/lang/CharSequence;

.field private mStart:I


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;[CII)V
    .locals 0
    .parameter "source"
    .parameter "sub"
    .parameter "substart"
    .parameter "subend"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iput p3, p0, Landroid/text/AlteredCharSequence;->mStart:I

    iput p4, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;[CIILandroid/text/AlteredCharSequence$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/AlteredCharSequence;-><init>(Ljava/lang/CharSequence;[CII)V

    return-void
.end method

.method public static make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;
    .locals 6
    .parameter "source"
    .parameter "sub"
    .parameter "substart"
    .parameter "subend"

    .prologue
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/text/AlteredCharSequence$AlteredSpanned;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/AlteredCharSequence$AlteredSpanned;-><init>(Ljava/lang/CharSequence;[CIILandroid/text/AlteredCharSequence$1;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/text/AlteredCharSequence;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/text/AlteredCharSequence;-><init>(Ljava/lang/CharSequence;[CII)V

    goto :goto_0
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .parameter "off"

    .prologue
    iget v0, p0, Landroid/text/AlteredCharSequence;->mStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iget v1, p0, Landroid/text/AlteredCharSequence;->mStart:I

    sub-int v1, p1, v1

    aget-char v0, v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public getChars(II[CI)V
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "off"

    .prologue
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    iget v0, p0, Landroid/text/AlteredCharSequence;->mStart:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-le p1, p2, :cond_0

    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iget v1, p0, Landroid/text/AlteredCharSequence;->mStart:I

    sub-int v1, p1, v1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iget v2, p0, Landroid/text/AlteredCharSequence;->mStart:I

    sub-int/2addr v2, p1

    iget v3, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    sub-int/2addr v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/text/AlteredCharSequence;->length()I

    move-result v0

    .local v0, len:I
    new-array v1, v0, [C

    .local v1, ret:[C
    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/text/AlteredCharSequence;->getChars(II[CI)V

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method update([CII)V
    .locals 0
    .parameter "sub"
    .parameter "substart"
    .parameter "subend"

    .prologue
    iput-object p1, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iput p2, p0, Landroid/text/AlteredCharSequence;->mStart:I

    iput p3, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    return-void
.end method

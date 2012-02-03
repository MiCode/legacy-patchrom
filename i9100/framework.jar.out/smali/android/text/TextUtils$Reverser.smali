.class Landroid/text/TextUtils$Reverser;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reverser"
.end annotation


# instance fields
.field private mEnd:I

.field private mSource:Ljava/lang/CharSequence;

.field private mStart:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    .line 490
    iput p2, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    .line 491
    iput p3, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    .line 492
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 3
    .parameter "off"

    .prologue
    .line 510
    iget-object v0, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v0

    return v0
.end method

.method public getChars(II[CI)V
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    const/4 v7, 0x1

    .line 514
    iget-object v4, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    iget v5, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    add-int/2addr v5, p1

    iget v6, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    add-int/2addr v6, p2

    invoke-static {v4, v5, v6, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 516
    const/4 v4, 0x0

    sub-int v5, p2, p1

    invoke-static {p3, v4, v5}, Landroid/text/AndroidCharacter;->mirror([CII)Z

    .line 518
    sub-int v1, p2, p1

    .line 519
    .local v1, len:I
    sub-int v4, p2, p1

    div-int/lit8 v2, v4, 0x2

    .line 520
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 521
    add-int v4, p4, v0

    aget-char v3, p3, v4

    .line 523
    .local v3, tmp:C
    add-int v4, p4, v0

    add-int v5, p4, v1

    sub-int/2addr v5, v0

    sub-int/2addr v5, v7

    aget-char v5, p3, v5

    aput-char v5, p3, v4

    .line 524
    add-int v4, p4, v1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v7

    aput-char v3, p3, v4

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    .end local v3           #tmp:C
    :cond_0
    return-void
.end method

.method public length()I
    .locals 2

    .prologue
    .line 495
    iget v0, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    iget v1, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 499
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .line 501
    .local v0, buf:[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/TextUtils$Reverser;->getChars(II[CI)V

    .line 502
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/TextUtils$Reverser;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/text/TextUtils$Reverser;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

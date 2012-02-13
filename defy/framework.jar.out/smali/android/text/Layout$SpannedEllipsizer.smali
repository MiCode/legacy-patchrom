.class Landroid/text/Layout$SpannedEllipsizer;
.super Landroid/text/Layout$Ellipsizer;
.source "Layout.java"

# interfaces
.implements Landroid/text/Spanned;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpannedEllipsizer"
.end annotation


# instance fields
.field private mSpanned:Landroid/text/Spanned;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "display"

    .prologue
    invoke-direct {p0, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    check-cast p1, Landroid/text/Spanned;

    .end local p1
    iput-object p1, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    return-void
.end method


# virtual methods
.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"

    .prologue
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"

    .prologue
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"

    .prologue
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1
    .parameter "start"
    .parameter "limit"
    .parameter "type"

    .prologue
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v5, 0x0

    sub-int v0, p2, p1

    new-array v6, v0, [C

    .local v6, s:[C
    invoke-virtual {p0, p1, p2, v6, v5}, Landroid/text/Layout$SpannedEllipsizer;->getChars(II[CI)V

    new-instance v4, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v4, ss:Landroid/text/SpannableString;
    iget-object v0, p0, Landroid/text/Layout$SpannedEllipsizer;->mSpanned:Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    return-object v4
.end method

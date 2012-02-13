.class public abstract Landroid/text/method/ReplacementTransformationMethod;
.super Ljava/lang/Object;
.source "ReplacementTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;,
        Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getOriginal()[C
.end method

.method protected abstract getReplacement()[C
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "source"
    .parameter "v"

    .prologue
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getOriginal()[C

    move-result-object v3

    .local v3, original:[C
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getReplacement()[C

    move-result-object v4

    .local v4, replacement:[C
    instance-of v5, p1, Landroid/text/Editable;

    if-nez v5, :cond_4

    const/4 v0, 0x1

    .local v0, doNothing:Z
    array-length v2, v3

    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v5, v3, v1

    invoke-static {p1, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    if-ltz v5, :cond_1

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_2

    move-object v5, p1

    .end local v0           #doNothing:Z
    .end local v1           #i:I
    .end local v2           #n:I
    .end local p1
    :goto_1
    return-object v5

    .restart local v0       #doNothing:Z
    .restart local v1       #i:I
    .restart local v2       #n:I
    .restart local p1
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    instance-of v5, p1, Landroid/text/Spannable;

    if-nez v5, :cond_4

    instance-of v5, p1, Landroid/text/Spanned;

    if-eqz v5, :cond_3

    new-instance v5, Landroid/text/SpannedString;

    new-instance v6, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    check-cast p1, Landroid/text/Spanned;

    .end local p1
    invoke-direct {v6, p1, v3, v4}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    invoke-direct {v5, v6}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    .restart local p1
    :cond_3
    new-instance v5, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    invoke-direct {v5, p1, v3, v4}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    invoke-virtual {v5}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .end local v0           #doNothing:Z
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_4
    instance-of v5, p1, Landroid/text/Spanned;

    if-eqz v5, :cond_5

    new-instance v5, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    check-cast p1, Landroid/text/Spanned;

    .end local p1
    invoke-direct {v5, p1, v3, v4}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    goto :goto_1

    .restart local p1
    :cond_5
    new-instance v5, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    invoke-direct {v5, p1, v3, v4}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    goto :goto_1
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "view"
    .parameter "sourceText"
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    return-void
.end method

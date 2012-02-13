.class Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
.super Ljava/lang/Object;
.source "PasswordTransformationMethod.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/PasswordTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordCharSequence"
.end annotation


# instance fields
.field private mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "source"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 8
    .parameter "i"

    .prologue
    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spanned;

    if-eqz v5, :cond_2

    iget-object v2, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    .local v2, sp:Landroid/text/Spanned;
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .local v3, st:I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .local v1, en:I
    if-lt p1, v3, :cond_0

    if-ge p1, v1, :cond_0

    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .end local v1           #en:I
    .end local v2           #sp:Landroid/text/Spanned;
    .end local v3           #st:I
    :goto_0
    return v5

    .restart local v1       #en:I
    .restart local v2       #sp:Landroid/text/Spanned;
    .restart local v3       #st:I
    :cond_0
    const/4 v5, 0x0

    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Landroid/text/method/PasswordTransformationMethod$Visible;

    invoke-interface {v2, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .local v4, visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    const/4 v0, 0x0

    .local v0, a:I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    aget-object v5, v4, v0

    #getter for: Landroid/text/method/PasswordTransformationMethod$Visible;->mTransformer:Landroid/text/method/PasswordTransformationMethod;
    invoke-static {v5}, Landroid/text/method/PasswordTransformationMethod$Visible;->access$000(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    aget-object v5, v4, v0

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aget-object v5, v4, v0

    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-lt p1, v3, :cond_1

    if-ge p1, v1, :cond_1

    iget-object v5, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #a:I
    .end local v1           #en:I
    .end local v2           #sp:Landroid/text/Spanned;
    .end local v3           #st:I
    .end local v4           #visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    :cond_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$100()C

    move-result v5

    goto :goto_0
.end method

.method public getChars(II[CI)V
    .locals 17
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "off"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 v11, -0x1

    .local v11, st:I
    const/4 v6, -0x1

    .local v6, en:I
    const/4 v9, 0x0

    .local v9, nvisible:I
    const/4 v12, 0x0

    .local v12, starts:[I
    const/4 v7, 0x0

    .local v7, ends:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move-object v14, v0

    instance-of v14, v14, Landroid/text/Spanned;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    move-object v10, v0

    check-cast v10, Landroid/text/Spanned;

    .local v10, sp:Landroid/text/Spanned;
    sget-object v14, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v10, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    sget-object v14, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v10, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    const/4 v14, 0x0

    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v15

    const-class v16, Landroid/text/method/PasswordTransformationMethod$Visible;

    move-object v0, v10

    move v1, v14

    move v2, v15

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .local v13, visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    array-length v9, v13

    new-array v12, v9, [I

    new-array v7, v9, [I

    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v14, v13, v8

    #getter for: Landroid/text/method/PasswordTransformationMethod$Visible;->mTransformer:Landroid/text/method/PasswordTransformationMethod;
    invoke-static {v14}, Landroid/text/method/PasswordTransformationMethod$Visible;->access$000(Landroid/text/method/PasswordTransformationMethod$Visible;)Landroid/text/method/PasswordTransformationMethod;

    move-result-object v14

    invoke-interface {v10, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    if-ltz v14, :cond_0

    aget-object v14, v13, v8

    invoke-interface {v10, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    aput v14, v12, v8

    aget-object v14, v13, v8

    invoke-interface {v10, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    aput v14, v7, v8

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v8           #i:I
    .end local v10           #sp:Landroid/text/Spanned;
    .end local v13           #visible:[Landroid/text/method/PasswordTransformationMethod$Visible;
    :cond_1
    move/from16 v8, p1

    .restart local v8       #i:I
    :goto_1
    move v0, v8

    move/from16 v1, p2

    if-ge v0, v1, :cond_6

    if-lt v8, v11, :cond_2

    if-lt v8, v6, :cond_4

    :cond_2
    const/4 v13, 0x0

    .local v13, visible:Z
    const/4 v5, 0x0

    .local v5, a:I
    :goto_2
    if-ge v5, v9, :cond_3

    aget v14, v12, v5

    if-lt v8, v14, :cond_5

    aget v14, v7, v5

    if-ge v8, v14, :cond_5

    const/4 v13, 0x1

    :cond_3
    if-nez v13, :cond_4

    sub-int v14, v8, p1

    add-int v14, v14, p4

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->access$100()C

    move-result v15

    aput-char v15, p3, v14

    .end local v5           #a:I
    .end local v13           #visible:Z
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .restart local v5       #a:I
    .restart local v13       #visible:Z
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5           #a:I
    .end local v13           #visible:Z
    :cond_6
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .local v0, buf:[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

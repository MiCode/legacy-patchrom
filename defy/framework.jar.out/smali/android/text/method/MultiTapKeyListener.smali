.class public Landroid/text/method/MultiTapKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "MultiTapKeyListener.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/MultiTapKeyListener$Timeout;
    }
.end annotation


# static fields
.field private static sInstance:[Landroid/text/method/MultiTapKeyListener;

.field private static final sRecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoText:Z

.field private mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/MultiTapKeyListener;

    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, ".,1!@#$%^&*:/?\'=()"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0x9

    const-string v2, "abc2ABC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "def3DEF"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xb

    const-string v2, "ghi4GHI"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xc

    const-string v2, "jkl5JKL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xd

    const-string v2, "mno6MNO"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xe

    const-string v2, "pqrs7PQRS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0xf

    const-string v2, "tuv8TUV"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0x10

    const-string v2, "wxyz9WXYZ"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "0+"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const/16 v1, 0x12

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 0
    .parameter "cap"
    .parameter "autotext"

    .prologue
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    iput-object p1, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    iput-boolean p2, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/MultiTapKeyListener;
    .locals 3
    .parameter "autotext"
    .parameter "cap"

    .prologue
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :goto_0
    add-int v0, v1, v2

    .local v0, off:I
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    new-instance v2, Landroid/text/method/MultiTapKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/MultiTapKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    :cond_0
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    aget-object v1, v1, v0

    return-object v1

    .end local v0           #off:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static removeTimeouts(Landroid/text/Spannable;)V
    .locals 6
    .parameter "buf"

    .prologue
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/method/MultiTapKeyListener$Timeout;

    .local v2, timeout:[Landroid/text/method/MultiTapKeyListener$Timeout;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v1, v2, v0

    .local v1, t:Landroid/text/method/MultiTapKeyListener$Timeout;
    invoke-virtual {v1, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    #setter for: Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;
    invoke-static {v1, v3}, Landroid/text/method/MultiTapKeyListener$Timeout;->access$002(Landroid/text/method/MultiTapKeyListener$Timeout;Landroid/text/Editable;)Landroid/text/Editable;

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #t:Landroid/text/method/MultiTapKeyListener$Timeout;
    :cond_0
    return-void
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/MultiTapKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 32
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v29, 0x0

    .local v29, pref:I
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v29

    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v16

    .local v16, a:I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v20

    .local v20, b:I
    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, selStart:I
    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .local v7, selEnd:I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    .local v18, activeStart:I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    .local v17, activeEnd:I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    const/high16 v8, -0x100

    and-int/2addr v5, v8

    ushr-int/lit8 v30, v5, 0x18

    .local v30, rec:I
    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_8

    move/from16 v0, v17

    move v1, v7

    if-ne v0, v1, :cond_8

    sub-int v5, v7, v6

    const/4 v8, 0x1

    if-ne v5, v8, :cond_8

    if-ltz v30, :cond_8

    sget-object v5, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v30

    move v1, v5

    if-ge v0, v1, :cond_8

    const/16 v5, 0x11

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p2

    move v1, v6

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v22

    .local v22, current:C
    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move v1, v6

    move v2, v7

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    new-instance v31, Landroid/text/method/MultiTapKeyListener$Timeout;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .local v31, t:Landroid/text/method/MultiTapKeyListener$Timeout;
    const/4 v5, 0x1

    .end local v22           #current:C
    .end local v31           #t:Landroid/text/method/MultiTapKeyListener$Timeout;
    :goto_0
    return v5

    .restart local v22       #current:C
    :cond_1
    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move v1, v6

    move v2, v7

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    new-instance v31, Landroid/text/method/MultiTapKeyListener$Timeout;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .restart local v31       #t:Landroid/text/method/MultiTapKeyListener$Timeout;
    const/4 v5, 0x1

    goto :goto_0

    .end local v22           #current:C
    .end local v31           #t:Landroid/text/method/MultiTapKeyListener$Timeout;
    :cond_2
    sget-object v5, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    move v0, v5

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    sget-object v5, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, val:Ljava/lang/String;
    move-object/from16 v0, p2

    move v1, v6

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v21

    .local v21, ch:C
    move-object v0, v8

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .local v9, ix:I
    if-ltz v9, :cond_3

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .end local v9           #ix:I
    rem-int v9, v5, v9

    .restart local v9       #ix:I
    add-int/lit8 v10, v9, 0x1

    move-object/from16 v5, p2

    invoke-interface/range {v5 .. v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    new-instance v31, Landroid/text/method/MultiTapKeyListener$Timeout;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .restart local v31       #t:Landroid/text/method/MultiTapKeyListener$Timeout;
    const/4 v5, 0x1

    goto :goto_0

    .end local v8           #val:Ljava/lang/String;
    .end local v9           #ix:I
    .end local v21           #ch:C
    .end local v31           #t:Landroid/text/method/MultiTapKeyListener$Timeout;
    :cond_3
    sget-object v5, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v30

    if-ltz v30, :cond_4

    move-object/from16 v0, p2

    move v1, v7

    move v2, v7

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v6, v7

    :cond_4
    :goto_1
    if-ltz v30, :cond_c

    sget-object v5, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .restart local v8       #val:Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, off:I
    and-int/lit8 v5, v29, 0x1

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v23, 0x0

    .local v23, i:I
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_5

    move-object v0, v8

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_9

    move/from16 v14, v23

    .end local v23           #i:I
    :cond_5
    if-eq v6, v7, :cond_6

    move-object/from16 v0, p2

    move v1, v7

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_6
    sget-object v5, Landroid/text/method/MultiTapKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/16 v9, 0x11

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    move v3, v6

    move v4, v9

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v10, p2

    move v11, v6

    move v12, v7

    move-object v13, v8

    invoke-interface/range {v10 .. v15}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    sget-object v5, Landroid/text/method/MultiTapKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v28

    .local v28, oldStart:I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    move v0, v7

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p2

    move/from16 v1, v28

    move v2, v7

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v8, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v28

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .end local v8           #val:Ljava/lang/String;
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    shl-int/lit8 v8, v30, 0x18

    or-int/lit8 v8, v8, 0x21

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v28

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    new-instance v31, Landroid/text/method/MultiTapKeyListener$Timeout;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .restart local v31       #t:Landroid/text/method/MultiTapKeyListener$Timeout;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_b

    const/4 v5, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v8

    const-class v9, Landroid/text/method/KeyListener;

    move-object/from16 v0, p2

    move v1, v5

    move v2, v8

    move-object v3, v9

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Landroid/text/method/KeyListener;

    .local v27, methods:[Landroid/text/method/KeyListener;
    move-object/from16 v19, v27

    .local v19, arr$:[Landroid/text/method/KeyListener;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v24, 0x0

    .local v24, i$:I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    aget-object v26, v19, v24

    .local v26, method:Landroid/text/method/KeyListener;
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .end local v14           #off:I
    .end local v19           #arr$:[Landroid/text/method/KeyListener;
    .end local v24           #i$:I
    .end local v25           #len$:I
    .end local v26           #method:Landroid/text/method/KeyListener;
    .end local v27           #methods:[Landroid/text/method/KeyListener;
    .end local v28           #oldStart:I
    .end local v31           #t:Landroid/text/method/MultiTapKeyListener$Timeout;
    :cond_8
    sget-object v5, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v30

    goto/16 :goto_1

    .restart local v8       #val:Ljava/lang/String;
    .restart local v14       #off:I
    .restart local v23       #i:I
    :cond_9
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .end local v8           #val:Ljava/lang/String;
    .end local v23           #i:I
    .restart local v19       #arr$:[Landroid/text/method/KeyListener;
    .restart local v24       #i$:I
    .restart local v25       #len$:I
    .restart local v27       #methods:[Landroid/text/method/KeyListener;
    .restart local v28       #oldStart:I
    .restart local v31       #t:Landroid/text/method/MultiTapKeyListener$Timeout;
    :cond_a
    const/4 v5, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v8

    const/16 v9, 0x12

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move v2, v5

    move v3, v8

    move v4, v9

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .end local v19           #arr$:[Landroid/text/method/KeyListener;
    .end local v24           #i$:I
    .end local v25           #len$:I
    .end local v27           #methods:[Landroid/text/method/KeyListener;
    :cond_b
    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v14           #off:I
    .end local v28           #oldStart:I
    .end local v31           #t:Landroid/text/method/MultiTapKeyListener$Timeout;
    :cond_c
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .parameter "s"
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 1
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"
    .parameter "start"
    .parameter "stop"

    .prologue
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    :cond_0
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .parameter "s"
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    return-void
.end method

.class final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$Height;,
        Landroid/content/res/StringBlock$StyleIDs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z


# instance fields
.field private final mNative:I

.field private final mOwnsNative:Z

.field private mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:[Ljava/lang/CharSequence;

.field mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final mUseSparse:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 1
    .parameter "obj"
    .parameter "useSparse"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iput p1, p0, Landroid/content/res/StringBlock;->mNative:I

    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "size"
    .parameter "useSparse"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)I

    move-result v0

    iput v0, p0, Landroid/content/res/StringBlock;->mNative:I

    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .parameter "data"
    .parameter "useSparse"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/content/res/StringBlock;->nativeCreate([BII)I

    move-result v0

    iput v0, p0, Landroid/content/res/StringBlock;->mNative:I

    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method private static addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 4
    .parameter "buffer"
    .parameter "what"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    .local v0, len:I
    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    sub-int v1, p2, v2

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-lez p2, :cond_0

    sub-int v1, p2, v2

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v0, :cond_1

    sub-int v1, p3, v2

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_1

    add-int/lit8 p3, p3, 0x1

    :goto_1
    if-ge p3, v0, :cond_1

    sub-int v1, p3, v2

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_3

    :cond_1
    const/16 v1, 0x33

    invoke-interface {p0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;
    .locals 22
    .parameter "str"
    .parameter "style"
    .parameter "ids"

    .prologue
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v18, p1

    :goto_0
    return-object v18

    :cond_0
    new-instance v5, Landroid/text/SpannableString;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v5, buffer:Landroid/text/SpannableString;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    move v0, v8

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    aget v16, p2, v8

    .local v16, type:I
    #getter for: Landroid/content/res/StringBlock$StyleIDs;->boldId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    new-instance v18, Landroid/text/style/StyleSpan;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x3

    goto :goto_1

    :cond_2
    #getter for: Landroid/content/res/StringBlock$StyleIDs;->italicId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$100(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    new-instance v18, Landroid/text/style/StyleSpan;

    const/16 v19, 0x2

    invoke-direct/range {v18 .. v19}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    #getter for: Landroid/content/res/StringBlock$StyleIDs;->underlineId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$200(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    new-instance v18, Landroid/text/style/UnderlineSpan;

    invoke-direct/range {v18 .. v18}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_4
    #getter for: Landroid/content/res/StringBlock$StyleIDs;->ttId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$300(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    new-instance v18, Landroid/text/style/TypefaceSpan;

    const-string v19, "monospace"

    invoke-direct/range {v18 .. v19}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_5
    #getter for: Landroid/content/res/StringBlock$StyleIDs;->bigId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$400(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    new-instance v18, Landroid/text/style/RelativeSizeSpan;

    const/high16 v19, 0x3fa0

    invoke-direct/range {v18 .. v19}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    :cond_6
    #getter for: Landroid/content/res/StringBlock$StyleIDs;->smallId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$500(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    new-instance v18, Landroid/text/style/RelativeSizeSpan;

    const v19, 0x3f4ccccd

    invoke-direct/range {v18 .. v19}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    :cond_7
    #getter for: Landroid/content/res/StringBlock$StyleIDs;->subId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$700(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    new-instance v18, Landroid/text/style/SubscriptSpan;

    invoke-direct/range {v18 .. v18}, Landroid/text/style/SubscriptSpan;-><init>()V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    :cond_8
    #getter for: Landroid/content/res/StringBlock$StyleIDs;->supId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$600(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    new-instance v18, Landroid/text/style/SuperscriptSpan;

    invoke-direct/range {v18 .. v18}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    :cond_9
    #getter for: Landroid/content/res/StringBlock$StyleIDs;->strikeId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$800(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    new-instance v18, Landroid/text/style/StrikethroughSpan;

    invoke-direct/range {v18 .. v18}, Landroid/text/style/StrikethroughSpan;-><init>()V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    :cond_a
    #getter for: Landroid/content/res/StringBlock$StyleIDs;->listItemId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$900(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    new-instance v18, Landroid/text/style/BulletSpan;

    const/16 v19, 0xa

    invoke-direct/range {v18 .. v19}, Landroid/text/style/BulletSpan;-><init>(I)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto/16 :goto_2

    :cond_b
    #getter for: Landroid/content/res/StringBlock$StyleIDs;->marqueeId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$1000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x12

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/res/StringBlock;->mNative:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeGetString(II)Ljava/lang/String;

    move-result-object v15

    .local v15, tag:Ljava/lang/String;
    const-string v18, "font;"

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    const-string v18, ";height="

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, sub:Ljava/lang/String;
    if-eqz v13, :cond_d

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .local v12, size:I
    new-instance v18, Landroid/content/res/StringBlock$Height;

    move-object/from16 v0, v18

    move v1, v12

    invoke-direct {v0, v1}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .end local v12           #size:I
    :cond_d
    const-string v18, ";size="

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_e

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .restart local v12       #size:I
    new-instance v18, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move v1, v12

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .end local v12           #size:I
    :cond_e
    const-string v18, ";fgcolor="

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_f

    const/16 v18, -0x1

    move-object v0, v13

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v6

    .local v6, color:I
    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v18

    move v1, v6

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .end local v6           #color:I
    :cond_f
    const-string v18, ";bgcolor="

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    const/16 v18, -0x1

    move-object v0, v13

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v6

    .restart local v6       #color:I
    new-instance v18, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, v18

    move v1, v6

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .end local v6           #color:I
    .end local v13           #sub:Ljava/lang/String;
    :cond_10
    const-string v18, "a;"

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_11

    const-string v18, ";href="

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #sub:Ljava/lang/String;
    if-eqz v13, :cond_1

    new-instance v18, Landroid/text/style/URLSpan;

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-direct {v0, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .end local v13           #sub:Ljava/lang/String;
    :cond_11
    const-string v18, "annotation;"

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    .local v10, len:I
    const/16 v18, 0x3b

    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .local v14, t:I
    :goto_3
    if-ge v14, v10, :cond_1

    const/16 v18, 0x3d

    move-object v0, v15

    move/from16 v1, v18

    move v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .local v7, eq:I
    if-ltz v7, :cond_1

    const/16 v18, 0x3b

    move-object v0, v15

    move/from16 v1, v18

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .local v11, next:I
    if-gez v11, :cond_12

    move v11, v10

    :cond_12
    add-int/lit8 v18, v14, 0x1

    move-object v0, v15

    move/from16 v1, v18

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .local v9, key:Ljava/lang/String;
    add-int/lit8 v18, v7, 0x1

    move-object v0, v15

    move/from16 v1, v18

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .local v17, value:Ljava/lang/String;
    new-instance v18, Landroid/text/Annotation;

    move-object/from16 v0, v18

    move-object v1, v9

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v19, v8, 0x1

    aget v19, p2, v19

    add-int/lit8 v20, v8, 0x2

    aget v20, p2, v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x21

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v14, v11

    goto :goto_3

    .end local v7           #eq:I
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #len:I
    .end local v11           #next:I
    .end local v14           #t:I
    .end local v15           #tag:Ljava/lang/String;
    .end local v16           #type:I
    .end local v17           #value:Ljava/lang/String;
    :cond_13
    new-instance v18, Landroid/text/SpannedString;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private static final native nativeCreate([BII)I
.end method

.method private static final native nativeDestroy(I)V
.end method

.method private static final native nativeGetSize(I)I
.end method

.method private static final native nativeGetString(II)Ljava/lang/String;
.end method

.method private static final native nativeGetStyle(II)[I
.end method

.method private static final native nativeIndexOfString(ILjava/lang/String;)I
.end method

.method private static subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "full"
    .parameter "attribute"

    .prologue
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, start:I
    if-gez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x3b

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, end:I
    if-gez v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v0}, Landroid/content/res/StringBlock;->nativeDestroy(I)V

    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/CharSequence;
    .locals 7
    .parameter "idx"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aget-object v1, v4, p1

    .local v1, res:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    monitor-exit p0

    :goto_0
    return-object v1

    .end local v1           #res:Ljava/lang/CharSequence;
    :cond_0
    iget-object v4, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .restart local v1       #res:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    monitor-exit p0

    goto :goto_0

    .end local v1           #res:Ljava/lang/CharSequence;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    iget v4, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v4}, Landroid/content/res/StringBlock;->nativeGetSize(I)I

    move-result v0

    .local v0, num:I
    iget-boolean v4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v4, :cond_5

    const/16 v4, 0xfa

    if-le v0, v4, :cond_5

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    .end local v0           #num:I
    :cond_2
    :goto_1
    iget v4, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v4, p1}, Landroid/content/res/StringBlock;->nativeGetString(II)Ljava/lang/String;

    move-result-object v2

    .local v2, str:Ljava/lang/String;
    move-object v1, v2

    .restart local v1       #res:Ljava/lang/CharSequence;
    iget v4, p0, Landroid/content/res/StringBlock;->mNative:I

    invoke-static {v4, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(II)[I

    move-result-object v3

    .local v3, style:[I
    if-eqz v3, :cond_4

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v4, :cond_3

    new-instance v4, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v4}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "b"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    #setter for: Landroid/content/res/StringBlock$StyleIDs;->boldId:I
    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$002(Landroid/content/res/StringBlock$StyleIDs;I)I

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "i"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    #setter for: Landroid/content/res/StringBlock$StyleIDs;->italicId:I
    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$102(Landroid/content/res/StringBlock$StyleIDs;I)I

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "u"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    #setter for: Landroid/content/res/StringBlock$StyleIDs;->underlineId:I
    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$202(Landroid/content/res/StringBlock$StyleIDs;I)I

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "tt"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    #setter for: Landroid/content/res/StringBlock$StyleIDs;->ttId:I
    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$302(Landroid/content/res/StringBlock$StyleIDs;I)I

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "big"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    #setter for: Landroid/content/res/StringBlock$StyleIDs;->bigId:I
    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$402(Landroid/content/res/StringBlock$StyleIDs;I)I

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "small"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    #setter for: Landroid/content/res/StringBlock$StyleIDs;->smallId:I
    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$502(Landroid/content/res/StringBlock$StyleIDs;I)I

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "sup"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    #setter for: Landroid/content/res/StringBlock$StyleIDs;->supId:I
    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$602(Landroid/content/res/StringBlock$StyleIDs;I)I

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "sub"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    #setter for: Landroid/content/res/StringBlock$StyleIDs;->subId:I
    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$702(Landroid/content/res/StringBlock$StyleIDs;I)I

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "strike"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    #setter for: Landroid/content/res/StringBlock$StyleIDs;->strikeId:I
    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$802(Landroid/content/res/StringBlock$StyleIDs;I)I

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "li"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    #setter for: Landroid/content/res/StringBlock$StyleIDs;->listItemId:I
    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$902(Landroid/content/res/StringBlock$StyleIDs;I)I

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iget v5, p0, Landroid/content/res/StringBlock;->mNative:I

    const-string v6, "marquee"

    invoke-static {v5, v6}, Landroid/content/res/StringBlock;->nativeIndexOfString(ILjava/lang/String;)I

    move-result v5

    #setter for: Landroid/content/res/StringBlock$StyleIDs;->marqueeId:I
    invoke-static {v4, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$1002(Landroid/content/res/StringBlock$StyleIDs;I)I

    :cond_3
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v2, v3, v4}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_4
    iget-object v4, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aput-object v1, v4, p1

    :goto_2
    monitor-exit p0

    goto/16 :goto_0

    .end local v1           #res:Ljava/lang/CharSequence;
    .end local v2           #str:Ljava/lang/String;
    .end local v3           #style:[I
    .restart local v0       #num:I
    :cond_5
    new-array v4, v0, [Ljava/lang/CharSequence;

    iput-object v4, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    goto/16 :goto_1

    .end local v0           #num:I
    .restart local v1       #res:Ljava/lang/CharSequence;
    .restart local v2       #str:Ljava/lang/String;
    .restart local v3       #style:[I
    :cond_6
    iget-object v4, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

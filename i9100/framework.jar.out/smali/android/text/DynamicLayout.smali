.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_MASK:I = -0x40000000

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static sLock:Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBottomPadding:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mIncludePad:Z

.field private mInts:Landroid/text/PackedIntVector;

.field private mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector",
            "<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private mTopPadding:I

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 483
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;-><init>(Z)V

    sput-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 484
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/DynamicLayout;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9
    .parameter "base"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 61
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 21
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 78
    if-nez p9, :cond_2

    move-object/from16 v6, p2

    :goto_0
    move-object/from16 v5, p0

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v5 .. v11}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 85
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 86
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 88
    if-eqz p9, :cond_4

    .line 89
    new-instance v5, Landroid/text/PackedIntVector;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 90
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 91
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 98
    :goto_1
    new-instance v5, Landroid/text/PackedObjectVector;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/PackedObjectVector;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 100
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 110
    if-eqz p9, :cond_0

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Landroid/text/Layout$Ellipsizer;

    .line 113
    .local v15, e:Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    move-object v1, v15

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 114
    move/from16 v0, p10

    move-object v1, v15

    iput v0, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 115
    move-object/from16 v0, p9

    move-object v1, v15

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 116
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/DynamicLayout;->mEllipsize:Z

    .line 125
    .end local v15           #e:Landroid/text/Layout$Ellipsizer;
    :cond_0
    if-eqz p9, :cond_5

    .line 126
    const/4 v5, 0x5

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 127
    .local v20, start:[I
    const/4 v5, 0x3

    const/high16 v6, -0x8000

    aput v6, v20, v5

    .line 132
    :goto_2
    const/4 v5, 0x1

    new-array v14, v5, [Landroid/text/Layout$Directions;

    const/4 v5, 0x0

    sget-object v6, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    aput-object v6, v14, v5

    .line 134
    .local v14, dirs:[Landroid/text/Layout$Directions;
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v16

    .line 135
    .local v16, fm:Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move v12, v0

    .line 136
    .local v12, asc:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move v13, v0

    .line 138
    .local v13, desc:I
    const/4 v5, 0x0

    const/high16 v6, 0x4000

    aput v6, v20, v5

    .line 139
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 140
    const/4 v5, 0x2

    aput v13, v20, v5

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 143
    const/4 v5, 0x1

    sub-int v6, v13, v12

    aput v6, v20, v5

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v14}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 150
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 152
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_7

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 154
    new-instance v5, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    .line 157
    :cond_1
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v18, v0

    .line 158
    .local v18, sp:Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface/range {v18 .. v18}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/DynamicLayout$ChangeWatcher;

    .line 159
    .local v19, spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_3
    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_6

    .line 160
    aget-object v5, v19, v17

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 159
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 78
    .end local v12           #asc:I
    .end local v13           #desc:I
    .end local v14           #dirs:[Landroid/text/Layout$Directions;
    .end local v16           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v17           #i:I
    .end local v18           #sp:Landroid/text/Spannable;
    .end local v19           #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    .end local v20           #start:[I
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_3

    new-instance v5, Landroid/text/Layout$SpannedEllipsizer;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v6, v5

    goto/16 :goto_0

    :cond_3
    new-instance v5, Landroid/text/Layout$Ellipsizer;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v6, v5

    goto/16 :goto_0

    .line 93
    :cond_4
    new-instance v5, Landroid/text/PackedIntVector;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 94
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 95
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_1

    .line 129
    :cond_5
    const/4 v5, 0x3

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .restart local v20       #start:[I
    goto/16 :goto_2

    .line 162
    .restart local v12       #asc:I
    .restart local v13       #desc:I
    .restart local v14       #dirs:[Landroid/text/Layout$Directions;
    .restart local v16       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v17       #i:I
    .restart local v18       #sp:Landroid/text/Spannable;
    .restart local v19       #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const v8, 0x800012

    move-object/from16 v0, v18

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 166
    .end local v17           #i:I
    .end local v18           #sp:Landroid/text/Spannable;
    .end local v19           #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_7
    return-void
.end method

.method static synthetic access$000(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private dump(Z)V
    .locals 7
    .parameter "show"

    .prologue
    const-string v6, ""

    .line 346
    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v1

    .line 348
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 349
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/text/DynamicLayout;->getLineStart(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/text/DynamicLayout;->getLineEnd(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 351
    if-eqz p1, :cond_0

    .line 352
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/text/DynamicLayout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, v0}, Landroid/text/DynamicLayout;->getLineEnd(I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 356
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ""

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ""

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .locals 42
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v6

    if-eq v0, v1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 172
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    move-object v5, v0

    .line 173
    .local v5, text:Ljava/lang/CharSequence;
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v32

    .line 177
    .local v32, len:I
    const/16 v6, 0xa

    const/4 v7, 0x1

    sub-int v7, p2, v7

    invoke-static {v5, v6, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v26

    .line 178
    .local v26, find:I
    if-gez v26, :cond_4

    .line 179
    const/16 v26, 0x0

    .line 184
    :goto_1
    sub-int v22, p2, v26

    .line 185
    .local v22, diff:I
    add-int p3, p3, v22

    .line 186
    add-int p4, p4, v22

    .line 187
    sub-int p2, p2, v22

    .line 192
    const/16 v6, 0xa

    add-int v7, p2, p4

    invoke-static {v5, v6, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v33

    .line 193
    .local v33, look:I
    if-gez v33, :cond_5

    .line 194
    move/from16 v33, v32

    .line 198
    :goto_2
    add-int v6, p2, p4

    sub-int v20, v33, v6

    .line 199
    .local v20, change:I
    add-int p3, p3, v20

    .line 200
    add-int p4, p4, v20

    .line 204
    instance-of v6, v5, Landroid/text/Spanned;

    if-eqz v6, :cond_7

    .line 205
    move-object v0, v5

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v36, v0

    .line 209
    .local v36, sp:Landroid/text/Spanned;
    :cond_1
    const/16 v18, 0x0

    .line 211
    .local v18, again:Z
    add-int v6, p2, p4

    const-class v7, Landroid/text/style/WrapTogetherSpan;

    move-object/from16 v0, v36

    move/from16 v1, p2

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v27

    .line 214
    .local v27, force:[Ljava/lang/Object;
    const/16 v29, 0x0

    .local v29, i:I
    :goto_3
    move-object/from16 v0, v27

    array-length v0, v0

    move v6, v0

    move/from16 v0, v29

    move v1, v6

    if-ge v0, v1, :cond_6

    .line 215
    aget-object v6, v27, v29

    move-object/from16 v0, v36

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v37

    .line 216
    .local v37, st:I
    aget-object v6, v27, v29

    move-object/from16 v0, v36

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v23

    .line 218
    .local v23, en:I
    move/from16 v0, v37

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 219
    const/16 v18, 0x1

    .line 221
    sub-int v22, p2, v37

    .line 222
    add-int p3, p3, v22

    .line 223
    add-int p4, p4, v22

    .line 224
    sub-int p2, p2, v22

    .line 227
    :cond_2
    add-int v6, p2, p4

    move/from16 v0, v23

    move v1, v6

    if-le v0, v1, :cond_3

    .line 228
    const/16 v18, 0x1

    .line 230
    add-int v6, p2, p4

    sub-int v22, v23, v6

    .line 231
    add-int p3, p3, v22

    .line 232
    add-int p4, p4, v22

    .line 214
    :cond_3
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 181
    .end local v18           #again:Z
    .end local v20           #change:I
    .end local v22           #diff:I
    .end local v23           #en:I
    .end local v27           #force:[Ljava/lang/Object;
    .end local v29           #i:I
    .end local v33           #look:I
    .end local v36           #sp:Landroid/text/Spanned;
    .end local v37           #st:I
    :cond_4
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 196
    .restart local v22       #diff:I
    .restart local v33       #look:I
    :cond_5
    add-int/lit8 v33, v33, 0x1

    goto :goto_2

    .line 235
    .restart local v18       #again:Z
    .restart local v20       #change:I
    .restart local v27       #force:[Ljava/lang/Object;
    .restart local v29       #i:I
    .restart local v36       #sp:Landroid/text/Spanned;
    :cond_6
    if-nez v18, :cond_1

    .line 240
    .end local v18           #again:Z
    .end local v27           #force:[Ljava/lang/Object;
    .end local v29           #i:I
    .end local v36           #sp:Landroid/text/Spanned;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v38

    .line 241
    .local v38, startline:I
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v39

    .line 243
    .local v39, startv:I
    add-int v6, p2, p3

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v24

    .line 244
    .local v24, endline:I
    add-int v6, p2, p4

    move v0, v6

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 245
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v24

    .line 246
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v25

    .line 247
    .local v25, endv:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v6

    move/from16 v0, v24

    move v1, v6

    if-ne v0, v1, :cond_10

    const/4 v6, 0x1

    move/from16 v31, v6

    .line 253
    .local v31, islast:Z
    :goto_4
    sget-object v6, Landroid/text/DynamicLayout;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 254
    :try_start_0
    sget-object v4, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 255
    .local v4, reflowed:Landroid/text/StaticLayout;
    const/4 v7, 0x0

    sput-object v7, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 256
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    if-nez v4, :cond_9

    .line 259
    new-instance v4, Landroid/text/StaticLayout;

    .end local v4           #reflowed:Landroid/text/StaticLayout;
    const/4 v6, 0x1

    invoke-direct {v4, v6}, Landroid/text/StaticLayout;-><init>(Z)V

    .line 261
    .restart local v4       #reflowed:Landroid/text/StaticLayout;
    :cond_9
    add-int v7, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    move v6, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v17, v0

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v17}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 266
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v34

    .line 272
    .local v34, n:I
    add-int v6, p2, p4

    move v0, v6

    move/from16 v1, v32

    if-eq v0, v1, :cond_a

    const/4 v6, 0x1

    sub-int v6, v34, v6

    invoke-virtual {v4, v6}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v6

    add-int v7, p2, p4

    if-ne v6, v7, :cond_a

    .line 274
    add-int/lit8 v34, v34, -0x1

    .line 278
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object v6, v0

    sub-int v7, v24, v38

    move-object v0, v6

    move/from16 v1, v38

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    move-object v6, v0

    sub-int v7, v24, v38

    move-object v0, v6

    move/from16 v1, v38

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 283
    move-object v0, v4

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v28

    .line 284
    .local v28, ht:I
    const/16 v41, 0x0

    .local v41, toppad:I
    const/16 v19, 0x0

    .line 286
    .local v19, botpad:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    move v6, v0

    if-eqz v6, :cond_b

    if-nez v38, :cond_b

    .line 287
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v41

    .line 288
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mTopPadding:I

    .line 289
    sub-int v28, v28, v41

    .line 291
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    move v6, v0

    if-eqz v6, :cond_c

    if-eqz v31, :cond_c

    .line 292
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v19

    .line 293
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mBottomPadding:I

    .line 294
    add-int v28, v28, v19

    .line 297
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object v6, v0

    const/4 v7, 0x0

    sub-int v8, p4, p3

    move-object v0, v6

    move/from16 v1, v38

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object v6, v0

    const/4 v7, 0x1

    sub-int v8, v39, v25

    add-int v8, v8, v28

    move-object v0, v6

    move/from16 v1, v38

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 304
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    move v6, v0

    if-eqz v6, :cond_11

    .line 305
    const/4 v6, 0x5

    move v0, v6

    new-array v0, v0, [I

    move-object/from16 v30, v0

    .line 306
    .local v30, ints:[I
    const/4 v6, 0x3

    const/high16 v7, -0x8000

    aput v7, v30, v6

    .line 311
    :goto_5
    const/4 v6, 0x1

    move v0, v6

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v35, v0

    .line 314
    .local v35, objects:[Landroid/text/Layout$Directions;
    const/16 v29, 0x0

    .restart local v29       #i:I
    :goto_6
    move/from16 v0, v29

    move/from16 v1, v34

    if-ge v0, v1, :cond_13

    .line 315
    const/4 v6, 0x0

    move-object v0, v4

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v7

    move-object v0, v4

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v8

    shl-int/lit8 v8, v8, 0x1e

    or-int/2addr v7, v8

    move-object v0, v4

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v8

    if-eqz v8, :cond_12

    const/high16 v8, 0x2000

    :goto_7
    or-int/2addr v7, v8

    aput v7, v30, v6

    .line 319
    move-object v0, v4

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v6

    add-int v40, v6, v39

    .line 320
    .local v40, top:I
    if-lez v29, :cond_d

    .line 321
    sub-int v40, v40, v41

    .line 322
    :cond_d
    const/4 v6, 0x1

    aput v40, v30, v6

    .line 324
    move-object v0, v4

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v21

    .line 325
    .local v21, desc:I
    const/4 v6, 0x1

    sub-int v6, v34, v6

    move/from16 v0, v29

    move v1, v6

    if-ne v0, v1, :cond_e

    .line 326
    add-int v21, v21, v19

    .line 328
    :cond_e
    const/4 v6, 0x2

    aput v21, v30, v6

    .line 329
    const/4 v6, 0x0

    move-object v0, v4

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    aput-object v7, v35, v6

    .line 331
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    move v6, v0

    if-eqz v6, :cond_f

    .line 332
    const/4 v6, 0x3

    move-object v0, v4

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v7

    aput v7, v30, v6

    .line 333
    const/4 v6, 0x4

    move-object v0, v4

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v7

    aput v7, v30, v6

    .line 336
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object v6, v0

    add-int v7, v38, v29

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    move-object v6, v0

    add-int v7, v38, v29

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 314
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_6

    .line 247
    .end local v4           #reflowed:Landroid/text/StaticLayout;
    .end local v19           #botpad:I
    .end local v21           #desc:I
    .end local v28           #ht:I
    .end local v29           #i:I
    .end local v30           #ints:[I
    .end local v31           #islast:Z
    .end local v34           #n:I
    .end local v35           #objects:[Landroid/text/Layout$Directions;
    .end local v40           #top:I
    .end local v41           #toppad:I
    :cond_10
    const/4 v6, 0x0

    move/from16 v31, v6

    goto/16 :goto_4

    .line 256
    .restart local v31       #islast:Z
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 308
    .restart local v4       #reflowed:Landroid/text/StaticLayout;
    .restart local v19       #botpad:I
    .restart local v28       #ht:I
    .restart local v34       #n:I
    .restart local v41       #toppad:I
    :cond_11
    const/4 v6, 0x3

    move v0, v6

    new-array v0, v0, [I

    move-object/from16 v30, v0

    .restart local v30       #ints:[I
    goto/16 :goto_5

    .line 315
    .restart local v29       #i:I
    .restart local v35       #objects:[Landroid/text/Layout$Directions;
    :cond_12
    const/4 v8, 0x0

    goto :goto_7

    .line 340
    :cond_13
    sget-object v6, Landroid/text/DynamicLayout;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 341
    :try_start_2
    sput-object v4, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 342
    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7
.end method


# virtual methods
.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 463
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x0

    .line 467
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 455
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 459
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .parameter "line"

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0, p1, v2}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 371
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 2
    .parameter "line"

    .prologue
    .line 387
    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/Layout$Directions;

    return-object p0
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 375
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 367
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return v0
.end method

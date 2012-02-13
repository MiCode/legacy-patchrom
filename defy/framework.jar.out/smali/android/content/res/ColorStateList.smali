.class public Landroid/content/res/ColorStateList;
.super Ljava/lang/Object;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:[[I

.field private static final sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mColors:[I

.field private mDefaultColor:I

.field private mStateSpecs:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput-object v1, v0, v2

    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/content/res/ColorStateList$1;

    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1

    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return-void
.end method

.method public constructor <init>([[I[I)V
    .locals 2
    .parameter "states"
    .parameter "colors"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, -0x1

    iput v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v1, p1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    array-length v1, v1

    if-nez v1, :cond_0

    aget v1, p2, v0

    iput v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .locals 4
    .parameter "r"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .local v0, attrs:Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, type:I
    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_1
    if-eq v1, v3, :cond_2

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2
.end method

.method private static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/res/ColorStateList;
    .locals 5
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, name:Ljava/lang/String;
    const-string v2, "selector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0}, Landroid/content/res/ColorStateList;-><init>()V

    .local v0, colorStateList:Landroid/content/res/ColorStateList;
    invoke-direct {v0, p0, p1, p2}, Landroid/content/res/ColorStateList;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-object v0

    .end local v0           #colorStateList:Landroid/content/res/ColorStateList;
    :cond_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": invalid drawable tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 26
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    add-int/lit8 v11, v23, 0x1

    .local v11, innerDepth:I
    const/16 v14, 0x14

    .local v14, listAllocated:I
    const/4 v15, 0x0

    .local v15, listSize:I
    new-array v6, v14, [I

    .local v6, colorList:[I
    move v0, v14

    new-array v0, v0, [[I

    move-object/from16 v21, v0

    .local v21, stateSpecList:[[I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .local v22, type:I
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .local v8, depth:I
    if-ge v8, v11, :cond_1

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    :cond_1
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    if-gt v8, v11, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "item"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    const/4 v7, 0x0

    .local v7, colorRes:I
    const/high16 v5, -0x1

    .local v5, color:I
    const/4 v9, 0x0

    .local v9, haveColor:Z
    const/4 v12, 0x0

    .local v12, j:I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v18

    .local v18, numAttrs:I
    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .local v20, stateSpec:[I
    const/4 v10, 0x0

    .local v10, i:I
    move v13, v12

    .end local v12           #j:I
    .local v13, j:I
    :goto_1
    move v0, v10

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p3

    move v1, v10

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v19

    .local v19, stateResId:I
    if-nez v19, :cond_7

    .end local v19           #stateResId:I
    :cond_2
    move-object/from16 v0, v20

    move v1, v13

    invoke-static {v0, v1}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v20

    if-eqz v7, :cond_a

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    :cond_3
    if-eqz v15, :cond_4

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_5

    :cond_4
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/res/ColorStateList;->mDefaultColor:I

    :cond_5
    add-int/lit8 v23, v15, 0x1

    move/from16 v0, v23

    move v1, v14

    if-lt v0, v1, :cond_6

    add-int/lit8 v23, v15, 0x1

    invoke-static/range {v23 .. v23}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v14

    move v0, v14

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .local v16, ncolor:[I
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v0, v6

    move/from16 v1, v23

    move-object/from16 v2, v16

    move/from16 v3, v24

    move v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v14

    new-array v0, v0, [[I

    move-object/from16 v17, v0

    .local v17, nstate:[[I
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v17

    move/from16 v3, v24

    move v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v6, v16

    move-object/from16 v21, v17

    .end local v16           #ncolor:[I
    .end local v17           #nstate:[[I
    :cond_6
    aput v5, v6, v15

    aput-object v20, v21, v15

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .restart local v19       #stateResId:I
    :cond_7
    const v23, 0x10101a5

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    const/16 v23, 0x0

    move-object/from16 v0, p3

    move v1, v10

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v7

    if-nez v7, :cond_c

    move-object/from16 v0, p3

    move v1, v10

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v5

    const/4 v9, 0x1

    move v12, v13

    .end local v13           #j:I
    .restart local v12       #j:I
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move v13, v12

    .end local v12           #j:I
    .restart local v13       #j:I
    goto/16 :goto_1

    :cond_8
    add-int/lit8 v12, v13, 0x1

    .end local v13           #j:I
    .restart local v12       #j:I
    const/16 v23, 0x0

    move-object/from16 v0, p3

    move v1, v10

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v23

    if-eqz v23, :cond_9

    move/from16 v23, v19

    :goto_3
    aput v23, v20, v13

    goto :goto_2

    :cond_9
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v23, v0

    goto :goto_3

    .end local v12           #j:I
    .end local v19           #stateResId:I
    .restart local v13       #j:I
    :cond_a
    if-nez v9, :cond_3

    new-instance v23, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": <item> tag requires a \'android:color\' attribute."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v23

    .end local v5           #color:I
    .end local v7           #colorRes:I
    .end local v8           #depth:I
    .end local v9           #haveColor:Z
    .end local v10           #i:I
    .end local v13           #j:I
    .end local v18           #numAttrs:I
    .end local v20           #stateSpec:[I
    :cond_b
    move v0, v15

    new-array v0, v0, [I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mColors:[I

    move v0, v15

    new-array v0, v0, [[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mColors:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object v0, v6

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    move v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .restart local v5       #color:I
    .restart local v7       #colorRes:I
    .restart local v8       #depth:I
    .restart local v9       #haveColor:Z
    .restart local v10       #i:I
    .restart local v13       #j:I
    .restart local v18       #numAttrs:I
    .restart local v19       #stateResId:I
    .restart local v20       #stateSpec:[I
    :cond_c
    move v12, v13

    .end local v13           #j:I
    .restart local v12       #j:I
    goto/16 :goto_2
.end method

.method public static valueOf(I)Landroid/content/res/ColorStateList;
    .locals 7
    .parameter "color"

    .prologue
    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ColorStateList;

    move-object v0, v3

    .local v0, csl:Landroid/content/res/ColorStateList;
    :goto_0
    if-eqz v0, :cond_1

    monitor-exit v4

    move-object v1, v0

    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .local v1, csl:Ljava/lang/Object;
    :goto_1
    return-object v1

    .end local v1           #csl:Ljava/lang/Object;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    :cond_1
    new-instance v0, Landroid/content/res/ColorStateList;

    .end local v0           #csl:Landroid/content/res/ColorStateList;
    sget-object v3, Landroid/content/res/ColorStateList;->EMPTY:[[I

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput p0, v5, v6

    invoke-direct {v0, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .restart local v0       #csl:Landroid/content/res/ColorStateList;
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v4

    move-object v1, v0

    .restart local v1       #csl:Ljava/lang/Object;
    goto :goto_1

    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .end local v1           #csl:Ljava/lang/Object;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/ColorStateList;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getColorForState([II)I
    .locals 4
    .parameter "stateSet"
    .parameter "defaultColor"

    .prologue
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v3

    .local v1, setLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v3, v0

    .local v2, stateSpec:[I
    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v0

    .end local v2           #stateSpec:[I
    :goto_1
    return v3

    .restart local v2       #stateSpec:[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #stateSpec:[I
    :cond_1
    move v3, p2

    goto :goto_1
.end method

.method public getDefaultColor()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return v0
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorStateList{mStateSpecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDefaultColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAlpha(I)Landroid/content/res/ColorStateList;
    .locals 5
    .parameter "alpha"

    .prologue
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v3, v3

    new-array v0, v3, [I

    .local v0, colors:[I
    array-length v2, v0

    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v1

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x18

    or-int/2addr v3, v4

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {v3, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v2

    .local v0, N:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method

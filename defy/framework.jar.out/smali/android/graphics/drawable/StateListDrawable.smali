.class public Landroid/graphics/drawable/StateListDrawable;
.super Landroid/graphics/drawable/DrawableContainer;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/StateListDrawable$1;,
        Landroid/graphics/drawable/StateListDrawable$StateListState;
    }
.end annotation


# static fields
.field private static final DEFAULT_DITHER:Z = true


# instance fields
.field private mMutated:Z

.field private final mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V
    .locals 2
    .parameter "state"
    .parameter "res"

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/DrawableContainer;-><init>()V

    new-instance v0, Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V

    .local v0, as:Landroid/graphics/drawable/StateListDrawable$StateListState;
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "stateSet"
    .parameter "drawable"

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public getStateCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getStateDrawableIndex([I)I
    .locals 1
    .parameter "stateSet"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #calls: Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I
    invoke-static {v0, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    return v0
.end method

.method getStateListState()Landroid/graphics/drawable/StateListDrawable$StateListState;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    return-object v0
.end method

.method public getStateSet(I)[I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #getter for: Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I
    invoke-static {v0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$100(Landroid/graphics/drawable/StateListDrawable$StateListState;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 20
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
    sget-object v17, Lcom/android/internal/R$styleable;->StateListDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move/from16 v4, v17

    invoke-super {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/DrawableContainer;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setVariablePadding(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/StateListDrawable$StateListState;->setConstantSize(Z)V

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setDither(Z)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    add-int/lit8 v10, v17, 0x1

    .local v10, innerDepth:I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, type:I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .local v6, depth:I
    if-ge v6, v10, :cond_1

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    if-gt v6, v10, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "item"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v8, 0x0

    .local v8, drawableRes:I
    const/4 v11, 0x0

    .local v11, j:I
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v13

    .local v13, numAttrs:I
    new-array v15, v13, [I

    .local v15, states:[I
    const/4 v9, 0x0

    .local v9, i:I
    move v12, v11

    .end local v11           #j:I
    .local v12, j:I
    :goto_1
    if-ge v9, v13, :cond_2

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v14

    .local v14, stateResId:I
    if-nez v14, :cond_3

    .end local v14           #stateResId:I
    :cond_2
    invoke-static {v15, v12}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v15

    if-eqz v8, :cond_6

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .local v7, dr:Landroid/graphics/drawable/Drawable;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v15

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    goto :goto_0

    .end local v7           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v14       #stateResId:I
    :cond_3
    const v17, 0x1010199

    move v0, v14

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    const/16 v17, 0x0

    move-object/from16 v0, p3

    move v1, v9

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v8

    move v11, v12

    .end local v12           #j:I
    .restart local v11       #j:I
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move v12, v11

    .end local v11           #j:I
    .restart local v12       #j:I
    goto :goto_1

    :cond_4
    add-int/lit8 v11, v12, 0x1

    .end local v12           #j:I
    .restart local v11       #j:I
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move v1, v9

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v17

    if-eqz v17, :cond_5

    move/from16 v17, v14

    :goto_4
    aput v17, v15, v12

    goto :goto_3

    :cond_5
    move v0, v14

    neg-int v0, v0

    move/from16 v17, v0

    goto :goto_4

    .end local v11           #j:I
    .end local v14           #stateResId:I
    .restart local v12       #j:I
    :cond_6
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "child tag defining a drawable"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_7
    invoke-static/range {p1 .. p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .restart local v7       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .end local v6           #depth:I
    .end local v7           #dr:Landroid/graphics/drawable/Drawable;
    .end local v8           #drawableRes:I
    .end local v9           #i:I
    .end local v12           #j:I
    .end local v13           #numAttrs:I
    .end local v15           #states:[I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    iget-boolean v4, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    if-nez v4, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-ne v4, p0, :cond_2

    iget-object v4, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #getter for: Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I
    invoke-static {v4}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$100(Landroid/graphics/drawable/StateListDrawable$StateListState;)[[I

    move-result-object v3

    .local v3, sets:[[I
    array-length v0, v3

    .local v0, count:I
    iget-object v4, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    new-array v5, v0, [[I

    #setter for: Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I
    invoke-static {v4, v5}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$102(Landroid/graphics/drawable/StateListDrawable$StateListState;[[I)[[I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, v3, v1

    .local v2, set:[I
    if-eqz v2, :cond_0

    iget-object v4, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #getter for: Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I
    invoke-static {v4}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$100(Landroid/graphics/drawable/StateListDrawable$StateListState;)[[I

    move-result-object v5

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aput-object v4, v5, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #set:[I
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/StateListDrawable;->mMutated:Z

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #sets:[[I
    :cond_2
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 3
    .parameter "stateSet"

    .prologue
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    #calls: Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I
    invoke-static {v1, p1}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    .local v0, idx:I
    if-gez v0, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable;->mStateListState:Landroid/graphics/drawable/StateListDrawable$StateListState;

    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    #calls: Landroid/graphics/drawable/StateListDrawable$StateListState;->indexOfStateSet([I)I
    invoke-static {v1, v2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->access$000(Landroid/graphics/drawable/StateListDrawable$StateListState;[I)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->onStateChange([I)Z

    move-result v1

    goto :goto_0
.end method

.class public Landroid/inputmethodservice/Keyboard$Key;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_OFF:[I

.field private static final KEY_STATE_NORMAL_ON:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_OFF:[I

.field private static final KEY_STATE_PRESSED_ON:[I


# instance fields
.field public codes:[I

.field public edgeFlags:I

.field public gap:I

.field public height:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field private keyboard:Landroid/inputmethodservice/Keyboard;

.field public label:Ljava/lang/CharSequence;

.field public modifier:Z

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupResId:I

.field public pressed:Z

.field public repeatable:Z

.field public sticky:Z

.field public text:Ljava/lang/CharSequence;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    new-array v0, v2, [I

    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL:[I

    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED:[I

    return-void

    :array_0
    .array-data 0x4
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    :array_1
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    :array_2
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9ft 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 9
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p2}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    iput p3, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iput p4, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    #getter for: Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I
    invoke-static {v2}, Landroid/inputmethodservice/Keyboard;->access$000(Landroid/inputmethodservice/Keyboard;)I

    move-result v2

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    invoke-static {v0, v5, v2, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    #getter for: Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I
    invoke-static {v2}, Landroid/inputmethodservice/Keyboard;->access$200(Landroid/inputmethodservice/Keyboard;)I

    move-result v2

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    invoke-static {v0, v6, v2, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    #getter for: Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I
    invoke-static {v2}, Landroid/inputmethodservice/Keyboard;->access$000(Landroid/inputmethodservice/Keyboard;)I

    move-result v2

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    invoke-static {v0, v7, v2, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Keyboard_Key:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .local v1, codesValue:Landroid/util/TypedValue;
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_5

    :cond_0
    new-array v2, v6, [I

    iget v3, v1, Landroid/util/TypedValue;->data:I

    aput v3, v2, v5

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    :cond_1
    :goto_0
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/inputmethodservice/Keyboard$Key;->modifier:Z

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    or-int/2addr v2, v3

    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-array v2, v6, [I

    iget-object v3, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput v3, v2, v5

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_5
    iget v2, v1, Landroid/util/TypedValue;->type:I

    if-ne v2, v8, :cond_1

    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/Keyboard$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/inputmethodservice/Keyboard$Row;)V
    .locals 1
    .parameter "parent"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #getter for: Landroid/inputmethodservice/Keyboard$Row;->parent:Landroid/inputmethodservice/Keyboard;
    invoke-static {p1}, Landroid/inputmethodservice/Keyboard$Row;->access$600(Landroid/inputmethodservice/Keyboard$Row;)Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    return-void
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 2

    .prologue
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .local v0, states:[I
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_1

    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_3

    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_0

    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED:[I

    goto :goto_0
.end method

.method public isInside(II)Z
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_4

    move v1, v7

    .local v1, leftEdge:Z
    :goto_0
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_5

    move v2, v7

    .local v2, rightEdge:Z
    :goto_1
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_6

    move v3, v7

    .local v3, topEdge:Z
    :goto_2
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v4, v4, 0x8

    if-lez v4, :cond_7

    move v0, v7

    .local v0, bottomEdge:Z
    :goto_3
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    if-ge p1, v4, :cond_0

    if-eqz v1, :cond_8

    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v5, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    if-gt p1, v4, :cond_8

    :cond_0
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v5, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    if-lt p1, v4, :cond_1

    if-eqz v2, :cond_8

    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    if-lt p1, v4, :cond_8

    :cond_1
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    if-ge p2, v4, :cond_2

    if-eqz v3, :cond_8

    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    if-gt p2, v4, :cond_8

    :cond_2
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    if-lt p2, v4, :cond_3

    if-eqz v0, :cond_8

    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    if-lt p2, v4, :cond_8

    :cond_3
    move v4, v7

    :goto_4
    return v4

    .end local v0           #bottomEdge:Z
    .end local v1           #leftEdge:Z
    .end local v2           #rightEdge:Z
    .end local v3           #topEdge:Z
    :cond_4
    move v1, v6

    goto :goto_0

    .restart local v1       #leftEdge:Z
    :cond_5
    move v2, v6

    goto :goto_1

    .restart local v2       #rightEdge:Z
    :cond_6
    move v3, v6

    goto :goto_2

    .restart local v3       #topEdge:Z
    :cond_7
    move v0, v6

    goto :goto_3

    .restart local v0       #bottomEdge:Z
    :cond_8
    move v4, v6

    goto :goto_4
.end method

.method public onPressed()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReleased(Z)V
    .locals 3
    .parameter "inside"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method parseCSV(Ljava/lang/String;)[I
    .locals 9
    .parameter "value"

    .prologue
    const-string v7, ","

    const/4 v0, 0x0

    .local v0, count:I
    const/4 v2, 0x0

    .local v2, lastIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    const-string v6, ","

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v5, v0, [I

    .local v5, values:[I
    const/4 v0, 0x0

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v4, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, st:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1

    .end local v0           #count:I
    .restart local v1       #count:I
    :catch_0
    move-exception v6

    move-object v3, v6

    .local v3, nfe:Ljava/lang/NumberFormatException;
    const-string v6, "Keyboard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing keycodes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1

    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :cond_1
    return-object v5
.end method

.method public squaredDistanceFrom(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v0, v2, p1

    .local v0, xDist:I
    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v1, v2, p2

    .local v1, yDist:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    return v2
.end method

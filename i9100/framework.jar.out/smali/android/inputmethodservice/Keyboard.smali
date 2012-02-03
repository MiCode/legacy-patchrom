.class public Landroid/inputmethodservice/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/Keyboard$Key;,
        Landroid/inputmethodservice/Keyboard$Row;
    }
.end annotation


# static fields
.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field public static final KEYCODE_ALT:I = -0x6

.field public static final KEYCODE_CANCEL:I = -0x3

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_SHIFT:I = -0x1

.field private static SEARCH_DISTANCE:F = 0.0f

.field static final TAG:Ljava/lang/String; = "Keyboard"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGridNeighbors:[[I

.field private mKeyHeight:I

.field private mKeyWidth:I

.field private mKeyboardMode:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityThreshold:I

.field private mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mShiftKeyIndex:I

.field private mShifted:Z

.field private mTotalHeight:I

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    const v0, 0x3fe66666

    sput v0, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 507
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 9
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "modeId"

    .prologue
    const/4 v7, 0x0

    const-string v8, "Keyboard"

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v5, -0x1

    iput v5, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndex:I

    .line 517
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 519
    .local v0, dm:Landroid/util/DisplayMetrics;
    const-string v5, "keyguard"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 520
    .local v1, kgm:Landroid/app/KeyguardManager;
    const-string v5, "Keyboard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "islockscreenmaking isLockScreenViewMaking() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isLockScreenViewMaking()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 522
    .local v2, newConfig:Landroid/content/res/Configuration;
    iget v5, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v5, 0xf

    .line 523
    .local v4, uiMode:I
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isLockScreenViewMaking()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 525
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v6, :cond_1

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move v3, v5

    .line 526
    .local v3, tempWidth:I
    :goto_0
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v6, :cond_2

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1
    iput v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 527
    iput v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 531
    .end local v3           #tempWidth:I
    :cond_0
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 532
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 533
    const-string v5, "Keyboard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "islockscreenmaking keyboard\'s display metrics:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iput v7, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 536
    iget v5, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v5, v5, 0xa

    iput v5, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 537
    iput v7, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 538
    iget v5, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v5, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 539
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 540
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 541
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    .line 542
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 543
    return-void

    .line 525
    :cond_1
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move v3, v5

    goto :goto_0

    .line 526
    .restart local v3       #tempWidth:I
    :cond_2
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 10
    .parameter "context"
    .parameter "layoutTemplateResId"
    .parameter "characters"
    .parameter "columns"
    .parameter "horizontalPadding"

    .prologue
    .line 561
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 562
    const/4 v6, 0x0

    .line 563
    .local v6, x:I
    const/4 v7, 0x0

    .line 564
    .local v7, y:I
    const/4 v1, 0x0

    .line 565
    .local v1, column:I
    const/4 v8, 0x0

    iput v8, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 567
    new-instance v5, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v5, p0}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/inputmethodservice/Keyboard;)V

    .line 568
    .local v5, row:Landroid/inputmethodservice/Keyboard$Row;
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    .line 569
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    .line 570
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    .line 571
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    .line 572
    const/16 v8, 0xc

    iput v8, v5, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    .line 573
    const/4 v8, -0x1

    if-ne p4, v8, :cond_3

    const v8, 0x7fffffff

    move v4, v8

    .line 574
    .local v4, maxColumns:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 575
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 576
    .local v0, c:C
    if-ge v1, v4, :cond_0

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    add-int/2addr v8, v6

    add-int/2addr v8, p5

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    if-le v8, v9, :cond_1

    .line 578
    :cond_0
    const/4 v6, 0x0

    .line 579
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 580
    const/4 v1, 0x0

    .line 582
    :cond_1
    new-instance v3, Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {v3, v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    .line 583
    .local v3, key:Landroid/inputmethodservice/Keyboard$Key;
    iput v6, v3, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 584
    iput v7, v3, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 585
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 586
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v0, v8, v9

    iput-object v8, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 587
    add-int/lit8 v1, v1, 0x1

    .line 588
    iget v8, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v9, v3, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 589
    iget-object v8, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v6, v8, :cond_2

    .line 591
    iput v6, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 574
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #c:C
    .end local v2           #i:I
    .end local v3           #key:Landroid/inputmethodservice/Keyboard$Key;
    .end local v4           #maxColumns:I
    :cond_3
    move v4, p4

    .line 573
    goto :goto_0

    .line 594
    .restart local v2       #i:I
    .restart local v4       #maxColumns:I
    :cond_4
    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 595
    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$100(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method static synthetic access$400(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method static synthetic access$500(Landroid/inputmethodservice/Keyboard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method private computeNearestNeighbors()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 670
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v10

    add-int/lit8 v10, v10, 0xa

    sub-int/2addr v10, v13

    div-int/lit8 v10, v10, 0xa

    iput v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    .line 671
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    sub-int/2addr v10, v13

    div-int/lit8 v10, v10, 0x5

    iput v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    .line 672
    const/16 v10, 0x32

    new-array v10, v10, [[I

    iput-object v10, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    .line 673
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v6, v10, [I

    .line 674
    .local v6, indices:[I
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    mul-int/lit8 v4, v10, 0xa

    .line 675
    .local v4, gridWidth:I
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    mul-int/lit8 v3, v10, 0x5

    .line 676
    .local v3, gridHeight:I
    const/4 v8, 0x0

    .local v8, x:I
    :goto_0
    if-ge v8, v4, :cond_4

    .line 677
    const/4 v9, 0x0

    .local v9, y:I
    :goto_1
    if-ge v9, v3, :cond_3

    .line 678
    const/4 v1, 0x0

    .line 679
    .local v1, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 680
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    .line 681
    .local v7, key:Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {v7, v8, v9}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v10, v8

    sub-int/2addr v10, v13

    invoke-virtual {v7, v10, v9}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v10, v8

    sub-int/2addr v10, v13

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v11, v9

    sub-int/2addr v11, v13

    invoke-virtual {v7, v10, v11}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_0

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v10, v9

    sub-int/2addr v10, v13

    invoke-virtual {v7, v8, v10}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-ge v10, v11, :cond_1

    .line 686
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #count:I
    .local v2, count:I
    aput v5, v6, v1

    move v1, v2

    .line 679
    .end local v2           #count:I
    .restart local v1       #count:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 689
    .end local v7           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_2
    new-array v0, v1, [I

    .line 690
    .local v0, cell:[I
    invoke-static {v6, v14, v0, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 691
    iget-object v10, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    iget v11, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v11, v9, v11

    mul-int/lit8 v11, v11, 0xa

    iget v12, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v12, v8, v12

    add-int/2addr v11, v12

    aput-object v0, v10, v11

    .line 677
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v9, v10

    goto :goto_1

    .line 676
    .end local v0           #cell:[I
    .end local v1           #count:I
    .end local v5           #i:I
    :cond_3
    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v8, v10

    goto :goto_0

    .line 694
    .end local v9           #y:I
    :cond_4
    return-void
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3
    .parameter "a"
    .parameter "index"
    .parameter "base"
    .parameter "defValue"

    .prologue
    .line 820
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 821
    .local v0, value:Landroid/util/TypedValue;
    if-nez v0, :cond_0

    move v1, p3

    .line 828
    :goto_0
    return v1

    .line 822
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 823
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    goto :goto_0

    .line 824
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 826
    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, p3

    .line 828
    goto :goto_0
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 18
    .parameter "context"
    .parameter "parser"

    .prologue
    .line 724
    const/4 v11, 0x0

    .line 725
    .local v11, inKey:Z
    const/4 v12, 0x0

    .line 726
    .local v12, inRow:Z
    const/4 v14, 0x0

    .line 727
    .local v14, leftMostKey:Z
    const/4 v15, 0x0

    .line 728
    .local v15, row:I
    const/4 v6, 0x0

    .line 729
    .local v6, x:I
    const/4 v7, 0x0

    .line 730
    .local v7, y:I
    const/4 v13, 0x0

    .line 731
    .local v13, key:Landroid/inputmethodservice/Keyboard$Key;
    const/4 v5, 0x0

    .line 732
    .local v5, currentRow:Landroid/inputmethodservice/Keyboard$Row;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 733
    .local v4, res:Landroid/content/res/Resources;
    const/16 v16, 0x0

    .line 737
    .local v16, skipRow:Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    .local v10, event:I
    const/4 v3, 0x1

    if-eq v10, v3, :cond_3

    .line 738
    const/4 v3, 0x2

    if-ne v10, v3, :cond_6

    .line 739
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 740
    .local v17, tag:Ljava/lang/String;
    const-string v3, "Row"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 741
    const/4 v12, 0x1

    .line 742
    const/4 v6, 0x0

    .line 743
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;

    move-result-object v5

    .line 744
    iget v3, v5, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    if-eqz v3, :cond_1

    iget v3, v5, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    move v8, v0

    if-eq v3, v8, :cond_1

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 745
    :goto_1
    if-eqz v16, :cond_0

    .line 746
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/inputmethodservice/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    .line 747
    const/4 v12, 0x0

    goto :goto_0

    .line 744
    :cond_1
    const/4 v3, 0x0

    move/from16 v16, v3

    goto :goto_1

    .line 749
    :cond_2
    const-string v3, "Key"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 750
    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    .line 751
    invoke-virtual/range {v3 .. v8}, Landroid/inputmethodservice/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v13

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    iget-object v3, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v3, v3, v8

    const/4 v8, -0x1

    if-ne v3, v8, :cond_4

    .line 754
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/inputmethodservice/Keyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndex:I

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 780
    .end local v10           #event:I
    .end local v17           #tag:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v9, v3

    .line 781
    .local v9, e:Ljava/lang/Exception;
    const-string v3, "Keyboard"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #res:Landroid/content/res/Resources;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parse error:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 784
    .end local v9           #e:Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    move v3, v0

    sub-int v3, v7, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 785
    return-void

    .line 757
    .restart local v4       #res:Landroid/content/res/Resources;
    .restart local v10       #event:I
    .restart local v17       #tag:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v3, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v3, v3, v8

    const/4 v8, -0x6

    if-ne v3, v8, :cond_0

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 760
    :cond_5
    const-string v3, "Keyboard"

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 761
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_0

    .line 763
    .end local v17           #tag:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x3

    if-ne v10, v3, :cond_0

    .line 764
    if-eqz v11, :cond_7

    .line 765
    const/4 v11, 0x0

    .line 766
    iget v3, v13, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    iget v8, v13, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v8

    add-int/2addr v6, v3

    .line 767
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    move v3, v0

    if-le v6, v3, :cond_0

    .line 768
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    goto/16 :goto_0

    .line 770
    :cond_7
    if-eqz v12, :cond_0

    .line 771
    const/4 v12, 0x0

    .line 772
    iget v3, v5, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    add-int/2addr v7, v3

    .line 773
    iget v3, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v7, v3

    .line 774
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 5
    .parameter "res"
    .parameter "parser"

    .prologue
    const/4 v4, 0x0

    .line 799
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 802
    .local v0, a:Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    invoke-static {v0, v4, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 805
    const/4 v1, 0x1

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 808
    const/4 v1, 0x2

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    invoke-static {v0, v1, v2, v4}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 811
    const/4 v1, 0x3

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v4}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 814
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    int-to-float v1, v1

    sget v2, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 815
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 816
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 817
    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 790
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 791
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    :cond_1
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .locals 6
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 720
    new-instance v0, Landroid/inputmethodservice/Keyboard$Key;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;
    .locals 1
    .parameter "res"
    .parameter "parser"

    .prologue
    .line 715
    new-instance v0, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected getHorizontalGap()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method protected getKeyHeight()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method protected getKeyWidth()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 704
    iget-object v1, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/inputmethodservice/Keyboard;->computeNearestNeighbors()V

    .line 705
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 706
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v1, p2, v1

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 707
    .local v0, index:I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 708
    iget-object v1, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    .line 711
    .end local v0           #index:I
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public getShiftKeyIndex()I
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndex:I

    return v0
.end method

.method protected getVerticalGap()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 661
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    return v0
.end method

.method protected setHorizontalGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 610
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 611
    return-void
.end method

.method protected setKeyHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 626
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 627
    return-void
.end method

.method protected setKeyWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 634
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 635
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .parameter "shiftState"

    .prologue
    .line 650
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean p1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 653
    :cond_0
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    if-eq v0, p1, :cond_1

    .line 654
    iput-boolean p1, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    .line 655
    const/4 v0, 0x1

    .line 657
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setVerticalGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 618
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 619
    return-void
.end method

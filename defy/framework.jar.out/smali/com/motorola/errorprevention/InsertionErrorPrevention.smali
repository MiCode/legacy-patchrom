.class public Lcom/motorola/errorprevention/InsertionErrorPrevention;
.super Ljava/lang/Object;
.source "InsertionErrorPrevention.java"


# static fields
.field private static final KEY_ABOVE_RELATION:I = 0x2

.field private static final KEY_ABOVE_SPACE_RELATION:I = 0x4

.field private static final KEY_BELOW_RELATION:I = 0x1

.field private static final NO_KEY_RELATION:I = 0x0

.field private static final SIDE_KEY_RELATION:I = 0x3

.field private static final SPACE_UNDER_KEY_RELATION:I = 0x5

.field private static mInstance:Lcom/motorola/errorprevention/InsertionErrorPrevention;


# instance fields
.field private final HW_KEYBOARD_PRESENT:Z

.field private final KEY_ABOVE_SPACE_TIME_DELTA:I

.field private final KEY_ABOVE_TIME_DELTA:I

.field private final KEY_BELOW_TIME_DELTA:I

.field private final MAX_BLOCKED_KEYS_COUNT:I

.field private final SIDE_KEY_TIME_DELTA:I

.field private final SPACE_UNDER_KEY_TIME_DELTA:I

.field private mCurrentBlockedKeysCount:I

.field private mDelta:J

.field private mFirstKeyCode:I

.field private mFirstKeyPressTime:J

.field private mPressedKeys:[I

.field private mRelationalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mInstance:Lcom/motorola/errorprevention/InsertionErrorPrevention;

    return-void
.end method

.method protected constructor <init>(Landroid/content/res/Resources;)V
    .locals 3
    .parameter "r"

    .prologue
    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mFirstKeyCode:I

    iput-wide v1, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mFirstKeyPressTime:J

    iput-wide v1, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mDelta:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mCurrentBlockedKeysCount:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    const v0, 0x10d001e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->HW_KEYBOARD_PRESENT:Z

    const v0, 0x10e0015

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->KEY_BELOW_TIME_DELTA:I

    const v0, 0x10e0016

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->KEY_ABOVE_TIME_DELTA:I

    const v0, 0x10e0017

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->SIDE_KEY_TIME_DELTA:I

    const v0, 0x10e0018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->KEY_ABOVE_SPACE_TIME_DELTA:I

    const v0, 0x10e0019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->SPACE_UNDER_KEY_TIME_DELTA:I

    const v0, 0x10e001a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->MAX_BLOCKED_KEYS_COUNT:I

    iget v0, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->MAX_BLOCKED_KEYS_COUNT:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mPressedKeys:[I

    iget-boolean v0, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->HW_KEYBOARD_PRESENT:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->initPhysicalKeyboardInsertionErrorsAlgo(Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method

.method private generateKey(II)J
    .locals 2
    .parameter "i"
    .parameter "j"

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    const v0, 0xffff

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    int-to-long v0, v0

    goto :goto_0
.end method

.method private generateRelationalTable([[III)V
    .locals 11
    .parameter "keyboardLayout"
    .parameter "rowNum"
    .parameter "columnNum"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/16 v8, 0x3e

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_f

    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, p3, :cond_e

    if-lt v1, v7, :cond_0

    aget-object v2, p1, v0

    aget v2, v2, v1

    aget-object v3, p1, v0

    sub-int v4, v1, v7

    aget v3, v3, v4

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    aget-object v3, p1, v0

    aget v3, v3, v1

    aget-object v4, p1, v0

    sub-int v5, v1, v7

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateKey(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sub-int v2, p3, v9

    if-gt v1, v2, :cond_1

    aget-object v2, p1, v0

    aget v2, v2, v1

    aget-object v3, p1, v0

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    aget-object v3, p1, v0

    aget v3, v3, v1

    aget-object v4, p1, v0

    add-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateKey(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-lt v0, v6, :cond_4

    if-lt v1, v6, :cond_2

    aget-object v2, p1, v0

    aget v2, v2, v1

    if-ne v2, v8, :cond_8

    iget-object v2, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    aget-object v3, p1, v0

    aget v3, v3, v1

    sub-int v4, v0, v6

    aget-object v4, p1, v4

    sub-int v5, v1, v6

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateKey(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    sub-int v2, p3, v7

    if-gt v1, v2, :cond_3

    aget-object v2, p1, v0

    aget v2, v2, v1

    if-ne v2, v8, :cond_9

    iget-object v2, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    aget-object v3, p1, v0

    aget v3, v3, v1

    sub-int v4, v0, v6

    aget-object v4, p1, v4

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateKey(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    aget-object v2, p1, v0

    aget v2, v2, v1

    if-ne v2, v8, :cond_a

    iget-object v2, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    aget-object v3, p1, v0

    aget v3, v3, v1

    sub-int v4, v0, v6

    aget-object v4, p1, v4

    aget v4, v4, v1

    invoke-direct {p0, v3, v4}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateKey(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_4
    sub-int v2, p2, v7

    if-gt v0, v2, :cond_7

    if-lt v1, v6, :cond_5

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    sub-int v3, v1, v6

    aget v2, v2, v3

    if-ne v2, v8, :cond_b

    iget-object v2, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    aget-object v3, p1, v0

    aget v3, v3, v1

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    sub-int v5, v1, v6

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateKey(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_5
    sub-int v2, p3, v7

    if-gt v1, v2, :cond_6

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    if-ne v2, v8, :cond_c

    iget-object v2, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    aget-object v3, p1, v0

    aget v3, v3, v1

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateKey(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_6
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    aget v2, v2, v1

    if-ne v2, v8, :cond_d

    iget-object v2, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    aget-object v3, p1, v0

    aget v3, v3, v1

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    aget v4, v4, v1

    invoke-direct {p0, v3, v4}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateKey(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    aget-object v3, p1, v0

    aget v3, v3, v1

    sub-int v4, v0, v6

    aget-object v4, p1, v4

    sub-int v5, v1, v6

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateKey(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_9
    iget-object v2, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    aget-object v3, p1, v0

    aget v3, v3, v1

    sub-int v4, v0, v6

    aget-object v4, p1, v4

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateKey(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_a
    iget-object v2, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    aget-object v3, p1, v0

    aget v3, v3, v1

    sub-int v4, v0, v6

    aget-object v4, p1, v4

    aget v4, v4, v1

    invoke-direct {p0, v3, v4}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateKey(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_b
    iget-object v2, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    aget-object v3, p1, v0

    aget v3, v3, v1

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    sub-int v5, v1, v6

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateKey(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_c
    iget-object v2, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    aget-object v3, p1, v0

    aget v3, v3, v1

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    invoke-direct {p0, v3, v4}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateKey(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_d
    iget-object v2, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    aget-object v3, p1, v0

    aget v3, v3, v1

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    aget v4, v4, v1

    invoke-direct {p0, v3, v4}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateKey(II)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .end local v1           #j:I
    :cond_f
    iget-object v2, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/res/Resources;)Lcom/motorola/errorprevention/InsertionErrorPrevention;
    .locals 2
    .parameter "r"

    .prologue
    const-class v0, Lcom/motorola/errorprevention/InsertionErrorPrevention;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mInstance:Lcom/motorola/errorprevention/InsertionErrorPrevention;

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/errorprevention/InsertionErrorPrevention;

    invoke-direct {v1, p0}, Lcom/motorola/errorprevention/InsertionErrorPrevention;-><init>(Landroid/content/res/Resources;)V

    sput-object v1, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mInstance:Lcom/motorola/errorprevention/InsertionErrorPrevention;

    :cond_0
    sget-object v1, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mInstance:Lcom/motorola/errorprevention/InsertionErrorPrevention;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initPhysicalKeyboardInsertionErrorsAlgo(Landroid/content/res/Resources;)V
    .locals 8
    .parameter "r"

    .prologue
    const v5, 0x10e001b

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .local v4, rowNum:I
    const v5, 0x10e001c

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .local v0, columnNum:I
    const v5, 0x107001d

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .local v3, layoutResourceArray:[I
    if-eqz v3, :cond_0

    array-length v5, v3

    mul-int v6, v4, v0

    if-eq v5, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    filled-new-array {v4, v0}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .local v2, keyboardLayout:[[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    mul-int v5, v1, v0

    aget-object v6, v2, v1

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2, v4, v0}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateRelationalTable([[III)V

    goto :goto_0
.end method


# virtual methods
.method public isFalseHardKey(JZI)Z
    .locals 8
    .parameter "eventTime"
    .parameter "down"
    .parameter "keycode"

    .prologue
    const/4 v3, 0x0

    .local v3, keyRelation:I
    const/4 v4, 0x1

    if-ne p3, v4, :cond_a

    iget-wide v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mFirstKeyPressTime:J

    sub-long v4, p1, v4

    iput-wide v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mDelta:J

    iget v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mFirstKeyCode:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mFirstKeyCode:I

    invoke-direct {p0, v4, p4}, Lcom/motorola/errorprevention/InsertionErrorPrevention;->generateKey(II)J

    move-result-wide v1

    .local v1, key:J
    iget-object v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mRelationalMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .end local v1           #key:J
    :cond_0
    if-eqz v3, :cond_8

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-wide v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mDelta:J

    iget v6, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->KEY_BELOW_TIME_DELTA:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    :cond_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-wide v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mDelta:J

    iget v6, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->SIDE_KEY_TIME_DELTA:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mDelta:J

    iget v6, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->KEY_ABOVE_TIME_DELTA:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    :cond_3
    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mDelta:J

    iget v6, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->KEY_ABOVE_SPACE_TIME_DELTA:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    :cond_4
    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    iget-wide v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mDelta:J

    iget v6, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->SPACE_UNDER_KEY_TIME_DELTA:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_8

    :cond_5
    iget-wide v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mDelta:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_6

    iget v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mFirstKeyCode:I

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_8

    iget v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mFirstKeyCode:I

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_8

    :cond_6
    iget v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mCurrentBlockedKeysCount:I

    iget v5, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->MAX_BLOCKED_KEYS_COUNT:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_7

    iget-object v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mPressedKeys:[I

    iget v5, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mCurrentBlockedKeysCount:I

    aput p4, v4, v5

    iget v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mCurrentBlockedKeysCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mCurrentBlockedKeysCount:I

    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_7
    const/4 v4, 0x1

    iput v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mCurrentBlockedKeysCount:I

    iget-object v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mPressedKeys:[I

    const/4 v5, 0x0

    aput p4, v4, v5

    goto :goto_0

    :cond_8
    iput-wide p1, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mFirstKeyPressTime:J

    iput p4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mFirstKeyCode:I

    :cond_9
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .restart local p3
    :cond_a
    iget v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mFirstKeyCode:I

    if-ne p4, v4, :cond_b

    const/4 v4, -0x1

    iput v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mFirstKeyCode:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mFirstKeyPressTime:J

    goto :goto_2

    :cond_b
    iget v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mCurrentBlockedKeysCount:I

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_3
    if-ltz v0, :cond_9

    iget-object v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mPressedKeys:[I

    aget v4, v4, v0

    if-ne v4, p4, :cond_c

    iget-object v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mPressedKeys:[I

    iget-object v5, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mPressedKeys:[I

    iget v6, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mCurrentBlockedKeysCount:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget v5, v5, v6

    aput v5, v4, v0

    iget v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mCurrentBlockedKeysCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->mCurrentBlockedKeysCount:I

    const/4 v4, 0x1

    goto :goto_1

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public isPhysicalKeyboardInit()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/errorprevention/InsertionErrorPrevention;->HW_KEYBOARD_PRESENT:Z

    return v0
.end method

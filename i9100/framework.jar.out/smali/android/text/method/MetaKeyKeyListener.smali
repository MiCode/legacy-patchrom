.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# static fields
.field private static final ALT:Ljava/lang/Object; = null

.field private static final CAP:Ljava/lang/Object; = null

.field private static final LOCKED:I = 0x4000011

.field private static final LOCKED_SHIFT:I = 0x8

.field public static final META_ALT_LOCKED:I = 0x200

.field private static final META_ALT_MASK:J = 0x20202000202L

.field public static final META_ALT_ON:I = 0x2

.field private static final META_ALT_PRESSED:J = 0x200000000L

.field private static final META_ALT_RELEASED:J = 0x20000000000L

.field private static final META_ALT_USED:J = 0x2000000L

.field public static final META_CAP_LOCKED:I = 0x100

.field private static final META_CAP_PRESSED:J = 0x100000000L

.field private static final META_CAP_RELEASED:J = 0x10000000000L

.field private static final META_CAP_USED:J = 0x1000000L

.field public static final META_SELECTING:I = 0x10000

.field private static final META_SHIFT_MASK:J = 0x10101000101L

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SYM_LOCKED:I = 0x400

.field private static final META_SYM_MASK:J = 0x40404000404L

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYM_PRESSED:J = 0x400000000L

.field private static final META_SYM_RELEASED:J = 0x40000000000L

.field private static final META_SYM_USED:J = 0x4000000L

.field private static final PRESSED:I = 0x1000011

.field private static final PRESSED_SHIFT:I = 0x20

.field private static final RELEASED:I = 0x2000011

.field private static final RELEASED_SHIFT:I = 0x28

.field private static final SELECTING:Ljava/lang/Object; = null

.field private static final SYM:Ljava/lang/Object; = null

.field private static final USED:I = 0x3000011

.field private static final USED_SHIFT:I = 0x18

.field private static mKeyWhileALT:Z

.field private static mKeyWhileCAP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 75
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 76
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 77
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    .line 79
    sput-boolean v1, Landroid/text/method/MetaKeyKeyListener;->mKeyWhileCAP:Z

    .line 80
    sput-boolean v1, Landroid/text/method/MetaKeyKeyListener;->mKeyWhileALT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjust(JIJ)J
    .locals 7
    .parameter "state"
    .parameter "what"
    .parameter "mask"

    .prologue
    const-wide/16 v5, 0x0

    const-wide/16 v3, -0x1

    .line 429
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    .line 430
    xor-long v0, p3, v3

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    int-to-long v2, p2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 433
    :goto_0
    return-wide v0

    .line 431
    :cond_0
    int-to-long v0, p2

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1

    .line 432
    xor-long v0, p3, v3

    and-long/2addr v0, p0

    goto :goto_0

    :cond_1
    move-wide v0, p0

    .line 433
    goto :goto_0
.end method

.method private static adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .parameter "content"
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 183
    .local v0, current:I
    const v1, 0x1000011

    if-ne v0, v1, :cond_1

    .line 184
    const v1, 0x3000011

    invoke-interface {p0, p1, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const v1, 0x2000011

    if-ne v0, v1, :cond_0

    .line 186
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static adjustMetaAfterKeypress(J)J
    .locals 3
    .parameter "state"

    .prologue
    .line 422
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->adjust(JIJ)J

    move-result-wide p0

    .line 423
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->adjust(JIJ)J

    move-result-wide p0

    .line 424
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->adjust(JIJ)J

    move-result-wide p0

    .line 425
    return-wide p0
.end method

.method public static adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 158
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 159
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 160
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public static clearMetaKeyState(Landroid/text/Editable;I)V
    .locals 1
    .parameter "content"
    .parameter "states"

    .prologue
    .line 339
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 340
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 341
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 342
    :cond_2
    const/high16 v0, 0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 343
    :cond_3
    return-void
.end method

.method private static getActive(JIII)I
    .locals 4
    .parameter "state"
    .parameter "meta"
    .parameter "on"
    .parameter "lock"

    .prologue
    const-wide/16 v2, 0x0

    .line 406
    shl-int/lit8 v0, p2, 0x8

    int-to-long v0, v0

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    move v0, p4

    .line 411
    :goto_0
    return v0

    .line 408
    :cond_0
    int-to-long v0, p2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    move v0, p3

    .line 409
    goto :goto_0

    .line 411
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .locals 5
    .parameter "text"
    .parameter "meta"
    .parameter "on"
    .parameter "lock"

    .prologue
    const/4 v4, 0x0

    .line 136
    instance-of v3, p0, Landroid/text/Spanned;

    if-nez v3, :cond_0

    move v3, v4

    .line 148
    :goto_0
    return v3

    .line 140
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v2, v0

    .line 141
    .local v2, sp:Landroid/text/Spanned;
    invoke-interface {v2, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 143
    .local v1, flag:I
    const v3, 0x4000011

    if-ne v1, v3, :cond_1

    move v3, p3

    .line 144
    goto :goto_0

    .line 145
    :cond_1
    if-eqz v1, :cond_2

    move v3, p2

    .line 146
    goto :goto_0

    :cond_2
    move v3, v4

    .line 148
    goto :goto_0
.end method

.method public static final getMetaState(J)I
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 376
    const/16 v0, 0x100

    invoke-static {p0, p1, v1, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    const/16 v1, 0x200

    invoke-static {p0, p1, v2, v2, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x400

    invoke-static {p0, p1, v3, v3, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static final getMetaState(JI)I
    .locals 2
    .parameter "state"
    .parameter "meta"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 390
    packed-switch p2, :pswitch_data_0

    .line 401
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 392
    :pswitch_1
    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    goto :goto_0

    .line 395
    :pswitch_2
    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    goto :goto_0

    .line 398
    :pswitch_3
    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;)I
    .locals 5
    .parameter "text"

    .prologue
    const/high16 v4, 0x1

    .line 101
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    const/4 v2, 0x4

    const/16 v3, 0x400

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v1, v4, v4}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;I)I
    .locals 3
    .parameter "text"
    .parameter "meta"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 116
    sparse-switch p1, :sswitch_data_0

    .line 130
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 118
    :sswitch_0
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 121
    :sswitch_1
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 124
    :sswitch_2
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 127
    :sswitch_3
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    .line 116
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x10000 -> :sswitch_3
    .end sparse-switch
.end method

.method public static handleKeyDown(JILandroid/view/KeyEvent;)J
    .locals 3
    .parameter "state"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 440
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_1

    .line 441
    :cond_0
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->press(JIJ)J

    move-result-wide v0

    .line 453
    :goto_0
    return-wide v0

    .line 444
    :cond_1
    const/16 v0, 0x39

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_2

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_3

    .line 446
    :cond_2
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->press(JIJ)J

    move-result-wide v0

    goto :goto_0

    .line 449
    :cond_3
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_4

    .line 450
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->press(JIJ)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    move-wide v0, p0

    .line 453
    goto :goto_0
.end method

.method public static handleKeyUp(JILandroid/view/KeyEvent;)J
    .locals 3
    .parameter "state"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 474
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_1

    .line 475
    :cond_0
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->release(JIJ)J

    move-result-wide v0

    .line 487
    :goto_0
    return-wide v0

    .line 478
    :cond_1
    const/16 v0, 0x39

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_2

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_3

    .line 480
    :cond_2
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->release(JIJ)J

    move-result-wide v0

    goto :goto_0

    .line 483
    :cond_3
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_4

    .line 484
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->release(JIJ)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    move-wide v0, p0

    .line 487
    goto :goto_0
.end method

.method public static isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .parameter "text"
    .parameter "what"

    .prologue
    .line 168
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .parameter "text"
    .parameter "what"

    .prologue
    .line 177
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static press(JIJ)J
    .locals 9
    .parameter "state"
    .parameter "what"
    .parameter "mask"

    .prologue
    const-wide/16 v7, -0x1

    const/16 v6, 0x20

    const/16 v5, 0x8

    const-wide/16 v3, 0x0

    .line 457
    int-to-long v0, p2

    shl-long/2addr v0, v6

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-wide p0

    .line 459
    :cond_1
    int-to-long v0, p2

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 460
    xor-long v0, p3, v7

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    int-to-long v2, p2

    shl-long/2addr v2, v5

    or-long p0, v0, v2

    goto :goto_0

    .line 461
    :cond_2
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 463
    int-to-long v0, p2

    shl-long/2addr v0, v5

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    .line 464
    xor-long v0, p3, v7

    and-long/2addr p0, v0

    goto :goto_0

    .line 466
    :cond_3
    int-to-long v0, p2

    or-long/2addr v0, p0

    int-to-long v2, p2

    shl-long/2addr v2, v6

    or-long p0, v0, v2

    goto :goto_0
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 6
    .parameter "content"
    .parameter "what"

    .prologue
    const v5, 0x4000011

    const v4, 0x3000011

    const v3, 0x1000011

    const/4 v2, 0x0

    .line 256
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 258
    .local v0, state:I
    if-ne v0, v3, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const v1, 0x2000011

    if-ne v0, v1, :cond_2

    .line 261
    invoke-interface {p1, p2, v2, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 262
    :cond_2
    if-eq v0, v4, :cond_0

    .line 264
    if-ne v0, v5, :cond_3

    .line 266
    invoke-interface {p1, p2, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 268
    :cond_3
    invoke-interface {p1, p2, v2, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private static release(JIJ)J
    .locals 5
    .parameter "state"
    .parameter "what"
    .parameter "mask"

    .prologue
    const-wide/16 v3, 0x0

    .line 491
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 492
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    .line 495
    :cond_0
    :goto_0
    return-wide p0

    .line 493
    :cond_1
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 494
    int-to-long v0, p2

    or-long/2addr v0, p0

    int-to-long v2, p2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    goto :goto_0
.end method

.method private release(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 3
    .parameter "content"
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    .line 326
    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 328
    .local v0, current:I
    const v1, 0x3000011

    if-ne v0, v1, :cond_1

    .line 329
    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const v1, 0x1000011

    if-ne v0, v1, :cond_0

    .line 331
    const v1, 0x2000011

    invoke-interface {p1, p2, v2, v2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private static resetLock(JIJ)J
    .locals 4
    .parameter "state"
    .parameter "what"
    .parameter "mask"

    .prologue
    .line 357
    int-to-long v0, p2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 358
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    .line 360
    :cond_0
    return-wide p0
.end method

.method private static resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2
    .parameter "content"
    .parameter "what"

    .prologue
    .line 201
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 203
    .local v0, current:I
    const v1, 0x4000011

    if-ne v0, v1, :cond_0

    .line 204
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 205
    :cond_0
    return-void
.end method

.method public static resetLockedMeta(J)J
    .locals 3
    .parameter "state"

    .prologue
    .line 350
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p0

    .line 351
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p0

    .line 352
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p0

    .line 353
    return-wide p0
.end method

.method protected static resetLockedMeta(Landroid/text/Spannable;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 194
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 195
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 196
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 197
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public static resetMetaState(Landroid/text/Spannable;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 86
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 87
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 88
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 89
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 3
    .parameter "view"
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 276
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const v1, 0x1000011

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 277
    return-void
.end method

.method public static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 1
    .parameter "view"
    .parameter "content"

    .prologue
    .line 285
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 286
    return-void
.end method


# virtual methods
.method public clearMetaKeyState(JI)J
    .locals 3
    .parameter "state"
    .parameter "which"

    .prologue
    .line 499
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p1, p2, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p1

    .line 501
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 502
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p1, p2, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p1

    .line 503
    :cond_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    .line 504
    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p1, p2, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p1

    .line 505
    :cond_2
    return-wide p1
.end method

.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0
    .parameter "view"
    .parameter "content"
    .parameter "states"

    .prologue
    .line 335
    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 336
    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v6, 0x4000011

    const v5, 0x3000011

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    const/16 v2, 0x3b

    if-eq p3, v2, :cond_0

    const/16 v2, 0x3c

    if-ne p3, v2, :cond_3

    .line 213
    :cond_0
    if-eqz p4, :cond_2

    .line 214
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 215
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p2, v2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 216
    .local v1, stateCAP:I
    if-ne v1, v5, :cond_1

    .line 217
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p2, v2, v3, v3, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    move v2, v4

    .line 252
    .end local v1           #stateCAP:I
    :goto_0
    return v2

    .line 220
    .restart local v1       #stateCAP:I
    :cond_1
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p2, v2, v3, v3, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    move v2, v4

    .line 221
    goto :goto_0

    .line 225
    .end local v1           #stateCAP:I
    :cond_2
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v2}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    move v2, v4

    .line 226
    goto :goto_0

    .line 229
    :cond_3
    const/16 v2, 0x39

    if-eq p3, v2, :cond_4

    const/16 v2, 0x3a

    if-eq p3, v2, :cond_4

    const/16 v2, 0x4e

    if-ne p3, v2, :cond_7

    .line 231
    :cond_4
    if-eqz p4, :cond_6

    .line 232
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 233
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p2, v2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 234
    .local v0, stateALT:I
    if-ne v0, v5, :cond_5

    .line 235
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p2, v2, v3, v3, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    move v2, v4

    .line 236
    goto :goto_0

    .line 238
    :cond_5
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p2, v2, v3, v3, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    move v2, v4

    .line 239
    goto :goto_0

    .line 243
    .end local v0           #stateALT:I
    :cond_6
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v2}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    move v2, v4

    .line 244
    goto :goto_0

    .line 247
    :cond_7
    const/16 v2, 0x3f

    if-ne p3, v2, :cond_8

    .line 248
    sget-object v2, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v2}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    move v2, v4

    .line 249
    goto :goto_0

    :cond_8
    move v2, v3

    .line 252
    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 293
    const/16 v0, 0x3b

    if-eq p3, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p3, v0, :cond_2

    .line 294
    :cond_0
    sget-boolean v0, Landroid/text/method/MetaKeyKeyListener;->mKeyWhileCAP:Z

    if-ne v0, v1, :cond_1

    .line 295
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 296
    sput-boolean v2, Landroid/text/method/MetaKeyKeyListener;->mKeyWhileCAP:Z

    move v0, v1

    .line 322
    :goto_0
    return v0

    .line 299
    :cond_1
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;)V

    move v0, v1

    .line 300
    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p4}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 302
    sput-boolean v1, Landroid/text/method/MetaKeyKeyListener;->mKeyWhileCAP:Z

    .line 305
    :cond_3
    const/16 v0, 0x39

    if-eq p3, v0, :cond_4

    const/16 v0, 0x3a

    if-eq p3, v0, :cond_4

    const/16 v0, 0x4e

    if-ne p3, v0, :cond_6

    .line 307
    :cond_4
    sget-boolean v0, Landroid/text/method/MetaKeyKeyListener;->mKeyWhileALT:Z

    if-ne v0, v1, :cond_5

    .line 308
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 309
    sput-boolean v2, Landroid/text/method/MetaKeyKeyListener;->mKeyWhileALT:Z

    move v0, v1

    .line 310
    goto :goto_0

    .line 312
    :cond_5
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;)V

    move v0, v1

    .line 313
    goto :goto_0

    .line 314
    :cond_6
    invoke-virtual {p4}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-ne v0, v1, :cond_7

    .line 315
    sput-boolean v1, Landroid/text/method/MetaKeyKeyListener;->mKeyWhileALT:Z

    .line 317
    :cond_7
    const/16 v0, 0x3f

    if-ne p3, v0, :cond_8

    .line 318
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;)V

    move v0, v1

    .line 319
    goto :goto_0

    :cond_8
    move v0, v2

    .line 322
    goto :goto_0
.end method

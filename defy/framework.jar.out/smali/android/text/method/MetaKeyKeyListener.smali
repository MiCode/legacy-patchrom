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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
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

    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    xor-long v0, p3, v3

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    int-to-long v2, p2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p2

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1

    xor-long v0, p3, v3

    and-long/2addr v0, p0

    goto :goto_0

    :cond_1
    move-wide v0, p0

    goto :goto_0
.end method

.method private static adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .parameter "content"
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .local v0, current:I
    const v1, 0x1000011

    if-ne v0, v1, :cond_1

    const v1, 0x3000011

    invoke-interface {p0, p1, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x2000011

    if-ne v0, v1, :cond_0

    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static adjustMetaAfterKeypress(J)J
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->adjust(JIJ)J

    move-result-wide p0

    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->adjust(JIJ)J

    move-result-wide p0

    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->adjust(JIJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .locals 1
    .parameter "content"

    .prologue
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static clearMetaKeyState(Landroid/text/Editable;I)V
    .locals 1
    .parameter "content"
    .parameter "states"

    .prologue
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    const/high16 v0, 0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

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

    shl-int/lit8 v0, p2, 0x8

    int-to-long v0, v0

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    move v0, p4

    :goto_0
    return v0

    :cond_0
    int-to-long v0, p2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    move v0, p3

    goto :goto_0

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

    instance-of v3, p0, Landroid/text/Spanned;

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v2, v0

    .local v2, sp:Landroid/text/Spanned;
    invoke-interface {v2, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .local v1, flag:I
    const v3, 0x4000011

    if-ne v1, v3, :cond_1

    move v3, p3

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    move v3, p2

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public static final getMetaState(J)I
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

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

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getActive(JIII)I

    move-result v0

    goto :goto_0

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

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

    :sswitch_3
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    goto :goto_0

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
    .locals 9
    .parameter "state"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v7, 0x0

    const-wide v5, -0x10101000102L

    const-wide v3, -0x20202000203L

    const/16 v0, 0x3b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->press(JIJ)J

    move-result-wide v0

    and-long/2addr v0, v3

    :goto_0
    return-wide v0

    :cond_1
    const/16 v0, 0x39

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_2

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->press(JIJ)J

    move-result-wide v0

    and-long/2addr v0, v5

    goto :goto_0

    :cond_3
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_4

    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->press(JIJ)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    const/16 v0, 0x72

    if-ne p2, v0, :cond_5

    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v7

    if-nez v0, :cond_7

    and-long/2addr p0, v5

    const-wide/16 v0, 0x101

    or-long/2addr p0, v0

    :goto_1
    and-long/2addr p0, v3

    :cond_5
    const/16 v0, 0x70

    if-ne p2, v0, :cond_6

    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    cmp-long v0, v0, v7

    if-nez v0, :cond_8

    and-long/2addr p0, v3

    const-wide/16 v0, 0x202

    or-long/2addr p0, v0

    :goto_2
    and-long/2addr p0, v5

    :cond_6
    move-wide v0, p0

    goto :goto_0

    :cond_7
    and-long/2addr p0, v5

    goto :goto_1

    :cond_8
    and-long/2addr p0, v3

    goto :goto_2
.end method

.method public static handleKeyUp(JILandroid/view/KeyEvent;)J
    .locals 3
    .parameter "state"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->release(JIJ)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    const/16 v0, 0x39

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_2

    const/16 v0, 0x4e

    if-ne p2, v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->release(JIJ)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x3f

    if-ne p2, v0, :cond_4

    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->release(JIJ)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    move-wide v0, p0

    goto :goto_0
.end method

.method public static isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .parameter "text"
    .parameter "what"

    .prologue
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

    int-to-long v0, p2

    shl-long/2addr v0, v6

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-wide p0

    :cond_1
    int-to-long v0, p2

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    xor-long v0, p3, v7

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    int-to-long v2, p2

    shl-long/2addr v2, v5

    or-long p0, v0, v2

    goto :goto_0

    :cond_2
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    int-to-long v0, p2

    shl-long/2addr v0, v5

    and-long/2addr v0, p0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    xor-long v0, p3, v7

    and-long/2addr p0, v0

    goto :goto_0

    :cond_3
    int-to-long v0, p2

    or-long/2addr v0, p0

    int-to-long v2, p2

    shl-long/2addr v2, v6

    or-long p0, v0, v2

    goto :goto_0
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 5
    .parameter "content"
    .parameter "what"

    .prologue
    const v4, 0x4000011

    const v3, 0x1000011

    const/4 v2, 0x0

    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .local v0, state:I
    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x2000011

    if-ne v0, v1, :cond_2

    invoke-interface {p1, p2, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    const v1, 0x3000011

    if-eq v0, v1, :cond_0

    if-ne v0, v4, :cond_3

    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1, p2, v2, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private static release(JIJ)J
    .locals 8
    .parameter "state"
    .parameter "what"
    .parameter "mask"

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/16 v3, 0x20

    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    xor-long v0, p3, v4

    and-long/2addr p0, v0

    :cond_0
    :goto_0
    return-wide p0

    :cond_1
    int-to-long v0, p2

    shl-long/2addr v0, v3

    and-long/2addr v0, p0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    int-to-long v0, p2

    shl-long/2addr v0, v3

    xor-long/2addr v0, v4

    and-long/2addr p0, v0

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

    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .local v0, current:I
    const v1, 0x3000011

    if-ne v0, v1, :cond_1

    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x1000011

    if-ne v0, v1, :cond_0

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
    int-to-long v0, p2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    xor-long/2addr v0, p3

    and-long/2addr p0, v0

    :cond_0
    return-wide p0
.end method

.method private static resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2
    .parameter "content"
    .parameter "what"

    .prologue
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .local v0, current:I
    const v1, 0x4000011

    if-ne v0, v1, :cond_0

    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static resetLockedMeta(J)J
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p0

    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p0

    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p0, p1, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static resetLockedMeta(Landroid/text/Spannable;)V
    .locals 1
    .parameter "content"

    .prologue
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static resetMetaState(Landroid/text/Spannable;)V
    .locals 1
    .parameter "text"

    .prologue
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 3
    .parameter "view"
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const v1, 0x1000011

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 1
    .parameter "view"
    .parameter "content"

    .prologue
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clearMetaKeyState(JI)J
    .locals 3
    .parameter "state"
    .parameter "which"

    .prologue
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-wide v1, 0x10101000101L

    invoke-static {p1, p2, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p1

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const-wide v1, 0x20202000202L

    invoke-static {p1, p2, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p1

    :cond_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    const-wide v1, 0x40404000404L

    invoke-static {p1, p2, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->resetLock(JIJ)J

    move-result-wide p1

    :cond_2
    return-wide p1
.end method

.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0
    .parameter "view"
    .parameter "content"
    .parameter "states"

    .prologue
    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v4, 0x4000011

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x3b

    if-eq p3, v1, :cond_0

    const/16 v1, 0x3c

    if-ne p3, v1, :cond_1

    :cond_0
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    move v1, v3

    :goto_0
    return v1

    :cond_1
    const/16 v1, 0x39

    if-eq p3, v1, :cond_2

    const/16 v1, 0x3a

    if-eq p3, v1, :cond_2

    const/16 v1, 0x4e

    if-ne p3, v1, :cond_3

    :cond_2
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    move v1, v3

    goto :goto_0

    :cond_3
    const/16 v1, 0x3f

    if-ne p3, v1, :cond_4

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    move v1, v3

    goto :goto_0

    :cond_4
    const/16 v1, 0x72

    if-ne p3, v1, :cond_6

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p2, v1}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .local v0, state:I
    if-eq v0, v4, :cond_5

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p2, v1, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p2, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    move v1, v3

    goto :goto_0

    :cond_5
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p2, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    .end local v0           #state:I
    :cond_6
    const/16 v1, 0x70

    if-ne p3, v1, :cond_8

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p2, v1}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .restart local v0       #state:I
    if-eq v0, v4, :cond_7

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p2, v1, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :goto_2
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p2, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    move v1, v3

    goto :goto_0

    :cond_7
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p2, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_2

    .end local v0           #state:I
    :cond_8
    move v1, v2

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/16 v0, 0x3b

    if-eq p3, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p3, v0, :cond_1

    :cond_0
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x39

    if-eq p3, v0, :cond_2

    const/16 v0, 0x3a

    if-eq p3, v0, :cond_2

    const/16 v0, 0x4e

    if-ne p3, v0, :cond_3

    :cond_2
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v0, 0x3f

    if-ne p3, v0, :cond_4

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

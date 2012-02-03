.class Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[BIZ)I
    .locals 2
    .parameter "dir"
    .parameter "chs"
    .parameter "chInfo"
    .parameter "n"
    .parameter "haveInfo"

    .prologue
    .line 26
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 27
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 30
    :cond_1
    if-ltz p3, :cond_2

    array-length v1, p1

    if-lt v1, p3, :cond_2

    array-length v1, p2

    if-ge v1, p3, :cond_3

    .line 31
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 34
    :cond_3
    packed-switch p0, :pswitch_data_0

    .line 39
    :pswitch_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/AndroidBidi;->runBidi(I[C[BIZ)I

    move-result v0

    .line 43
    .local v0, result:I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    move v0, v1

    .line 44
    :goto_1
    return v0

    .line 35
    .end local v0           #result:I
    :pswitch_1
    const/4 p0, 0x0

    goto :goto_0

    .line 36
    :pswitch_2
    const/4 p0, 0x1

    goto :goto_0

    .line 37
    :pswitch_3
    const/4 p0, -0x2

    goto :goto_0

    .line 38
    :pswitch_4
    const/4 p0, -0x1

    goto :goto_0

    .line 43
    .restart local v0       #result:I
    :cond_4
    const/4 v1, -0x1

    move v0, v1

    goto :goto_1

    .line 34
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static native runBidi(I[C[BIZ)I
.end method

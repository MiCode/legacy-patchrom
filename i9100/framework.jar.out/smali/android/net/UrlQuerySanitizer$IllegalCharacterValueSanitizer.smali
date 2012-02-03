.class public Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;
.super Ljava/lang/Object;
.source "UrlQuerySanitizer.java"

# interfaces
.implements Landroid/net/UrlQuerySanitizer$ValueSanitizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UrlQuerySanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalCharacterValueSanitizer"
.end annotation


# static fields
.field public static final ALL_BUT_NUL_AND_ANGLE_BRACKETS_LEGAL:I = 0x59f

.field public static final ALL_BUT_NUL_LEGAL:I = 0x5ff

.field public static final ALL_BUT_WHITESPACE_LEGAL:I = 0x5fc

.field public static final ALL_ILLEGAL:I = 0x0

.field public static final ALL_OK:I = 0x7ff

.field public static final ALL_WHITESPACE_OK:I = 0x3

.field public static final AMP_AND_SPACE_LEGAL:I = 0x81

.field public static final AMP_LEGAL:I = 0x80

.field public static final AMP_OK:I = 0x80

.field public static final DQUOTE_OK:I = 0x8

.field public static final GT_OK:I = 0x40

.field private static final JAVASCRIPT_PREFIX:Ljava/lang/String; = "javascript:"

.field public static final LT_OK:I = 0x20

#the value of this static final field might be set in the static constructor
.field private static final MIN_SCRIPT_PREFIX_LENGTH:I = 0x0

.field public static final NON_7_BIT_ASCII_OK:I = 0x4

.field public static final NUL_OK:I = 0x200

.field public static final OTHER_WHITESPACE_OK:I = 0x2

.field public static final PCT_OK:I = 0x100

.field public static final SCRIPT_URL_OK:I = 0x400

.field public static final SPACE_LEGAL:I = 0x1

.field public static final SPACE_OK:I = 0x1

.field public static final SQUOTE_OK:I = 0x10

.field public static final URL_AND_SPACE_LEGAL:I = 0x195

.field public static final URL_LEGAL:I = 0x194

.field private static final VBSCRIPT_PREFIX:Ljava/lang/String; = "vbscript:"


# instance fields
.field private mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 274
    const-string v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "vbscript:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->MIN_SCRIPT_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput p1, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    .line 285
    return-void
.end method

.method private characterIsLegal(C)Z
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    sparse-switch p1, :sswitch_data_0

    .line 402
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7f

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x80

    if-lt p1, v0, :cond_b

    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 392
    :sswitch_0
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 394
    :sswitch_1
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 395
    :sswitch_2
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 396
    :sswitch_3
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 397
    :sswitch_4
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    .line 398
    :sswitch_5
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0

    .line 399
    :sswitch_6
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0

    .line 400
    :sswitch_7
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_0

    .line 401
    :sswitch_8
    iget v0, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    move v0, v1

    .line 402
    goto :goto_0

    .line 391
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_0
        0x22 -> :sswitch_2
        0x25 -> :sswitch_7
        0x26 -> :sswitch_6
        0x27 -> :sswitch_3
        0x3c -> :sswitch_4
        0x3e -> :sswitch_5
    .end sparse-switch
.end method

.method private isWhitespace(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 371
    sparse-switch p1, :sswitch_data_0

    .line 380
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 378
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 371
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private trimWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "value"

    .prologue
    .line 350
    const/4 v2, 0x0

    .line 351
    .local v2, start:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .line 352
    .local v1, last:I
    move v0, v1

    .line 353
    .local v0, end:I
    :goto_0
    if-gt v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    :cond_0
    :goto_1
    if-lt v0, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 359
    :cond_1
    if-nez v2, :cond_2

    if-ne v0, v1, :cond_2

    move-object v3, p1

    .line 362
    :goto_2
    return-object v3

    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method public sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    const/4 v5, 0x0

    .line 338
    :goto_0
    return-object v5

    .line 305
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 306
    .local v3, length:I
    iget v5, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_2

    .line 307
    sget v5, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->MIN_SCRIPT_PREFIX_LENGTH:I

    if-lt v3, v5, :cond_2

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, asLower:Ljava/lang/String;
    const-string v5, "javascript:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "vbscript:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 311
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 318
    .end local v0           #asLower:Ljava/lang/String;
    :cond_2
    iget v5, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_3

    .line 319
    invoke-direct {p0, p1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 325
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 326
    .local v4, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 327
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 328
    .local v1, c:C
    invoke-direct {p0, v1}, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->characterIsLegal(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 329
    iget v5, p0, Landroid/net/UrlQuerySanitizer$IllegalCharacterValueSanitizer;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    .line 330
    const/16 v1, 0x20

    .line 336
    :cond_4
    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 333
    :cond_5
    const/16 v1, 0x5f

    goto :goto_2

    .line 338
    .end local v1           #c:C
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.class public Landroid/text/method/DigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DigitsKeyListener.java"


# static fields
.field private static final CHARACTERS:[[C = null

.field private static final DECIMAL:I = 0x2

.field private static final SIGN:I = 0x1

.field private static sInstance:[Landroid/text/method/DigitsKeyListener;


# instance fields
.field private mAccepted:[C

.field private mDecimal:Z

.field private mSign:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x4

    .line 48
    new-array v0, v3, [[C

    const/4 v1, 0x0

    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [C

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [C

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xc

    new-array v2, v2, [C

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    .line 217
    new-array v0, v3, [Landroid/text/method/DigitsKeyListener;

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    return-void

    .line 48
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2dt 0x0t
    .end array-data

    nop

    :array_2
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2et 0x0t
    .end array-data

    nop

    :array_3
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2dt 0x0t
        0x2et 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 3
    .parameter "sign"
    .parameter "decimal"

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 68
    iput-boolean p1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    .line 69
    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    .line 71
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v2, 0x2

    :cond_0
    or-int v0, v1, v2

    .line 72
    .local v0, kind:I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 73
    return-void

    .end local v0           #kind:I
    :cond_1
    move v1, v2

    .line 71
    goto :goto_0
.end method

.method public static getInstance()Landroid/text/method/DigitsKeyListener;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-static {v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
    .locals 4
    .parameter "accepted"

    .prologue
    const/4 v3, 0x0

    .line 105
    new-instance v0, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    .line 107
    .local v0, dim:Landroid/text/method/DigitsKeyListener;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 110
    return-object v0
.end method

.method public static getInstance(ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 3
    .parameter "sign"
    .parameter "decimal"

    .prologue
    const/4 v2, 0x0

    .line 88
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    or-int v0, v1, v2

    .line 90
    .local v0, kind:I
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 91
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    .line 94
    :goto_1
    return-object v1

    .end local v0           #kind:I
    :cond_1
    move v1, v2

    .line 88
    goto :goto_0

    .line 93
    .restart local v0       #kind:I
    :cond_2
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0, p1}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    aput-object v2, v1, v0

    .line 94
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    goto :goto_1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 127
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 129
    .local v4, out:Ljava/lang/CharSequence;
    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-nez v8, :cond_0

    move-object v8, v4

    .line 213
    :goto_0
    return-object v8

    .line 133
    :cond_0
    if-eqz v4, :cond_1

    .line 134
    move-object p1, v4

    .line 135
    const/4 p2, 0x0

    .line 136
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p3

    .line 139
    :cond_1
    const/4 v5, -0x1

    .line 140
    .local v5, sign:I
    const/4 v1, -0x1

    .line 141
    .local v1, decimal:I
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 147
    .local v2, dlen:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p5, :cond_4

    .line 148
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 150
    .local v0, c:C
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_3

    .line 151
    move v5, v3

    .line 147
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 152
    :cond_3
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_2

    .line 153
    move v1, v3

    goto :goto_2

    .line 156
    .end local v0           #c:C
    :cond_4
    move/from16 v3, p6

    :goto_3
    if-ge v3, v2, :cond_7

    .line 157
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 159
    .restart local v0       #c:C
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_5

    .line 160
    const-string v8, ""

    goto :goto_0

    .line 161
    :cond_5
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_6

    .line 162
    move v1, v3

    .line 156
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 173
    .end local v0           #c:C
    :cond_7
    const/4 v7, 0x0

    .line 175
    .local v7, stripped:Landroid/text/SpannableStringBuilder;
    const/4 v8, 0x1

    sub-int v3, p3, v8

    :goto_4
    if-lt v3, p2, :cond_11

    .line 176
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 177
    .restart local v0       #c:C
    const/4 v6, 0x0

    .line 179
    .local v6, strip:Z
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_c

    .line 180
    if-ne v3, p2, :cond_8

    if-eqz p5, :cond_a

    .line 181
    :cond_8
    const/4 v6, 0x1

    .line 195
    :cond_9
    :goto_5
    if-eqz v6, :cond_10

    .line 196
    add-int/lit8 v8, p2, 0x1

    if-ne p3, v8, :cond_e

    .line 197
    const-string v8, ""

    goto :goto_0

    .line 182
    :cond_a
    if-ltz v5, :cond_b

    .line 183
    const/4 v6, 0x1

    goto :goto_5

    .line 185
    :cond_b
    move v5, v3

    goto :goto_5

    .line 187
    :cond_c
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_9

    .line 188
    if-ltz v1, :cond_d

    .line 189
    const/4 v6, 0x1

    goto :goto_5

    .line 191
    :cond_d
    move v1, v3

    goto :goto_5

    .line 200
    :cond_e
    if-nez v7, :cond_f

    .line 201
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .end local v7           #stripped:Landroid/text/SpannableStringBuilder;
    invoke-direct {v7, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 204
    .restart local v7       #stripped:Landroid/text/SpannableStringBuilder;
    :cond_f
    sub-int v8, v3, p2

    add-int/lit8 v9, v3, 0x1

    sub-int/2addr v9, p2

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 175
    :cond_10
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 208
    .end local v0           #c:C
    .end local v6           #strip:Z
    :cond_11
    if-eqz v7, :cond_12

    move-object v8, v7

    .line 209
    goto :goto_0

    .line 210
    :cond_12
    if-eqz v4, :cond_13

    move-object v8, v4

    .line 211
    goto/16 :goto_0

    .line 213
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x2

    .line 115
    .local v0, contentType:I
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v1, :cond_0

    .line 116
    or-int/lit16 v0, v0, 0x1000

    .line 118
    :cond_0
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_1

    .line 119
    or-int/lit16 v0, v0, 0x2000

    .line 121
    :cond_1
    return v0
.end method

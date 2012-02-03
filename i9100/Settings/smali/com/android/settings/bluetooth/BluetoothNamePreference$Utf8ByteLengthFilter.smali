.class public Lcom/android/settings/bluetooth/BluetoothNamePreference$Utf8ByteLengthFilter;
.super Ljava/lang/Object;
.source "BluetoothNamePreference.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothNamePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utf8ByteLengthFilter"
.end annotation


# instance fields
.field private mMaxBytes:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "maxBytes"

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference$Utf8ByteLengthFilter;->mMaxBytes:I

    .line 192
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 196
    const/4 v5, 0x0

    .line 198
    .local v5, srcByteCount:I
    move v3, p2

    .local v3, i:I
    :goto_0
    if-ge v3, p3, :cond_2

    .line 199
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 200
    .local v0, c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    add-int/2addr v5, v6

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    :cond_0
    const/16 v6, 0x800

    if-ge v0, v6, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    goto :goto_1

    .line 202
    .end local v0           #c:C
    :cond_2
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 203
    .local v2, destLen:I
    const/4 v1, 0x0

    .line 205
    .local v1, destByteCount:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    .line 206
    if-lt v3, p5, :cond_3

    if-lt v3, p6, :cond_4

    .line 207
    :cond_3
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 208
    .restart local v0       #c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_5

    const/4 v6, 0x1

    :goto_3
    add-int/2addr v1, v6

    .line 205
    .end local v0           #c:C
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 208
    .restart local v0       #c:C
    :cond_5
    const/16 v6, 0x800

    if-ge v0, v6, :cond_6

    const/4 v6, 0x2

    goto :goto_3

    :cond_6
    const/4 v6, 0x3

    goto :goto_3

    .line 211
    .end local v0           #c:C
    :cond_7
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference$Utf8ByteLengthFilter;->mMaxBytes:I

    sub-int v4, v6, v1

    .line 212
    .local v4, keepBytes:I
    if-gtz v4, :cond_8

    .line 213
    const-string v6, ""

    .line 228
    :goto_4
    return-object v6

    .line 214
    :cond_8
    if-lt v4, v5, :cond_9

    .line 215
    const/4 v6, 0x0

    goto :goto_4

    .line 218
    :cond_9
    move v3, p2

    :goto_5
    if-ge v3, p3, :cond_d

    .line 219
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 220
    .restart local v0       #c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_a

    const/4 v6, 0x1

    :goto_6
    sub-int/2addr v4, v6

    .line 221
    if-gez v4, :cond_c

    .line 222
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_4

    .line 220
    :cond_a
    const/16 v6, 0x800

    if-ge v0, v6, :cond_b

    const/4 v6, 0x2

    goto :goto_6

    :cond_b
    const/4 v6, 0x3

    goto :goto_6

    .line 218
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 228
    .end local v0           #c:C
    :cond_d
    const/4 v6, 0x0

    goto :goto_4
.end method

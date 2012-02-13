.class Lcom/android/internal/telephony/gsm/stk/LanguageResponseData;
.super Lcom/android/internal/telephony/gsm/stk/ResponseData;
.source "ResponseData.java"


# instance fields
.field private lang:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "lang"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/LanguageResponseData;->lang:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 7
    .parameter "buf"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .local v5, tag:I
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/LanguageResponseData;->lang:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/LanguageResponseData;->lang:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/LanguageResponseData;->lang:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v2

    .local v2, data:[B
    :goto_0
    array-length v6, v2

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object v0, v2

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v2           #data:[B
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    const/4 v6, 0x0

    new-array v2, v6, [B

    .restart local v2       #data:[B
    goto :goto_0
.end method

.class Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;
.super Lcom/android/internal/telephony/gsm/stk/ResponseData;
.source "ResponseData.java"


# instance fields
.field private langType:[B

.field private tag:B

.field private tagLen:B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "langName"

    .prologue
    const/4 v3, 0x2

    .line 207
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 203
    new-array v2, v3, [B

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;->langType:[B

    .line 204
    const/16 v2, -0x53

    iput-byte v2, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;->tag:B

    .line 205
    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;->tagLen:B

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside ProvideLocalinfolangSetting method, lenguage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, langString:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 215
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of langString : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;->langType:[B

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of langtype byte"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;->langType:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    :cond_0
    return-void

    .line 213
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .parameter "buf"

    .prologue
    .line 227
    iget-byte v1, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;->tag:B

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 228
    iget-byte v1, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;->tagLen:B

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;->langType:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

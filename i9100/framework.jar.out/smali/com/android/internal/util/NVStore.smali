.class public Lcom/android/internal/util/NVStore;
.super Ljava/lang/Object;
.source "NVStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/NVStore$datatype;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBKEY_MT_PWD:Ljava/lang/String; = "mt_pwd"

.field private static final DBKEY_MT_STATE:Ljava/lang/String; = "mt_state"

.field private static final DEFAULT_IMSI:Ljava/lang/String; = "0000"

.field private static final DEFAULT_PHPWD:Ljava/lang/String; = "00000000"

.field private static final DEFAULT_RETURN_STR:Ljava/lang/String; = "none"

.field private static final DEFAULT_SENDER_NAME:Ljava/lang/String; = "Not Mentioned"

.field private static final DEFAULT_SMS_MSG:Ljava/lang/String; = "Keep this message."

.field private static final LOG_TAG:Ljava/lang/String; = "NVStore"

.field private static final MT_FILE:Ljava/lang/String; = "/system/mobiletracker.txt"

.field private static final OEM_FUNCTION_ID_RFS:I = 0x13

.field private static final OEM_RFS_NV_MOBILE_TRACKER:I = 0x1

.field private static final OEM_WRITE_EVENT_DONE:I = 0x7d1


# instance fields
.field mContext:Landroid/content/Context;

.field mNvData:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 49
    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->ReaddataFromNv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 49
    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mContext:Landroid/content/Context;

    .line 66
    iput-object p1, p0, Lcom/android/internal/util/NVStore;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->ReaddataFromNv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public GetMTStatus()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v5

    .line 123
    :goto_0
    return v3

    .line 108
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 111
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 112
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    move v3, v5

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    aget-object v3, v2, v6

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    move v3, v6

    .line 121
    goto :goto_0

    :cond_3
    move v3, v5

    .line 123
    goto :goto_0
.end method

.method public GetPhPWD()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 81
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v3, v6

    .line 100
    :goto_0
    return-object v3

    .line 85
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 88
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 89
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_1
    const/4 v3, 0x1

    if-ge v0, v3, :cond_2

    move-object v3, v6

    .line 95
    goto :goto_0

    .line 97
    :cond_2
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_3

    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v7, :cond_4

    :cond_3
    move-object v3, v6

    .line 98
    goto :goto_0

    .line 100
    :cond_4
    aget-object v3, v2, v5

    goto :goto_0
.end method

.method public GetRec1()Ljava/lang/String;
    .locals 6

    .prologue
    const-string/jumbo v5, "none"

    .line 154
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 155
    const-string/jumbo v3, "none"

    move-object v3, v5

    .line 171
    :goto_0
    return-object v3

    .line 157
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 160
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 161
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    :cond_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    .line 167
    const-string/jumbo v3, "none"

    move-object v3, v5

    goto :goto_0

    .line 171
    :cond_2
    const/4 v3, 0x3

    aget-object v3, v2, v3

    goto :goto_0
.end method

.method public GetRec2()Ljava/lang/String;
    .locals 6

    .prologue
    const-string/jumbo v5, "none"

    .line 176
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 177
    const-string/jumbo v3, "none"

    move-object v3, v5

    .line 193
    :goto_0
    return-object v3

    .line 179
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 182
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 183
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    .line 189
    const-string/jumbo v3, "none"

    move-object v3, v5

    goto :goto_0

    .line 193
    :cond_2
    const/4 v3, 0x4

    aget-object v3, v2, v3

    goto :goto_0
.end method

.method public GetRec3()Ljava/lang/String;
    .locals 6

    .prologue
    const-string/jumbo v5, "none"

    .line 197
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 198
    const-string/jumbo v3, "none"

    move-object v3, v5

    .line 214
    :goto_0
    return-object v3

    .line 200
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 203
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 204
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    :cond_1
    const/4 v3, 0x6

    if-ge v0, v3, :cond_2

    .line 210
    const-string/jumbo v3, "none"

    move-object v3, v5

    goto :goto_0

    .line 214
    :cond_2
    const/4 v3, 0x5

    aget-object v3, v2, v3

    goto :goto_0
.end method

.method public GetRec4()Ljava/lang/String;
    .locals 6

    .prologue
    const-string/jumbo v5, "none"

    .line 218
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 219
    const-string/jumbo v3, "none"

    move-object v3, v5

    .line 235
    :goto_0
    return-object v3

    .line 221
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 224
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 225
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 230
    :cond_1
    const/4 v3, 0x7

    if-ge v0, v3, :cond_2

    .line 231
    const-string/jumbo v3, "none"

    move-object v3, v5

    goto :goto_0

    .line 235
    :cond_2
    const/4 v3, 0x6

    aget-object v3, v2, v3

    goto :goto_0
.end method

.method public GetRec5()Ljava/lang/String;
    .locals 6

    .prologue
    const-string/jumbo v5, "none"

    .line 239
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 240
    const-string/jumbo v3, "none"

    move-object v3, v5

    .line 256
    :goto_0
    return-object v3

    .line 242
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 245
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 246
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    :cond_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_2

    .line 252
    const-string/jumbo v3, "none"

    move-object v3, v5

    goto :goto_0

    .line 256
    :cond_2
    const/4 v3, 0x7

    aget-object v3, v2, v3

    goto :goto_0
.end method

.method public GetSenderName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const-string v5, "Not Mentioned"

    .line 130
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 131
    const-string v3, "Not Mentioned"

    move-object v3, v5

    .line 148
    :goto_0
    return-object v3

    .line 133
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 136
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 137
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    :cond_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    .line 143
    const-string v3, "Not Mentioned"

    move-object v3, v5

    goto :goto_0

    .line 145
    :cond_2
    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_3

    .line 146
    const-string v3, "Not Mentioned"

    move-object v3, v5

    goto :goto_0

    .line 148
    :cond_3
    aget-object v3, v2, v6

    goto :goto_0
.end method

.method public GetSmsMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const-string v5, "Keep this message."

    .line 260
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 261
    const-string v3, "Keep this message."

    move-object v3, v5

    .line 277
    :goto_0
    return-object v3

    .line 263
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 266
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 267
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    :cond_1
    const/16 v3, 0x9

    if-ge v0, v3, :cond_2

    .line 273
    const-string v3, "Keep this message."

    move-object v3, v5

    goto :goto_0

    .line 274
    :cond_2
    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x50

    if-le v3, v4, :cond_3

    .line 275
    const-string v3, "Keep this message."

    move-object v3, v5

    goto :goto_0

    .line 277
    :cond_3
    aget-object v3, v2, v6

    goto :goto_0
.end method

.method public GetStoredIMSI()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x9

    const-string v5, "0000"

    .line 282
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 283
    const-string v3, "0000"

    move-object v3, v5

    .line 299
    :goto_0
    return-object v3

    .line 285
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 288
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 289
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    :cond_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 295
    const-string v3, "0000"

    move-object v3, v5

    goto :goto_0

    .line 296
    :cond_2
    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x15

    if-le v3, v4, :cond_3

    .line 297
    const-string v3, "0000"

    move-object v3, v5

    goto :goto_0

    .line 299
    :cond_3
    aget-object v3, v2, v6

    goto :goto_0
.end method

.method public IsPhLockeEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 304
    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v5

    .line 327
    :goto_0
    return v3

    .line 307
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    const-string v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 310
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 311
    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 316
    :cond_1
    const/16 v3, 0xb

    if-ge v0, v3, :cond_2

    move v3, v5

    .line 318
    goto :goto_0

    .line 321
    :cond_2
    const/16 v3, 0xa

    aget-object v3, v2, v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 323
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v5

    .line 327
    goto :goto_0
.end method

.method public ReaddataFromNv()Ljava/lang/String;
    .locals 12

    .prologue
    .line 334
    const/4 v3, 0x0

    .line 335
    .local v3, fIn:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 336
    .local v7, isr:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 341
    .local v0, data:Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/system/mobiletracker.txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 345
    .local v5, fname:Ljava/lang/String;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 346
    .end local v3           #fIn:Ljava/io/FileInputStream;
    .local v4, fIn:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 348
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .local v8, isr:Ljava/io/InputStreamReader;
    const/16 v10, 0x100

    :try_start_2
    new-array v6, v10, [C

    .line 351
    .local v6, inputBuffer:[C
    invoke-virtual {v8, v6}, Ljava/io/InputStreamReader;->read([C)I

    .line 352
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>([C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    .line 353
    .local v9, readString:Ljava/lang/String;
    move-object v0, v9

    .line 370
    if-eqz v8, :cond_0

    .line 373
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 377
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 380
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_1
    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    move-object v1, v0

    .line 385
    .end local v0           #data:Ljava/lang/String;
    .end local v5           #fname:Ljava/lang/String;
    .end local v6           #inputBuffer:[C
    .end local v9           #readString:Ljava/lang/String;
    .local v1, data:Ljava/lang/String;
    :goto_2
    return-object v1

    .line 358
    .end local v1           #data:Ljava/lang/String;
    .restart local v0       #data:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 370
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_3
    if-eqz v7, :cond_2

    .line 373
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 377
    :cond_2
    :goto_4
    if-eqz v3, :cond_3

    .line 380
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    :goto_5
    move-object v1, v0

    .line 382
    .end local v0           #data:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/String;
    goto :goto_2

    .line 363
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #data:Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v2, v10

    .line 370
    .local v2, e:Ljava/io/IOException;
    :goto_6
    if-eqz v7, :cond_4

    .line 373
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 377
    :cond_4
    :goto_7
    if-eqz v3, :cond_5

    .line 380
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_5
    :goto_8
    move-object v1, v0

    .line 382
    .end local v0           #data:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/String;
    goto :goto_2

    .line 369
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #data:Ljava/lang/String;
    :catchall_0
    move-exception v10

    .line 370
    :goto_9
    if-eqz v7, :cond_6

    .line 373
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 377
    :cond_6
    :goto_a
    if-eqz v3, :cond_7

    .line 380
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 382
    :cond_7
    :goto_b
    throw v10

    .line 374
    .end local v3           #fIn:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    .restart local v5       #fname:Ljava/lang/String;
    .restart local v6       #inputBuffer:[C
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    .restart local v9       #readString:Ljava/lang/String;
    :catch_2
    move-exception v10

    goto :goto_0

    .line 381
    :catch_3
    move-exception v10

    goto :goto_1

    .line 374
    .end local v4           #fIn:Ljava/io/FileInputStream;
    .end local v5           #fname:Ljava/lang/String;
    .end local v6           #inputBuffer:[C
    .end local v8           #isr:Ljava/io/InputStreamReader;
    .end local v9           #readString:Ljava/lang/String;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    :catch_4
    move-exception v10

    goto :goto_4

    .line 381
    :catch_5
    move-exception v10

    goto :goto_5

    .line 374
    .local v2, e:Ljava/io/IOException;
    :catch_6
    move-exception v10

    goto :goto_7

    .line 381
    :catch_7
    move-exception v10

    goto :goto_8

    .line 374
    .end local v2           #e:Ljava/io/IOException;
    :catch_8
    move-exception v11

    goto :goto_a

    .line 381
    :catch_9
    move-exception v11

    goto :goto_b

    .line 369
    .end local v3           #fIn:Ljava/io/FileInputStream;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    .restart local v5       #fname:Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    goto :goto_9

    .end local v3           #fIn:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v10

    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    goto :goto_9

    .line 363
    .end local v3           #fIn:Ljava/io/FileInputStream;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    :catch_a
    move-exception v10

    move-object v2, v10

    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v3           #fIn:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catch_b
    move-exception v10

    move-object v2, v10

    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    goto :goto_6

    .line 358
    .end local v3           #fIn:Ljava/io/FileInputStream;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    :catch_c
    move-exception v10

    move-object v2, v10

    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3           #fIn:Ljava/io/FileInputStream;
    .end local v7           #isr:Ljava/io/InputStreamReader;
    .restart local v4       #fIn:Ljava/io/FileInputStream;
    .restart local v8       #isr:Ljava/io/InputStreamReader;
    :catch_d
    move-exception v10

    move-object v2, v10

    move-object v7, v8

    .end local v8           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #isr:Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4           #fIn:Ljava/io/FileInputStream;
    .restart local v3       #fIn:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V
    .locals 10
    .parameter "data"
    .parameter "type"

    .prologue
    const-string/jumbo v9, "mt_state"

    const-string v6, "0"

    const-string v8, "1"

    const-string v7, ";"

    .line 390
    const-string v2, ""

    .line 391
    .local v2, newdata:Ljava/lang/String;
    const/4 v3, 0x0

    .line 392
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->ReaddataFromNv()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    .line 394
    sget-object v5, Lcom/android/internal/util/NVStore$datatype;->PHPWD:Lcom/android/internal/util/NVStore$datatype;

    if-ne p2, v5, :cond_3

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "1"

    move-object v1, v8

    .line 399
    .local v1, mtStatus:Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    .end local v1           #mtStatus:Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lcom/android/internal/util/NVStore;->mNvData:Ljava/lang/String;

    .line 432
    iget-object v5, p0, Lcom/android/internal/util/NVStore;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 434
    iget-object v5, p0, Lcom/android/internal/util/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mt_pwd"

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 435
    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 436
    iget-object v5, p0, Lcom/android/internal/util/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mt_state"

    const/4 v6, 0x1

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    :cond_0
    :goto_2
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/mobiletracker.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, fname:Ljava/lang/String;
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 450
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 467
    if-eqz v4, :cond_a

    .line 471
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 476
    .end local v0           #fname:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    :goto_3
    return-void

    .line 397
    :cond_2
    const-string v5, "0"

    move-object v1, v6

    goto/16 :goto_0

    .line 404
    :cond_3
    sget-object v5, Lcom/android/internal/util/NVStore$datatype;->PHLOCK_STATE:Lcom/android/internal/util/NVStore$datatype;

    if-ne p2, v5, :cond_5

    .line 408
    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "1"

    move-object v1, v8

    .line 409
    .restart local v1       #mtStatus:Ljava/lang/String;
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 414
    goto/16 :goto_1

    .line 408
    .end local v1           #mtStatus:Ljava/lang/String;
    :cond_4
    const-string v5, "0"

    move-object v1, v6

    goto/16 :goto_4

    .line 414
    :cond_5
    sget-object v5, Lcom/android/internal/util/NVStore$datatype;->ENABLE_PHLOCK_FIRST:Lcom/android/internal/util/NVStore$datatype;

    if-ne p2, v5, :cond_7

    .line 417
    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "1"

    move-object v1, v8

    .line 419
    .restart local v1       #mtStatus:Ljava/lang/String;
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    goto/16 :goto_1

    .line 417
    .end local v1           #mtStatus:Ljava/lang/String;
    :cond_6
    const-string v5, "0"

    move-object v1, v6

    goto/16 :goto_5

    .line 427
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 438
    :cond_8
    iget-object v5, p0, Lcom/android/internal/util/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mt_state"

    const/4 v6, 0x0

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 472
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #fname:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 473
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .line 455
    .end local v0           #fname:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 467
    :goto_6
    if-eqz v3, :cond_1

    .line 471
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 472
    :catch_2
    move-exception v5

    goto/16 :goto_3

    .line 458
    :catch_3
    move-exception v5

    .line 467
    :goto_7
    if-eqz v3, :cond_1

    .line 471
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    .line 472
    :catch_4
    move-exception v5

    goto/16 :goto_3

    .line 461
    :catch_5
    move-exception v5

    .line 467
    :goto_8
    if-eqz v3, :cond_1

    .line 471
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_3

    .line 472
    :catch_6
    move-exception v5

    goto/16 :goto_3

    .line 465
    :catchall_0
    move-exception v5

    .line 467
    :goto_9
    if-eqz v3, :cond_9

    .line 471
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 473
    :cond_9
    :goto_a
    throw v5

    .line 472
    :catch_7
    move-exception v6

    goto :goto_a

    .line 465
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #fname:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_9

    .line 461
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_8

    .line 458
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_7

    .line 455
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_6

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_a
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_3
.end method

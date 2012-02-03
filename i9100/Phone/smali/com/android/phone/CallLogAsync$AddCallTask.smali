.class Lcom/android/phone/CallLogAsync$AddCallTask;
.super Landroid/os/AsyncTask;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/phone/CallLogAsync$AddCallArgs;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallLogAsync;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallLogAsync;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallTask;->this$0:Lcom/android/phone/CallLogAsync;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallLogAsync;Lcom/android/phone/CallLogAsync$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;-><init>(Lcom/android/phone/CallLogAsync;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    check-cast p1, [Lcom/android/phone/CallLogAsync$AddCallArgs;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/phone/CallLogAsync$AddCallArgs;)[Landroid/net/Uri;
    .locals 14
    .parameter "callList"

    .prologue
    .line 180
    array-length v9, p1

    .line 181
    .local v9, count:I
    new-array v12, v9, [Landroid/net/Uri;

    .line 182
    .local v12, result:[Landroid/net/Uri;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 183
    .local v13, value:Landroid/content/ContentValues;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v9, :cond_9

    .line 184
    aget-object v8, p1, v10

    .line 185
    .local v8, c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    const-string v0, "date"

    iget-wide v1, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    const-string v0, "duration"

    iget v1, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    iget v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 190
    :cond_0
    const-string v0, "service_type"

    iget v1, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v0, "type"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    :goto_1
    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    const-string v0, "cnap_name"

    iget-object v1, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_1
    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_2

    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    const-string v0, "cdnip_number"

    iget-object v1, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_2
    iget-object v11, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 208
    .local v11, logNumber:Ljava/lang/String;
    iget v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v0, v1, :cond_5

    .line 209
    const-string v11, "-2"

    .line 217
    :cond_3
    :goto_2
    const-string v0, "number"

    invoke-virtual {v13, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v0, "CallLogAsync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddCallTask : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    if-nez v0, :cond_8
    :goto_3

    .line 221
    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v12, v10

    .line 183

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 193
    .end local v11           #logNumber:Ljava/lang/String;
    :cond_4
    const-string v0, "service_type"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    const-string v0, "type"

    iget v1, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 210
    .restart local v11       #logNumber:Ljava/lang/String;
    :cond_5
    iget v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v0, v1, :cond_6

    .line 211
    const-string v11, "-3"

    goto :goto_2

    .line 212
    :cond_6
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v0, v1, :cond_3

    .line 214
    :cond_7
    const-string v11, "-1"

    goto :goto_2

    .line 224
    :cond_8
    iget-object v0, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    iget-object v2, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    iget v3, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    iget v4, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    iget-wide v5, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    iget v7, v8, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    invoke-static/range {v0 .. v7}, Landroid/provider/CallLog$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJI)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v12, v10

    goto :goto_3

    .line 229
    .end local v8           #c:Lcom/android/phone/CallLogAsync$AddCallArgs;
    .end local v11           #logNumber:Ljava/lang/String;
    :cond_9
    return-object v12
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 177
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$AddCallTask;->onPostExecute([Landroid/net/Uri;)V

    return-void
.end method

.method protected onPostExecute([Landroid/net/Uri;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 237
    move-object v0, p1

    .local v0, arr$:[Landroid/net/Uri;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 238
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 239
    const-string v4, "CallLogAsync"

    const-string v5, "Failed to write call to the log."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

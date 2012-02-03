.class public Lcom/broadcom/bt/service/map/provider/ProviderHelper;
.super Ljava/lang/Object;
.source "ProviderHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MAP.ProviderHelper"


# instance fields
.field mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

.field mProviderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    .line 72
    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static addFilter_DSDiscover(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 59
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .restart local p0
    :cond_0
    const-string v0, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    return-object p0
.end method

.method public static createIntent_DSDiscover()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getMSETime()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 80
    const-string v2, ""

    .line 85
    .local v2, sMSEDateTime:Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 86
    .local v0, d:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "T"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    const-string v3, "MAP.ProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSEDateTime :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v2
.end method

.method private getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private paramsValid(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"

    .prologue
    const-string v3, "(null)"

    .line 383
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    :cond_0
    const-string v0, "MAP.ProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid param!. requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "datasourceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_1

    const-string v2, "(null)"

    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_2

    const-string v2, "(null)"

    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x0

    .line 389
    :goto_2
    return v0

    :cond_1
    move-object v2, p2

    .line 384
    goto :goto_0

    :cond_2
    move-object v2, p3

    goto :goto_1

    .line 389
    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "datasourceId"
    .parameter "notificationType"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "oldFolderPath"

    .prologue
    const/4 v2, 0x0

    const-string v3, "MAP.ProviderHelper"

    .line 271
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 273
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 274
    :cond_0
    const-string v1, "MAP.ProviderHelper"

    const-string v1, "Unable to send notification. Proxy or datasource is null"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 284
    :goto_0
    return v1

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    iget-boolean v1, v1, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    if-nez v1, :cond_2

    .line 278
    const-string v1, "MAP.ProviderHelper"

    const-string v1, "Unable to send notification. Notification is not enabled"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 279
    goto :goto_0

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    iget-byte v7, v2, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/BluetoothMAP;->notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)I

    .line 284
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public returnMessage(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "msgCharset"
    .parameter "msgUri"

    .prologue
    const-string v2, "MAP.ProviderHelper"

    .line 352
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->paramsValid(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    const-string v1, "MAP.ProviderHelper"

    const-string/jumbo v1, "returnMessage(): invalid params. ignoring request."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 357
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_1

    .line 358
    const-string v1, "MAP.ProviderHelper"

    const-string v1, "Proxy is not available...Ignoring request..."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    goto :goto_0
.end method

.method public returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"

    .prologue
    const-string v2, "MAP.ProviderHelper"

    .line 336
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->paramsValid(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    const-string v1, "MAP.ProviderHelper"

    const-string/jumbo v1, "returnNoMessage(): invalid params. ignoring request."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 342
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_1

    .line 343
    const-string v1, "MAP.ProviderHelper"

    const-string v1, "Proxy is not available...Ignoring request..."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    goto :goto_0
.end method

.method public sendFolderInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "status"
    .parameter "folderInfo"

    .prologue
    const/4 v8, 0x0

    .line 241
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 243
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 244
    :cond_0
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Unable to send FolderInfo. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 251
    :goto_0
    return v1

    :cond_1
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 248
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    move-result v7

    .line 251
    .local v7, ret:I
    if-nez v7, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v8

    goto :goto_0
.end method

.method public sendFolderListingError_NoFolders(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 184
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_0

    .line 185
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    .line 190
    return-void
.end method

.method public sendFolderListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/service/map/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p4, folderInfos:Ljava/util/List;,"Ljava/util/List<Lcom/broadcom/bt/service/map/FolderInfo;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [Lcom/broadcom/bt/service/map/FolderInfo;

    .line 202
    .local v6, fldInfoArray:[Lcom/broadcom/bt/service/map/FolderInfo;
    invoke-interface {p4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 204
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 205
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_0

    .line 206
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    .line 211
    return-void
.end method

.method public sendFolderListings(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "folderNames"

    .prologue
    const-string v2, "MAP.ProviderHelper"

    .line 215
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 216
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_0

    .line 217
    const-string v1, "MAP.ProviderHelper"

    const-string v1, "Proxy is not available...Ignoring request..."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 221
    :cond_1
    const-string v1, "MAP.ProviderHelper"

    const-string v1, "No folders specified"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 225
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    array-length v1, p4

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .local v7, folderInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/broadcom/bt/service/map/FolderInfo;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v1, p4

    if-ge v8, v1, :cond_3

    .line 228
    new-instance v9, Lcom/broadcom/bt/service/map/FolderInfo;

    invoke-direct {v9}, Lcom/broadcom/bt/service/map/FolderInfo;-><init>()V

    .line 229
    .local v9, info:Lcom/broadcom/bt/service/map/FolderInfo;
    aget-object v1, p4, v8

    iput-object v1, v9, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    .line 230
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 232
    .end local v9           #info:Lcom/broadcom/bt/service/map/FolderInfo;
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v6, v1, [Lcom/broadcom/bt/service/map/FolderInfo;

    .line 233
    .local v6, fldInfoArray:[Lcom/broadcom/bt/service/map/FolderInfo;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 235
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    goto :goto_0
.end method

.method public sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 111
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_0

    .line 112
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getMSETime()Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, mseTime:Ljava/lang/String;
    const/4 v7, 0x0

    .line 117
    .local v7, newMsg:B
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v8, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I

    .line 119
    return-void
.end method

.method public sendMessageListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/service/map/MessageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p4, msgInfos:Ljava/util/List;,"Ljava/util/List<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 125
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_0

    .line 126
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getMSETime()Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, mseTime:Ljava/lang/String;
    const/4 v7, 0x0

    .line 132
    .local v7, newMsg:B
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    new-array v8, v1, [Lcom/broadcom/bt/service/map/MessageInfo;

    .line 133
    .local v8, msgInfoArray:[Lcom/broadcom/bt/service/map/MessageInfo;
    invoke-interface {p4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 135
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I

    goto :goto_0
.end method

.method public sendMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msgFilePath"

    .prologue
    const/4 v8, 0x0

    .line 169
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 171
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 172
    :cond_0
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Unable to send sendMsg. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 177
    :goto_0
    return v1

    :cond_1
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 175
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    move-result v7

    .line 177
    .local v7, ret:I
    if-nez v7, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v8

    goto :goto_0
.end method

.method public sendMsgListInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)Z
    .locals 10
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "parentPath"
    .parameter "status"
    .parameter "mseTime"
    .parameter "newMsg"
    .parameter "msgInfo"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 144
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 145
    :cond_0
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Unable to send MsgListInfo. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v1, 0x0

    .line 150
    :goto_0
    return v1

    :cond_1
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 148
    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I

    move-result v9

    .line 150
    .local v9, ret:I
    if-nez v9, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "dataSourceId"
    .parameter "status_type"
    .parameter "status"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 258
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 259
    :cond_0
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Unable to send FolderInfo. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v1, 0x0

    .line 265
    :goto_0
    return v1

    :cond_1
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 262
    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/BluetoothMAP;->setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 265
    .local v8, ret:I
    if-nez v8, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendNotification_DeliveryFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 312
    const/4 v2, 0x3

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 314
    return-void
.end method

.method public sendNotification_DeliverySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 306
    const/4 v2, 0x1

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 308
    return-void
.end method

.method public sendNotification_MessageDeleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 331
    const/4 v2, 0x7

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 333
    return-void
.end method

.method public sendNotification_MessageDelivered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 318
    const/4 v2, 0x1

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 320
    return-void
.end method

.method public sendNotification_MessageShift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "oldFolderPath"

    .prologue
    .line 324
    const/16 v2, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 326
    return-void
.end method

.method public sendNotification_NewMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 288
    const/4 v2, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 290
    return-void
.end method

.method public sendNotification_SendingFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 300
    const/4 v2, 0x4

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    return-void
.end method

.method public sendNotification_SendingSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 294
    const/4 v2, 0x2

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 296
    return-void
.end method

.method public sendPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msg_folder"

    .prologue
    const/4 v8, 0x0

    .line 156
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 158
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 159
    :cond_0
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Unable to send sendPushResponse. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 163
    :goto_0
    return v1

    :cond_1
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 162
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    move-result v7

    .line 163
    .local v7, ret:I
    if-nez v7, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v8

    goto :goto_0
.end method

.method public setMsgPushStatus_Error(ILjava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"

    .prologue
    const-string v4, ""

    .line 374
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 375
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_0

    .line 376
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const-string v1, ""

    const/4 v5, 0x1

    const-string v1, ""

    move v1, p1

    move-object v3, p2

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    .line 380
    return-void
.end method

.method public setMsgPushStatus_Success(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 366
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_0

    .line 367
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    .line 371
    return-void
.end method

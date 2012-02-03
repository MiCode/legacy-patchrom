.class public Lcom/broadcom/bt/service/map/MapProviderContext;
.super Ljava/lang/Object;
.source "MapProviderContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MapProviderContext"


# instance fields
.field mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

.field mFeatureMessageFilter:Z

.field mFeatureMessageOffsetBrowsing:Z

.field mFolderMappings:[Ljava/lang/String;

.field public mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

.field mMseInstanceId:I

.field mProviderDSDisplayName:Ljava/lang/String;

.field mProviderDSId:Ljava/lang/String;

.field mProviderDisplayName:Ljava/lang/String;

.field mProviderId:Ljava/lang/String;

.field mProviderRootPath:Ljava/lang/String;

.field mProviderType:B

.field mSessions:Ljava/util/Vector;


# direct methods
.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V
    .locals 1
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "provider_display_name"
    .parameter "provider_ds_id"
    .parameter "provider_ds_display_name"
    .parameter "feature_message_filter"
    .parameter "feature_message_offset_browsing"
    .parameter "folder_mappings"
    .parameter "callback"

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const-string/jumbo v0, "root"

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderRootPath:Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    .line 200
    new-instance v0, Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/MapMessageIdMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    .line 212
    iput-byte p1, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    .line 213
    iput-object p2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    .line 214
    iput-object p3, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDisplayName:Ljava/lang/String;

    .line 215
    iput-object p4, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    .line 216
    iput-object p5, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    .line 217
    iput-boolean p6, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mFeatureMessageFilter:Z

    .line 218
    iput-boolean p7, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mFeatureMessageOffsetBrowsing:Z

    .line 219
    iput-object p8, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mFolderMappings:[Ljava/lang/String;

    .line 220
    iput-object p9, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    .line 221
    return-void
.end method


# virtual methods
.method declared-synchronized addSession(ILjava/lang/String;)V
    .locals 7
    .parameter "session_id"
    .parameter "dev_name"

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    new-instance v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    iget-object v5, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderRootPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;-><init>(Lcom/broadcom/bt/service/map/MapProviderContext;Lcom/broadcom/bt/service/map/MapProviderContext;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getMAPMsgId(Ljava/lang/String;)J
    .locals 4
    .parameter "sProviderMsgId"

    .prologue
    .line 306
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 307
    .local v0, lMAPMsgId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getNextMessageID()J

    move-result-wide v0

    .line 311
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putEntry(JLjava/lang/String;)V

    .line 313
    :cond_0
    return-wide v0
.end method

.method getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .parameter "sProviderMsgId"
    .parameter "sProviderFolder"

    .prologue
    .line 290
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 291
    .local v0, lMAPMsgId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getNextMessageID()J

    move-result-wide v0

    .line 294
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putEntry(JLjava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putFolderEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_0
    return-wide v0
.end method

.method getMAPMsgIdFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "sProviderMsgId"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getFolderEntry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProviderMsgId(J)Ljava/lang/String;
    .locals 1
    .parameter "sMAPMsgId"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getValue(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .locals 3
    .parameter "session_id"

    .prologue
    .line 253
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    .line 255
    .local v1, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    iget v2, v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mSessionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    move-object v2, v1

    .line 259
    .end local v1           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :goto_1
    monitor-exit p0

    return-object v2

    .line 253
    .restart local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v1           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 253
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method isEqual(BLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "datasource_id"

    .prologue
    .line 228
    iget-byte v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEqual(Ljava/lang/String;B)Z
    .locals 1
    .parameter "provider_id"
    .parameter "provider_type"

    .prologue
    .line 233
    iget-byte v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "provider_id"
    .parameter "datasource_id"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeMAPMsgId(Ljava/lang/String;)V
    .locals 1
    .parameter "sProviderMsgId"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->removeEntry(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->removeFolderEntry(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method declared-synchronized removeSession(I)V
    .locals 3
    .parameter "session_id"

    .prologue
    .line 243
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    .line 245
    .local v1, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    iget v2, v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mSessionId:I

    if-ne v2, p1, :cond_1

    .line 246
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .end local v1           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_0
    monitor-exit p0

    return-void

    .line 243
    .restart local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method setMAPMsgFolder(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .parameter "sProviderMsgId"
    .parameter "sProviderFolder"

    .prologue
    .line 271
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 272
    .local v0, lMAPMsgId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->removeFolderEntry(Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putFolderEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_0
    return-wide v0

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->getNextMessageID()J

    move-result-wide v0

    .line 281
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putEntry(JLjava/lang/String;)V

    .line 282
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMessageIdMap:Lcom/broadcom/bt/service/map/MapMessageIdMap;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/MapMessageIdMap;->putFolderEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

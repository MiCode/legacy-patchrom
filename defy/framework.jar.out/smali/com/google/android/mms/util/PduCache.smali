.class public final Lcom/google/android/mms/util/PduCache;
.super Lcom/google/android/mms/util/AbstractCache;
.source "PduCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/mms/util/AbstractCache",
        "<",
        "Landroid/net/Uri;",
        "Lcom/google/android/mms/util/PduCacheEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MMS_ALL:I = 0x0

.field private static final MMS_ALL_ID:I = 0x1

.field private static final MMS_CONVERSATION:I = 0xa

.field private static final MMS_CONVERSATION_ID:I = 0xb

.field private static final MMS_DRAFTS:I = 0x6

.field private static final MMS_DRAFTS_ID:I = 0x7

.field private static final MMS_INBOX:I = 0x2

.field private static final MMS_INBOX_ID:I = 0x3

.field private static final MMS_OUTBOX:I = 0x8

.field private static final MMS_OUTBOX_ID:I = 0x9

.field private static final MMS_SENT:I = 0x4

.field private static final MMS_SENT_ID:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PduCache"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static sInstance:Lcom/google/android/mms/util/PduCache;


# instance fields
.field private final mMessageBoxes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mThreads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x2

    const-string v3, "mms"

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "#"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "inbox"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "inbox/#"

    invoke-virtual {v0, v3, v1, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "sent"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "sent/#"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "drafts"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "drafts/#"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "outbox"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v1, "outbox/#"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "mms-sms"

    const-string v2, "conversations/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/google/android/mms/util/AbstractCache;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/google/android/mms/util/PduCache;
    .locals 2

    .prologue
    const-class v0, Lcom/google/android/mms/util/PduCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/mms/util/PduCache;->sInstance:Lcom/google/android/mms/util/PduCache;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/mms/util/PduCache;

    invoke-direct {v1}, Lcom/google/android/mms/util/PduCache;-><init>()V

    sput-object v1, Lcom/google/android/mms/util/PduCache;->sInstance:Lcom/google/android/mms/util/PduCache;

    :cond_0
    sget-object v1, Lcom/google/android/mms/util/PduCache;->sInstance:Lcom/google/android/mms/util/PduCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private normalizeKey(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"

    .prologue
    sget-object v3, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .local v0, match:I
    const/4 v2, 0x0

    .local v2, normalizedKey:Landroid/net/Uri;
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :pswitch_1
    move-object v2, p1

    :goto_1
    move-object v3, v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .local v1, msgId:Ljava/lang/String;
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private purgeByMessageBox(Ljava/lang/Integer;)V
    .locals 5
    .parameter "msgBoxId"

    .prologue
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/google/android/mms/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .local v3, msgBox:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .local v2, key:Landroid/net/Uri;
    invoke-super {p0, v2}, Lcom/google/android/mms/util/AbstractCache;->purge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    .local v0, entry:Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v0}, Lcom/google/android/mms/util/PduCache;->removeFromThreads(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V

    goto :goto_0

    .end local v0           #entry:Lcom/google/android/mms/util/PduCacheEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Landroid/net/Uri;
    .end local v3           #msgBox:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    :cond_1
    return-void
.end method

.method private purgeByThreadId(J)V
    .locals 6
    .parameter "threadId"

    .prologue
    iget-object v4, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .local v3, thread:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .local v2, key:Landroid/net/Uri;
    invoke-super {p0, v2}, Lcom/google/android/mms/util/AbstractCache;->purge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    .local v0, entry:Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v0}, Lcom/google/android/mms/util/PduCache;->removeFromMessageBoxes(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V

    goto :goto_0

    .end local v0           #entry:Lcom/google/android/mms/util/PduCacheEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private purgeSingleEntry(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;
    .locals 2
    .parameter "key"

    .prologue
    invoke-super {p0, p1}, Lcom/google/android/mms/util/AbstractCache;->purge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    .local v0, entry:Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/google/android/mms/util/PduCache;->removeFromThreads(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/mms/util/PduCache;->removeFromMessageBoxes(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeFromMessageBoxes(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V
    .locals 3
    .parameter "key"
    .parameter "entry"

    .prologue
    iget-object v1, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/google/android/mms/util/PduCacheEntry;->getMessageBox()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .local v0, msgBox:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private removeFromThreads(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)V
    .locals 4
    .parameter "key"
    .parameter "entry"

    .prologue
    iget-object v1, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/google/android/mms/util/PduCacheEntry;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .local v0, thread:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/google/android/mms/util/PduCache;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    move-object v2, v4

    :goto_0
    monitor-exit p0

    return-object v2

    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/mms/util/PduCache;->purgeSingleEntry(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .local v1, msgId:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/mms/util/PduCache;->purgeSingleEntry(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    move-result-object v2

    goto :goto_0

    .end local v1           #msgId:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/mms/util/PduCache;->purgeAll()V

    move-object v2, v4

    goto :goto_0

    :pswitch_3
    sget-object v2, Lcom/google/android/mms/util/PduCache;->MATCH_TO_MSGBOX_ID_MAP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/google/android/mms/util/PduCache;->purgeByMessageBox(Ljava/lang/Integer;)V

    move-object v2, v4

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/mms/util/PduCache;->purgeByThreadId(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    goto :goto_0

    .end local v0           #match:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic purge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized purgeAll()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/mms/util/AbstractCache;->purgeAll()V

    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z
    .locals 9
    .parameter "uri"
    .parameter "entry"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/mms/util/PduCacheEntry;->getMessageBox()I

    move-result v2

    .local v2, msgBoxId:I
    iget-object v7, p0, Lcom/google/android/mms/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .local v1, msgBox:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    .end local v1           #msgBox:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .restart local v1       #msgBox:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    iget-object v7, p0, Lcom/google/android/mms/util/PduCache;->mMessageBoxes:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/mms/util/PduCacheEntry;->getThreadId()J

    move-result-wide v5

    .local v5, threadId:J
    iget-object v7, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .local v4, thread:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    if-nez v4, :cond_1

    new-instance v4, Ljava/util/HashSet;

    .end local v4           #thread:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .restart local v4       #thread:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    iget-object v7, p0, Lcom/google/android/mms/util/PduCache;->mThreads:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/mms/util/PduCache;->normalizeKey(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .local v0, finalKey:Landroid/net/Uri;
    invoke-super {p0, v0, p2}, Lcom/google/android/mms/util/AbstractCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .local v3, result:Z
    if-eqz v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return v3

    .end local v0           #finalKey:Landroid/net/Uri;
    .end local v1           #msgBox:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    .end local v2           #msgBoxId:I
    .end local v3           #result:Z
    .end local v4           #thread:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    .end local v5           #threadId:J
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Lcom/google/android/mms/util/PduCacheEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    move-result v0

    return v0
.end method

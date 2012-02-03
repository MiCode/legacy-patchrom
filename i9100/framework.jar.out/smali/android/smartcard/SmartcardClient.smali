.class public Landroid/smartcard/SmartcardClient;
.super Ljava/lang/Object;
.source "SmartcardClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;
    }
.end annotation


# static fields
.field private static final SMARTCARD_TAG:Ljava/lang/String; = "SmartcardApi"


# instance fields
.field private final callback:Landroid/smartcard/ISmartcardServiceCallback;

.field private final channels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/smartcard/CardChannel;",
            ">;"
        }
    .end annotation
.end field

.field private connection:Landroid/content/ServiceConnection;

.field private final connectionListener:Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;

.field private final context:Landroid/content/Context;

.field private volatile smartcardService:Landroid/smartcard/ISmartcardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;

    .line 74
    new-instance v0, Landroid/smartcard/SmartcardClient$1;

    invoke-direct {v0, p0}, Landroid/smartcard/SmartcardClient$1;-><init>(Landroid/smartcard/SmartcardClient;)V

    iput-object v0, p0, Landroid/smartcard/SmartcardClient;->callback:Landroid/smartcard/ISmartcardServiceCallback;

    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iput-object p1, p0, Landroid/smartcard/SmartcardClient;->context:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Landroid/smartcard/SmartcardClient;->connectionListener:Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;

    .line 99
    new-instance v0, Landroid/smartcard/SmartcardClient$2;

    invoke-direct {v0, p0}, Landroid/smartcard/SmartcardClient$2;-><init>(Landroid/smartcard/SmartcardClient;)V

    iput-object v0, p0, Landroid/smartcard/SmartcardClient;->connection:Landroid/content/ServiceConnection;

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/smartcard/ISmartcardService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/smartcard/SmartcardClient;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 127
    return-void
.end method

.method static synthetic access$002(Landroid/smartcard/SmartcardClient;Landroid/smartcard/ISmartcardService;)Landroid/smartcard/ISmartcardService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;

    return-object p1
.end method

.method static synthetic access$100(Landroid/smartcard/SmartcardClient;)Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/smartcard/SmartcardClient;->connectionListener:Landroid/smartcard/SmartcardClient$ISmartcardConnectionListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/smartcard/SmartcardClient;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method closeChannel(Landroid/smartcard/CardChannel;)V
    .locals 6
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/smartcard/CardException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v2, p0, Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;

    if-nez v2, :cond_0

    .line 298
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "smartcard service not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 300
    :cond_0
    new-instance v1, Landroid/smartcard/SmartcardError;

    invoke-direct {v1}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 301
    .local v1, error:Landroid/smartcard/SmartcardError;
    iget-object v2, p0, Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;

    monitor-enter v2

    .line 303
    :try_start_0
    iget-object v3, p0, Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;

    invoke-virtual {p1}, Landroid/smartcard/CardChannel;->getHandle()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v1}, Landroid/smartcard/ISmartcardService;->closeChannel(JLandroid/smartcard/SmartcardError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :try_start_1
    iget-object v3, p0, Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {p1}, Landroid/smartcard/CardChannel;->invalidate()V

    .line 310
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    invoke-virtual {v1}, Landroid/smartcard/SmartcardError;->throwException()V

    .line 312
    return-void

    .line 304
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 305
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Landroid/smartcard/CardException;

    invoke-direct {v3, v0}, Landroid/smartcard/CardException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_3
    iget-object v4, p0, Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {p1}, Landroid/smartcard/CardChannel;->invalidate()V

    .line 307
    throw v3

    .line 310
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public getReaders()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/smartcard/CardException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v3, p0, Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;

    if-nez v3, :cond_0

    .line 166
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "smartcard service not connected"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 168
    :cond_0
    new-instance v1, Landroid/smartcard/SmartcardError;

    invoke-direct {v1}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 171
    .local v1, error:Landroid/smartcard/SmartcardError;
    :try_start_0
    iget-object v3, p0, Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;

    invoke-interface {v3, v1}, Landroid/smartcard/ISmartcardService;->getReaders(Landroid/smartcard/SmartcardError;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 175
    .local v2, readers:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/smartcard/SmartcardError;->throwException()V

    .line 177
    return-object v2

    .line 172
    .end local v2           #readers:[Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 173
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Landroid/smartcard/CardException;

    invoke-direct {v3, v0}, Landroid/smartcard/CardException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isCardPresent(Ljava/lang/String;)Z
    .locals 5
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/smartcard/CardException;
        }
    .end annotation

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "reader must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 196
    :cond_0
    iget-object v3, p0, Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;

    if-nez v3, :cond_1

    .line 197
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "smartcard service not connected"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 199
    :cond_1
    new-instance v1, Landroid/smartcard/SmartcardError;

    invoke-direct {v1}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 202
    .local v1, error:Landroid/smartcard/SmartcardError;
    :try_start_0
    iget-object v3, p0, Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;

    invoke-interface {v3, p1, v1}, Landroid/smartcard/ISmartcardService;->isCardPresent(Ljava/lang/String;Landroid/smartcard/SmartcardError;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 206
    .local v2, isPresent:Z
    invoke-virtual {v1}, Landroid/smartcard/SmartcardError;->throwException()V

    .line 208
    return v2

    .line 203
    .end local v2           #isPresent:Z
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 204
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Landroid/smartcard/CardException;

    invoke-direct {v3, v0}, Landroid/smartcard/CardException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public openBasicChannel(Ljava/lang/String;)Landroid/smartcard/ICardChannel;
    .locals 8
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/smartcard/CardException;
        }
    .end annotation

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "reader must not be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 231
    :cond_0
    iget-object v5, p0, Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;

    if-nez v5, :cond_1

    .line 232
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "smartcard service not connected"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 234
    :cond_1
    iget-object v5, p0, Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;

    monitor-enter v5

    .line 235
    :try_start_0
    new-instance v2, Landroid/smartcard/SmartcardError;

    invoke-direct {v2}, Landroid/smartcard/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .local v2, error:Landroid/smartcard/SmartcardError;
    :try_start_1
    iget-object v6, p0, Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;

    iget-object v7, p0, Landroid/smartcard/SmartcardClient;->callback:Landroid/smartcard/ISmartcardServiceCallback;

    invoke-interface {v6, p1, v7, v2}, Landroid/smartcard/ISmartcardService;->openBasicChannel(Ljava/lang/String;Landroid/smartcard/ISmartcardServiceCallback;Landroid/smartcard/SmartcardError;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v3

    .line 242
    .local v3, hChannel:J
    :try_start_2
    invoke-virtual {v2}, Landroid/smartcard/SmartcardError;->throwException()V

    .line 244
    new-instance v0, Landroid/smartcard/CardChannel;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v3, v4, v6}, Landroid/smartcard/CardChannel;-><init>(Landroid/smartcard/SmartcardClient;JZ)V

    .line 245
    .local v0, basicChannel:Landroid/smartcard/CardChannel;
    iget-object v6, p0, Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    monitor-exit v5

    return-object v0

    .line 239
    .end local v0           #basicChannel:Landroid/smartcard/CardChannel;
    .end local v3           #hChannel:J
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 240
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Landroid/smartcard/CardException;

    invoke-direct {v6, v1}, Landroid/smartcard/CardException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 247
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #error:Landroid/smartcard/SmartcardError;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method public openLogicalChannel(Ljava/lang/String;[B)Landroid/smartcard/ICardChannel;
    .locals 8
    .parameter "reader"
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/smartcard/CardException;
        }
    .end annotation

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "reader must not be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 270
    :cond_0
    if-nez p2, :cond_1

    .line 271
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "AID must not be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 272
    :cond_1
    array-length v5, p2

    const/4 v6, 0x5

    if-lt v5, v6, :cond_2

    array-length v5, p2

    const/16 v6, 0x10

    if-le v5, v6, :cond_3

    .line 273
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "AID out of range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 274
    :cond_3
    iget-object v5, p0, Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;

    if-nez v5, :cond_4

    .line 275
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "smartcard service not connected"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    :cond_4
    iget-object v5, p0, Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;

    monitor-enter v5

    .line 278
    :try_start_0
    new-instance v1, Landroid/smartcard/SmartcardError;

    invoke-direct {v1}, Landroid/smartcard/SmartcardError;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .local v1, error:Landroid/smartcard/SmartcardError;
    :try_start_1
    iget-object v6, p0, Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;

    iget-object v7, p0, Landroid/smartcard/SmartcardClient;->callback:Landroid/smartcard/ISmartcardServiceCallback;

    invoke-interface {v6, p1, p2, v7, v1}, Landroid/smartcard/ISmartcardService;->openLogicalChannel(Ljava/lang/String;[BLandroid/smartcard/ISmartcardServiceCallback;Landroid/smartcard/SmartcardError;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    .line 285
    .local v2, hChannel:J
    :try_start_2
    invoke-virtual {v1}, Landroid/smartcard/SmartcardError;->throwException()V

    .line 287
    new-instance v4, Landroid/smartcard/CardChannel;

    const/4 v6, 0x1

    invoke-direct {v4, p0, v2, v3, v6}, Landroid/smartcard/CardChannel;-><init>(Landroid/smartcard/SmartcardClient;JZ)V

    .line 288
    .local v4, logicalChannel:Landroid/smartcard/CardChannel;
    iget-object v6, p0, Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    monitor-exit v5

    return-object v4

    .line 282
    .end local v2           #hChannel:J
    .end local v4           #logicalChannel:Landroid/smartcard/CardChannel;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 283
    .local v0, e:Ljava/lang/Exception;
    new-instance v6, Landroid/smartcard/CardException;

    invoke-direct {v6, v0}, Landroid/smartcard/CardException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 290
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #error:Landroid/smartcard/SmartcardError;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method public shutdown()V
    .locals 9

    .prologue
    .line 136
    iget-object v5, p0, Landroid/smartcard/SmartcardClient;->connection:Landroid/content/ServiceConnection;

    monitor-enter v5

    .line 137
    :try_start_0
    iget-object v6, p0, Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;

    if-eqz v6, :cond_1

    .line 138
    iget-object v6, p0, Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    :try_start_1
    iget-object v7, p0, Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;

    iget-object v8, p0, Landroid/smartcard/SmartcardClient;->channels:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    new-array v8, v8, [Landroid/smartcard/CardChannel;

    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/smartcard/CardChannel;

    .line 140
    .local v2, channelList:[Landroid/smartcard/CardChannel;
    move-object v0, v2

    .local v0, arr$:[Landroid/smartcard/CardChannel;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .local v1, channel:Landroid/smartcard/CardChannel;
    :try_start_2
    invoke-virtual {v1}, Landroid/smartcard/CardChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    .end local v1           #channel:Landroid/smartcard/CardChannel;
    :cond_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    .end local v0           #arr$:[Landroid/smartcard/CardChannel;
    .end local v2           #channelList:[Landroid/smartcard/CardChannel;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    :try_start_4
    iget-object v6, p0, Landroid/smartcard/SmartcardClient;->context:Landroid/content/Context;

    iget-object v7, p0, Landroid/smartcard/SmartcardClient;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    .line 154
    :goto_2
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 155
    return-void

    .line 146
    :catchall_0
    move-exception v7

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v7

    .line 154
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v6

    .line 143
    .restart local v0       #arr$:[Landroid/smartcard/CardChannel;
    .restart local v1       #channel:Landroid/smartcard/CardChannel;
    .restart local v2       #channelList:[Landroid/smartcard/CardChannel;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :catch_0
    move-exception v7

    goto :goto_1

    .line 150
    .end local v0           #arr$:[Landroid/smartcard/CardChannel;
    .end local v1           #channel:Landroid/smartcard/CardChannel;
    .end local v2           #channelList:[Landroid/smartcard/CardChannel;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method transmit(J[B)[B
    .locals 5
    .parameter "hChannel"
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/smartcard/CardException;
        }
    .end annotation

    .prologue
    .line 320
    if-nez p3, :cond_0

    .line 321
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "command must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 322
    :cond_0
    array-length v3, p3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 323
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "command must have at least 4 bytes"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 324
    :cond_1
    iget-object v3, p0, Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;

    if-nez v3, :cond_2

    .line 325
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "smartcard service not connected"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 327
    :cond_2
    new-instance v1, Landroid/smartcard/SmartcardError;

    invoke-direct {v1}, Landroid/smartcard/SmartcardError;-><init>()V

    .line 330
    .local v1, error:Landroid/smartcard/SmartcardError;
    :try_start_0
    iget-object v3, p0, Landroid/smartcard/SmartcardClient;->smartcardService:Landroid/smartcard/ISmartcardService;

    invoke-interface {v3, p1, p2, p3, v1}, Landroid/smartcard/ISmartcardService;->transmit(J[BLandroid/smartcard/SmartcardError;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 334
    .local v2, response:[B
    invoke-virtual {v1}, Landroid/smartcard/SmartcardError;->throwException()V

    .line 336
    return-object v2

    .line 331
    .end local v2           #response:[B
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 332
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Landroid/smartcard/CardException;

    invoke-direct {v3, v0}, Landroid/smartcard/CardException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

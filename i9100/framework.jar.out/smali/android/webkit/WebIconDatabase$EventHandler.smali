.class Landroid/webkit/WebIconDatabase$EventHandler;
.super Landroid/os/Handler;
.source "WebIconDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebIconDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebIconDatabase$EventHandler$IconResult;
    }
.end annotation


# static fields
.field static final BULK_REQUEST_ICON:I = 0x6

.field static final CLOSE:I = 0x1

.field private static final ICON_RESULT:I = 0xa

.field static final OPEN:I = 0x0

.field static final RELEASE_ICON:I = 0x5

.field static final REMOVE_ALL:I = 0x2

.field static final REQUEST_ICON:I = 0x3

.field static final RETAIN_ICON:I = 0x4


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mMessages:Ljava/util/Vector;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebIconDatabase$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/webkit/WebIconDatabase$EventHandler;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/WebIconDatabase$EventHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/webkit/WebIconDatabase$EventHandler;->hasHandler()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/webkit/WebIconDatabase$EventHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/webkit/WebIconDatabase$EventHandler;->createHandler()V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/WebIconDatabase$EventHandler;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebIconDatabase$EventHandler;->requestIconAndSendResult(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/webkit/WebIconDatabase$EventHandler;->bulkRequestIcons(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/webkit/WebIconDatabase$EventHandler;->postMessage(Landroid/os/Message;)V

    return-void
.end method

.method private bulkRequestIcons(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 149
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/util/HashMap;

    .line 150
    .local v9, map:Ljava/util/HashMap;
    const-string v1, "listener"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebIconDatabase$IconListener;

    .line 151
    .local v8, listener:Landroid/webkit/WebIconDatabase$IconListener;
    const-string v1, "contentResolver"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 152
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v1, "where"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 156
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "url"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 163
    .local v10, url:Ljava/lang/String;
    invoke-direct {p0, v10, v8}, Landroid/webkit/WebIconDatabase$EventHandler;->requestIconAndSendResult(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 169
    .end local v10           #url:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_2
    return-void

    .line 166
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 167
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v1, "WebIconDatabase"

    const-string v2, "BulkRequestIcons"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    if-eqz v6, :cond_2

    goto :goto_0

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private declared-synchronized createHandler()V
    .locals 4

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 90
    new-instance v1, Landroid/webkit/WebIconDatabase$EventHandler$1;

    invoke-direct {v1, p0}, Landroid/webkit/WebIconDatabase$EventHandler$1;-><init>(Landroid/webkit/WebIconDatabase$EventHandler;)V

    iput-object v1, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mHandler:Landroid/os/Handler;

    .line 129
    iget-object v1, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mMessages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    .local v0, size:I
    :goto_0
    if-lez v0, :cond_0

    .line 130
    iget-object v2, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mMessages:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 132
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mMessages:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v0           #size:I
    :cond_1
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized hasHandler()Z
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized postMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mMessages:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebIconDatabase$EventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private requestIconAndSendResult(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .locals 3
    .parameter "url"
    .parameter "listener"

    .prologue
    .line 174
    #calls: Landroid/webkit/WebIconDatabase;->nativeIconForPageUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/webkit/WebIconDatabase;->access$800(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, icon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 176
    const/16 v1, 0xa

    new-instance v2, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;

    invoke-direct {v2, p0, p1, v0, p2}, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;-><init>(Landroid/webkit/WebIconDatabase$EventHandler;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/webkit/WebIconDatabase$IconListener;)V

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebIconDatabase$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebIconDatabase$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    .end local p0
    :goto_0
    return-void

    .line 82
    .restart local p0
    :pswitch_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;

    invoke-virtual {p0}, Landroid/webkit/WebIconDatabase$EventHandler$IconResult;->dispatch()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

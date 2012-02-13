.class public final Landroid/webkit/WebIconDatabase;
.super Ljava/lang/Object;
.source "WebIconDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebIconDatabase$1;,
        Landroid/webkit/WebIconDatabase$IconListener;,
        Landroid/webkit/WebIconDatabase$EventHandler;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WebIconDatabase"

.field private static sIconDatabase:Landroid/webkit/WebIconDatabase;


# instance fields
.field private final mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/webkit/WebIconDatabase$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/webkit/WebIconDatabase$EventHandler;-><init>(Landroid/webkit/WebIconDatabase$1;)V

    iput-object v0, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-static {p0}, Landroid/webkit/WebIconDatabase;->nativeOpen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/webkit/WebIconDatabase;->nativeClose()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/webkit/WebIconDatabase;->nativeRemoveAllIcons()V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-static {p0}, Landroid/webkit/WebIconDatabase;->nativeRetainIconForPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-static {p0}, Landroid/webkit/WebIconDatabase;->nativeReleaseIconForPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-static {p0}, Landroid/webkit/WebIconDatabase;->nativeIconForPageUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Landroid/webkit/WebIconDatabase;
    .locals 1

    .prologue
    sget-object v0, Landroid/webkit/WebIconDatabase;->sIconDatabase:Landroid/webkit/WebIconDatabase;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/WebIconDatabase;

    invoke-direct {v0}, Landroid/webkit/WebIconDatabase;-><init>()V

    sput-object v0, Landroid/webkit/WebIconDatabase;->sIconDatabase:Landroid/webkit/WebIconDatabase;

    :cond_0
    sget-object v0, Landroid/webkit/WebIconDatabase;->sIconDatabase:Landroid/webkit/WebIconDatabase;

    return-object v0
.end method

.method private static native nativeClose()V
.end method

.method private static native nativeIconForPageUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeOpen(Ljava/lang/String;)V
.end method

.method private static native nativeReleaseIconForPageUrl(Ljava/lang/String;)V
.end method

.method private static native nativeRemoveAllIcons()V
.end method

.method private static native nativeRetainIconForPageUrl(Ljava/lang/String;)V
.end method


# virtual methods
.method public bulkRequestIconForPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .locals 4
    .parameter "cr"
    .parameter "where"
    .parameter "listener"

    .prologue
    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    #calls: Landroid/webkit/WebIconDatabase$EventHandler;->hasHandler()Z
    invoke-static {v2}, Landroid/webkit/WebIconDatabase$EventHandler;->access$1000(Landroid/webkit/WebIconDatabase$EventHandler;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "contentResolver"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "where"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "listener"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    #calls: Landroid/webkit/WebIconDatabase$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v2, v1}, Landroid/webkit/WebIconDatabase$EventHandler;->access$900(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebIconDatabase$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabase$EventHandler;->access$900(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    return-void
.end method

.method createHandler()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    #calls: Landroid/webkit/WebIconDatabase$EventHandler;->createHandler()V
    invoke-static {v0}, Landroid/webkit/WebIconDatabase$EventHandler;->access$1100(Landroid/webkit/WebIconDatabase$EventHandler;)V

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    if-eqz p1, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, db:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-object v1, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebIconDatabase$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebIconDatabase$EventHandler;->access$900(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    .end local v0           #db:Ljava/io/File;
    :cond_1
    return-void
.end method

.method public releaseIconForPageUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebIconDatabase$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabase$EventHandler;->access$900(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public removeAllIcons()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebIconDatabase$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabase$EventHandler;->access$900(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    return-void
.end method

.method public requestIconForPageUrl(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .locals 3
    .parameter "url"
    .parameter "listener"

    .prologue
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    #calls: Landroid/webkit/WebIconDatabase$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebIconDatabase$EventHandler;->access$900(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public retainIconForPageUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebIconDatabase;->mEventHandler:Landroid/webkit/WebIconDatabase$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebIconDatabase$EventHandler;->postMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebIconDatabase$EventHandler;->access$900(Landroid/webkit/WebIconDatabase$EventHandler;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

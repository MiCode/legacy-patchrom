.class public abstract Landroid/content/ContentProvider;
.super Ljava/lang/Object;
.source "ContentProvider.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProvider$Transport;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExported:Z

.field private mMyUid:I

.field private mPathPermissions:[Landroid/content/pm/PathPermission;

.field private mReadPermission:Ljava/lang/String;

.field private mTransport:Landroid/content/ContentProvider$Transport;

.field private mWritePermission:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .locals 1
    .parameter "context"
    .parameter "readPermission"
    .parameter "writePermission"
    .parameter "pathPermissions"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 129
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 133
    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Landroid/content/ContentProvider;->mMyUid:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/ContentProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mExported:Z

    return v0
.end method

.method public static coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;
    .locals 1
    .parameter "abstractInterface"

    .prologue
    .line 150
    instance-of v0, p0, Landroid/content/ContentProvider$Transport;

    if-eqz v0, :cond_0

    .line 151
    check-cast p0, Landroid/content/ContentProvider$Transport;

    .end local p0
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 877
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 878
    .local v1, numOperations:I
    new-array v2, v1, [Landroid/content/ContentProviderResult;

    .line 879
    .local v2, results:[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 880
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    invoke-virtual {v3, p0, v2, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v3

    aput-object v3, v2, v0

    .line 879
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 882
    :cond_0
    return-object v2
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .parameter "context"
    .parameter "info"

    .prologue
    .line 845
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 846
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 847
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Landroid/content/ContentProvider;->mMyUid:I

    .line 848
    if-eqz p2, :cond_0

    .line 849
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setReadPermission(Ljava/lang/String;)V

    .line 850
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setWritePermission(Ljava/lang/String;)V

    .line 851
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setPathPermissions([Landroid/content/pm/PathPermission;)V

    .line 852
    iget-boolean v0, p2, Landroid/content/pm/ComponentInfo;->exported:Z

    iput-boolean v0, p0, Landroid/content/ContentProvider;->mExported:Z

    .line 854
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCreate()Z

    .line 856
    :cond_1
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 622
    array-length v1, p2

    .line 623
    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 624
    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_0
    return v1
.end method

.method public bulkInsert_GetUris(Landroid/net/Uri;[Landroid/content/ContentValues;[Landroid/net/Uri;)I
    .locals 5
    .parameter "uri"
    .parameter "values"
    .parameter "ret_uris"

    .prologue
    .line 635
    array-length v2, p2

    .line 636
    .local v2, numValues:I
    array-length v1, p3

    .line 638
    .local v1, numUris:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 639
    aget-object v4, p2, v0

    invoke-virtual {p0, p1, v4}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 640
    .local v3, res_uri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    if-ge v0, v1, :cond_0

    .line 641
    aput-object v3, p3, v0

    .line 638
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    .end local v3           #res_uri:Landroid/net/Uri;
    :cond_1
    return v2
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "method"
    .parameter "request"
    .parameter "args"

    .prologue
    .line 896
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIContentProvider()Landroid/content/IContentProvider;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    return-object v0
.end method

.method public final getPathPermissions()[Landroid/content/pm/PathPermission;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    return-object v0
.end method

.method public final getReadPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public final getWritePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    return-object v0
.end method

.method public abstract insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected isTemporary()Z
    .locals 1

    .prologue
    .line 819
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 503
    return-void
.end method

.method public abstract onCreate()Z
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 768
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 769
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 724
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No files supported by provider at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 11
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 788
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 789
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v7, v0

    .line 790
    .local v7, count:I
    :goto_0
    const/4 v0, 0x1

    if-eq v7, v0, :cond_3

    .line 793
    if-eqz v6, :cond_0

    .line 794
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 796
    :cond_0
    if-nez v7, :cond_2

    .line 797
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    .end local v7           #count:I
    :cond_1
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    .line 799
    .restart local v7       #count:I
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple items at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 803
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 804
    .local v8, i:I
    if-ltz v8, :cond_4

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 805
    .local v10, path:Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 806
    if-nez v10, :cond_5

    .line 807
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Column _data not found."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    .end local v10           #path:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_1

    .line 810
    .restart local v10       #path:Ljava/lang/String;
    :cond_5
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->modeToMode(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v9

    .line 811
    .local v9, modeBits:I
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected final setPathPermissions([Landroid/content/pm/PathPermission;)V
    .locals 0
    .parameter "permissions"

    .prologue
    .line 451
    iput-object p1, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 452
    return-void
.end method

.method protected final setReadPermission(Ljava/lang/String;)V
    .locals 0
    .parameter "permission"

    .prologue
    .line 407
    iput-object p1, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 408
    return-void
.end method

.method protected final setWritePermission(Ljava/lang/String;)V
    .locals 0
    .parameter "permission"

    .prologue
    .line 429
    iput-object p1, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public abstract update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.class public final Landroid/provider/SyncStateContract$Helpers;
.super Ljava/lang/Object;
.source "SyncStateContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SyncStateContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Helpers"
.end annotation


# static fields
.field private static final DATA_PROJECTION:[Ljava/lang/String; = null

.field private static final SELECT_BY_ACCOUNT:Ljava/lang/String; = "account_name=? AND account_type=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/SyncStateContract$Helpers;->DATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B
    .locals 7
    .parameter "provider"
    .parameter "uri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 75
    sget-object v2, Landroid/provider/SyncStateContract$Helpers;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_name=? AND account_type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v1, v4, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    :goto_0
    return-object v0

    .line 82
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 84
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getWithUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)Landroid/util/Pair;
    .locals 11
    .parameter "provider"
    .parameter "uri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/net/Uri;",
            "Landroid/accounts/Account;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 124
    sget-object v2, Landroid/provider/SyncStateContract$Helpers;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_name=? AND account_type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v4, v0

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v10

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 127
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 129
    .local v8, rowId:J
    const-string v0, "data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 130
    .local v6, blob:[B
    invoke-static {p1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 133
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 135
    .end local v6           #blob:[B
    .end local v8           #rowId:J
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 135
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static insert(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/net/Uri;
    .locals 3
    .parameter "provider"
    .parameter "uri"
    .parameter "account"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 110
    const-string v1, "account_name"

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "account_type"

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static newSetOperation(Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/content/ContentProviderOperation;
    .locals 4
    .parameter "uri"
    .parameter "account"
    .parameter "data"

    .prologue
    .line 149
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 150
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 151
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "account_name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "account_type"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method public static newUpdateOperation(Landroid/net/Uri;[B)Landroid/content/ContentProviderOperation;
    .locals 2
    .parameter "uri"
    .parameter "data"

    .prologue
    .line 168
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 170
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method public static set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V
    .locals 3
    .parameter "provider"
    .parameter "uri"
    .parameter "account"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 101
    const-string v1, "account_name"

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "account_type"

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 104
    return-void
.end method

.method public static update(Landroid/content/ContentProviderClient;Landroid/net/Uri;[B)V
    .locals 3
    .parameter "provider"
    .parameter "uri"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 117
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 119
    invoke-virtual {p0, p1, v0, v2, v2}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 120
    return-void
.end method

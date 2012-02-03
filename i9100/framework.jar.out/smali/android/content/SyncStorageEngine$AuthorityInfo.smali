.class public Landroid/content/SyncStorageEngine$AuthorityInfo;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorityInfo"
.end annotation


# instance fields
.field final account:Landroid/accounts/Account;

.field final authority:Ljava/lang/String;

.field backoffDelay:J

.field backoffTime:J

.field delayUntil:J

.field enabled:Z

.field final ident:I

.field final periodicSyncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/os/Bundle;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field syncable:I


# direct methods
.method constructor <init>(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 4
    .parameter "account"
    .parameter "authority"
    .parameter "ident"

    .prologue
    const-wide/16 v1, -0x1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    .line 187
    iput-object p2, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    .line 188
    iput p3, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 191
    iput-wide v1, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 192
    iput-wide v1, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    .line 194
    iget-object v0, p0, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-wide/32 v2, 0x15180

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

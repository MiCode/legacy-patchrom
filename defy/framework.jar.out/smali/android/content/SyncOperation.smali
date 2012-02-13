.class public Landroid/content/SyncOperation;
.super Ljava/lang/Object;
.source "SyncOperation.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final account:Landroid/accounts/Account;

.field public authority:Ljava/lang/String;

.field public earliestRunTime:J

.field public expedited:Z

.field public extras:Landroid/os/Bundle;

.field public final key:Ljava/lang/String;

.field public pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

.field public syncSource:I


# direct methods
.method public constructor <init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;J)V
    .locals 4
    .parameter "account"
    .parameter "source"
    .parameter "authority"
    .parameter "extras"
    .parameter "delayInMs"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iput p2, p0, Landroid/content/SyncOperation;->syncSource:I

    iput-object p3, p0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v2, p0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v2, "upload"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    const-string v2, "force"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    const-string v2, "ignore_settings"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    const-string v2, "ignore_backoff"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    const-string v2, "do_not_retry"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    const-string v2, "discard_deletions"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    const-string v2, "expedited"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    const-string v2, "deletions_override"

    invoke-direct {p0, v2}, Landroid/content/SyncOperation;->removeFalseExtra(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, now:J
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/SyncOperation;->expedited:Z

    iput-wide v0, p0, Landroid/content/SyncOperation;->earliestRunTime:J

    :goto_0
    invoke-direct {p0}, Landroid/content/SyncOperation;->toKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncOperation;->key:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/content/SyncOperation;->expedited:Z

    add-long v2, v0, p5

    iput-wide v2, p0, Landroid/content/SyncOperation;->earliestRunTime:J

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/SyncOperation;)V
    .locals 2
    .parameter "other"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iput-object v0, p0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v0, p1, Landroid/content/SyncOperation;->syncSource:I

    iput v0, p0, Landroid/content/SyncOperation;->syncSource:I

    iget-object v0, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-boolean v0, p1, Landroid/content/SyncOperation;->expedited:Z

    iput-boolean v0, p0, Landroid/content/SyncOperation;->expedited:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncOperation;->earliestRunTime:J

    invoke-direct {p0}, Landroid/content/SyncOperation;->toKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncOperation;->key:Ljava/lang/String;

    return-void
.end method

.method public static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;Z)V
    .locals 4
    .parameter "bundle"
    .parameter "sb"
    .parameter "asKey"

    .prologue
    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, key:Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v2, "initialize"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v1           #key:Ljava/lang/String;
    :cond_2
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private removeFalseExtra(Ljava/lang/String;)V
    .locals 2
    .parameter "extraName"

    .prologue
    iget-object v0, p0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private toKey()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " account {name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6
    .parameter "o"

    .prologue
    move-object v0, p1

    check-cast v0, Landroid/content/SyncOperation;

    move-object v1, v0

    .local v1, other:Landroid/content/SyncOperation;
    iget-wide v2, p0, Landroid/content/SyncOperation;->earliestRunTime:J

    iget-wide v4, v1, Landroid/content/SyncOperation;->earliestRunTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-wide v2, p0, Landroid/content/SyncOperation;->earliestRunTime:J

    iget-wide v4, v1, Landroid/content/SyncOperation;->earliestRunTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;Z)V

    const-string v1, " syncSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/SyncOperation;->syncSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/content/SyncOperation;->earliestRunTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " expedited: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/SyncOperation;->expedited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public Landroid/content/SyncStorageEngine$PendingOperation;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingOperation"
.end annotation


# instance fields
.field final account:Landroid/accounts/Account;

.field final authority:Ljava/lang/String;

.field authorityId:I

.field final expedited:Z

.field final extras:Landroid/os/Bundle;

.field flatExtras:[B

.field final syncSource:I


# direct methods
.method constructor <init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "account"
    .parameter "source"
    .parameter "authority"
    .parameter "extras"
    .parameter "expedited"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    .line 147
    iput p2, p0, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    .line 148
    iput-object p3, p0, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    .line 149
    if-eqz p4, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    .line 150
    iput-boolean p5, p0, Landroid/content/SyncStorageEngine$PendingOperation;->expedited:Z

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 152
    return-void

    :cond_0
    move-object v0, p4

    .line 149
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/SyncStorageEngine$PendingOperation;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iput-object v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    .line 156
    iget v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    iput v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    .line 157
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    .line 159
    iget v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    iput v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 160
    iget-boolean v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->expedited:Z

    iput-boolean v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->expedited:Z

    .line 161
    return-void
.end method

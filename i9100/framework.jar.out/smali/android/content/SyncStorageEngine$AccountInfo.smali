.class Landroid/content/SyncStorageEngine$AccountInfo;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountInfo"
.end annotation


# instance fields
.field final account:Landroid/accounts/Account;

.field final authorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    .line 170
    iput-object p1, p0, Landroid/content/SyncStorageEngine$AccountInfo;->account:Landroid/accounts/Account;

    .line 171
    return-void
.end method

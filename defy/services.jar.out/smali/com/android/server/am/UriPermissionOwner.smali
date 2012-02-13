.class Lcom/android/server/am/UriPermissionOwner;
.super Ljava/lang/Object;
.source "UriPermissionOwner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UriPermissionOwner$ExternalToken;
    }
.end annotation


# instance fields
.field externalToken:Landroid/os/Binder;

.field final owner:Ljava/lang/Object;

.field readUriPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field final service:Lcom/android/server/am/ActivityManagerService;

.field writeUriPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/UriPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V
    .locals 0
    .parameter "_service"
    .parameter "_owner"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/UriPermissionOwner;->owner:Ljava/lang/Object;

    return-void
.end method

.method static fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/am/UriPermissionOwner;
    .locals 1
    .parameter "token"

    .prologue
    instance-of v0, p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    .end local p0
    invoke-virtual {p0}, Lcom/android/server/am/UriPermissionOwner$ExternalToken;->getOwner()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addReadPermission(Lcom/android/server/am/UriPermission;)V
    .locals 1
    .parameter "perm"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWritePermission(Lcom/android/server/am/UriPermission;)V
    .locals 1
    .parameter "perm"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getExternalTokenLocked()Landroid/os/Binder;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    invoke-direct {v0, p0}, Lcom/android/server/am/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/am/UriPermissionOwner;)V

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    return-object v0
.end method

.method public removeReadPermission(Lcom/android/server/am/UriPermission;)V
    .locals 1
    .parameter "perm"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    :cond_0
    return-void
.end method

.method removeUriPermissionLocked(Landroid/net/Uri;I)V
    .locals 4
    .parameter "uri"
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermission;

    .local v1, perm:Lcom/android/server/am/UriPermission;
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget v2, v1, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    iget v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v1           #perm:Lcom/android/server/am/UriPermission;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_3

    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_3
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermission;

    .restart local v1       #perm:Lcom/android/server/am/UriPermission;
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/server/am/UriPermission;->writeOwners:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/server/am/UriPermission;->writeOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_5

    iget v2, v1, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    iget v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .end local v1           #perm:Lcom/android/server/am/UriPermission;
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_7

    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_7
    return-void
.end method

.method removeUriPermissionsLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked(I)V

    return-void
.end method

.method removeUriPermissionsLocked(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermission;

    .local v1, perm:Lcom/android/server/am/UriPermission;
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    goto :goto_0

    .end local v1           #perm:Lcom/android/server/am/UriPermission;
    :cond_1
    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermission;

    .restart local v1       #perm:Lcom/android/server/am/UriPermission;
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->writeOwners:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/server/am/UriPermission;->writeOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_3

    iget v2, v1, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    iget v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    goto :goto_1

    .end local v1           #perm:Lcom/android/server/am/UriPermission;
    :cond_4
    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    .end local v0           #i$:Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public removeWritePermission(Lcom/android/server/am/UriPermission;)V
    .locals 1
    .parameter "perm"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->owner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

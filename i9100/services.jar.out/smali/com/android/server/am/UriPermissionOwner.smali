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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    .line 44
    iput-object p2, p0, Lcom/android/server/am/UriPermissionOwner;->owner:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method static fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/am/UriPermissionOwner;
    .locals 1
    .parameter "token"

    .prologue
    .line 55
    instance-of v0, p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    if-eqz v0, :cond_0

    .line 56
    check-cast p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    .end local p0
    invoke-virtual {p0}, Lcom/android/server/am/UriPermissionOwner$ExternalToken;->getOwner()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v0

    .line 58
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
    .line 135
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public addWritePermission(Lcom/android/server/am/UriPermission;)V
    .locals 1
    .parameter "perm"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method getExternalTokenLocked()Landroid/os/Binder;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    invoke-direct {v0, p0}, Lcom/android/server/am/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/am/UriPermissionOwner;)V

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    return-object v0
.end method

.method public removeReadPermission(Lcom/android/server/am/UriPermission;)V
    .locals 1
    .parameter "perm"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    .line 153
    :cond_0
    return-void
.end method

.method removeUriPermissionLocked(Landroid/net/Uri;I)V
    .locals 4
    .parameter "uri"
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    .line 94
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    if-eqz v2, :cond_3

    .line 96
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermission;

    .line 99
    .local v1, perm:Lcom/android/server/am/UriPermission;
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 101
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget v2, v1, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 103
    iget v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 104
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    .line 106
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 109
    .end local v1           #perm:Lcom/android/server/am/UriPermission;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 110
    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    .line 113
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_3
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    if-eqz v2, :cond_7

    .line 115
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 116
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermission;

    .line 118
    .restart local v1       #perm:Lcom/android/server/am/UriPermission;
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->writeOwners:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 120
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->writeOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_5

    iget v2, v1, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    .line 122
    iget v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 123
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    .line 125
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 128
    .end local v1           #perm:Lcom/android/server/am/UriPermission;
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 129
    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    .line 132
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/UriPermission;>;"
    :cond_7
    return-void
.end method

.method removeUriPermissionsLocked()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked(I)V

    .line 64
    return-void
.end method

.method removeUriPermissionsLocked(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    .line 67
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    if-eqz v2, :cond_2

    .line 69
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

    .line 70
    .local v1, perm:Lcom/android/server/am/UriPermission;
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 71
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 73
    iget v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 74
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    goto :goto_0

    .line 77
    .end local v1           #perm:Lcom/android/server/am/UriPermission;
    :cond_1
    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->readUriPermissions:Ljava/util/HashSet;

    .line 79
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    if-eqz v2, :cond_5

    .line 81
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

    .line 82
    .restart local v1       #perm:Lcom/android/server/am/UriPermission;
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->writeOwners:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 83
    iget-object v2, v1, Lcom/android/server/am/UriPermission;->writeOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_3

    iget v2, v1, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    .line 85
    iget v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v1, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 86
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    goto :goto_1

    .line 89
    .end local v1           #perm:Lcom/android/server/am/UriPermission;
    :cond_4
    iput-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    .line 91
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public removeWritePermission(Lcom/android/server/am/UriPermission;)V
    .locals 1
    .parameter "perm"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->writeUriPermissions:Ljava/util/HashSet;

    .line 160
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->owner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

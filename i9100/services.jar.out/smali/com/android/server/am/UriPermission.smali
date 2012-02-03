.class Lcom/android/server/am/UriPermission;
.super Ljava/lang/Object;
.source "UriPermission.java"


# instance fields
.field globalModeFlags:I

.field modeFlags:I

.field final readOwners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field stringName:Ljava/lang/String;

.field final uid:I

.field final uri:Landroid/net/Uri;

.field final writeOwners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/net/Uri;)V
    .locals 1
    .parameter "_uid"
    .parameter "_uri"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 37
    iput v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->writeOwners:Ljava/util/HashSet;

    .line 44
    iput p1, p0, Lcom/android/server/am/UriPermission;->uid:I

    .line 45
    iput-object p2, p0, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    .line 46
    return-void
.end method


# virtual methods
.method clearModes(I)V
    .locals 3
    .parameter "modeFlagsToClear"

    .prologue
    .line 49
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    .line 50
    iget v2, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 51
    iget v2, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 52
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermissionOwner;

    .line 54
    .local v1, r:Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {v1, p0}, Lcom/android/server/am/UriPermissionOwner;->removeReadPermission(Lcom/android/server/am/UriPermission;)V

    goto :goto_0

    .line 56
    .end local v1           #r:Lcom/android/server/am/UriPermissionOwner;
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 59
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3

    .line 60
    iget v2, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 61
    iget v2, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 62
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 63
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->writeOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermissionOwner;

    .line 64
    .restart local v1       #r:Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {v1, p0}, Lcom/android/server/am/UriPermissionOwner;->removeWritePermission(Lcom/android/server/am/UriPermission;)V

    goto :goto_1

    .line 66
    .end local v1           #r:Lcom/android/server/am/UriPermissionOwner;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 69
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .parameter "pw"
    .parameter "prefix"

    .prologue
    const-string v3, "  * "

    .line 85
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "modeFlags=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    iget v2, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    const-string v2, " uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/UriPermission;->uid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 88
    const-string v2, " globalModeFlags=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    iget v2, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "readOwners:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->readOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermissionOwner;

    .line 93
    .local v1, owner:Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  * "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #owner:Lcom/android/server/am/UriPermissionOwner;
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->writeOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "writeOwners:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->writeOwners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UriPermissionOwner;

    .line 99
    .restart local v1       #owner:Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  * "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 102
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #owner:Lcom/android/server/am/UriPermissionOwner;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    .line 81
    :goto_0
    return-object v1

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 76
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "UriPermission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    goto :goto_0
.end method

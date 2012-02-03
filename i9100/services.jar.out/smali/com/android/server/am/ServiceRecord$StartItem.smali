.class Lcom/android/server/am/ServiceRecord$StartItem;
.super Ljava/lang/Object;
.source "ServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ServiceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartItem"
.end annotation


# instance fields
.field deliveredTime:J

.field deliveryCount:I

.field doneExecutingCount:I

.field final id:I

.field final intent:Landroid/content/Intent;

.field final sr:Lcom/android/server/am/ServiceRecord;

.field stringName:Ljava/lang/String;

.field final targetPermissionUid:I

.field uriPermissions:Lcom/android/server/am/UriPermissionOwner;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;ILandroid/content/Intent;I)V
    .locals 0
    .parameter "_sr"
    .parameter "_id"
    .parameter "_intent"
    .parameter "_targetPermissionUid"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    .line 113
    iput p2, p0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    .line 114
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    .line 115
    iput p4, p0, Lcom/android/server/am/ServiceRecord$StartItem;->targetPermissionUid:I

    .line 116
    return-void
.end method


# virtual methods
.method getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/android/server/am/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/UriPermissionOwner;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    return-object v0
.end method

.method removeUriPermissionsLocked()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    invoke-virtual {v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/am/UriPermissionOwner;

    .line 130
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->stringName:Ljava/lang/String;

    .line 143
    :goto_0
    return-object v1

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 137
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "ServiceRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$StartItem;->sr:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " StartItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord$StartItem;->stringName:Ljava/lang/String;

    goto :goto_0
.end method

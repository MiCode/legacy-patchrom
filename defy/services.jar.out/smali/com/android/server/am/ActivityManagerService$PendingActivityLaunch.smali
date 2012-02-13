.class Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingActivityLaunch"
.end annotation


# instance fields
.field grantedMode:I

.field grantedUriPermissions:[Landroid/net/Uri;

.field onlyIfNeeded:Z

.field r:Lcom/android/server/am/ActivityRecord;

.field sourceRecord:Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

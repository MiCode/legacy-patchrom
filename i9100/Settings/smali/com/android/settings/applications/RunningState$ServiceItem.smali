.class Lcom/android/settings/applications/RunningState$ServiceItem;
.super Lcom/android/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceItem"
.end annotation


# instance fields
.field mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

.field mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

.field mServiceInfo:Landroid/content/pm/ServiceInfo;

.field mShownAsStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/RunningState$BaseItem;-><init>(Z)V

    .line 233
    return-void
.end method

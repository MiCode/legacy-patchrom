.class Lcom/android/settings/applications/RunningState$BaseItem;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseItem"
.end annotation


# instance fields
.field mActiveSince:J

.field mBackground:Z

.field mCurSeq:I

.field mCurSizeStr:Ljava/lang/String;

.field mDescription:Ljava/lang/String;

.field mDisplayLabel:Ljava/lang/CharSequence;

.field final mIsProcess:Z

.field mLabel:Ljava/lang/String;

.field mNeedDivider:Z

.field mPackageInfo:Landroid/content/pm/PackageItemInfo;

.field mSize:J

.field mSizeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "isProcess"

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mIsProcess:Z

    .line 221
    return-void
.end method

.class Lcom/android/server/am/ActivityResult;
.super Landroid/app/ResultInfo;
.source "ActivityResult.java"


# instance fields
.field final mFrom:Lcom/android/server/am/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 0
    .parameter "from"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 31
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    .line 32
    iput-object p1, p0, Lcom/android/server/am/ActivityResult;->mFrom:Lcom/android/server/am/ActivityRecord;

    .line 33
    return-void
.end method

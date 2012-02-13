.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnChangeObserver;
.super Landroid/database/ContentObserver;
.source "GsmDataConnectionTrackerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->access$000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

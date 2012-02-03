.class Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;
.super Landroid/database/ContentObserver;
.source "GsmMultiDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    .line 112
    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 113
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method

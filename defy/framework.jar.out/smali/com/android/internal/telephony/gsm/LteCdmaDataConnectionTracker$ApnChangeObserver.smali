.class Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnChangeObserver;
.super Landroid/database/ContentObserver;
.source "LteCdmaDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->access$000(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

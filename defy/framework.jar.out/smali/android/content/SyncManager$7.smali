.class Landroid/content/SyncManager$7;
.super Landroid/content/ISyncStatusObserver$Stub;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/content/SyncManager$7;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Landroid/content/ISyncStatusObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1
    .parameter "which"

    .prologue
    iget-object v0, p0, Landroid/content/SyncManager$7;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->sendCheckAlarmsMessage()V
    invoke-static {v0}, Landroid/content/SyncManager;->access$100(Landroid/content/SyncManager;)V

    return-void
.end method

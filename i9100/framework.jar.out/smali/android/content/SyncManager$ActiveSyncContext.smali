.class Landroid/content/SyncManager$ActiveSyncContext;
.super Landroid/content/ISyncContext$Stub;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveSyncContext"
.end annotation


# instance fields
.field mBound:Z

.field final mHistoryRowId:J

.field final mStartTime:J

.field mSyncAdapter:Landroid/content/ISyncAdapter;

.field final mSyncOperation:Landroid/content/SyncOperation;

.field mTimeoutStartTime:J

.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method public constructor <init>(Landroid/content/SyncManager;Landroid/content/SyncOperation;J)V
    .locals 2
    .parameter
    .parameter "syncOperation"
    .parameter "historyRowId"

    .prologue
    .line 883
    iput-object p1, p0, Landroid/content/SyncManager$ActiveSyncContext;->this$0:Landroid/content/SyncManager;

    .line 884
    invoke-direct {p0}, Landroid/content/ISyncContext$Stub;-><init>()V

    .line 885
    iput-object p2, p0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    .line 886
    iput-wide p3, p0, Landroid/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    .line 887
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 888
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    .line 889
    iget-wide v0, p0, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    iput-wide v0, p0, Landroid/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    .line 890
    return-void
.end method


# virtual methods
.method bindToSyncAdapter(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;)Z
    .locals 7
    .parameter "info"

    .prologue
    const/4 v6, 0x0

    const-string v4, "SyncManager"

    .line 925
    const-string v2, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 926
    const-string v2, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindToSyncAdapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 929
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.content.SyncAdapter"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    iget-object v2, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 931
    const-string v2, "android.intent.extra.client_label"

    const v3, 0x1040432

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 933
    const-string v2, "android.intent.extra.client_intent"

    iget-object v3, p0, Landroid/content/SyncManager$ActiveSyncContext;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/content/SyncManager;->access$1000(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.SYNC_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 935
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 936
    iget-object v2, p0, Landroid/content/SyncManager$ActiveSyncContext;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/content/SyncManager;->access$1000(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 938
    .local v0, bindResult:Z
    if-nez v0, :cond_1

    .line 939
    iput-boolean v6, p0, Landroid/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 941
    :cond_1
    return v0
.end method

.method protected close()V
    .locals 3

    .prologue
    const-string v2, "SyncManager"

    .line 945
    const-string v0, "SyncManager"

    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    const-string v0, "SyncManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unBindFromSyncAdapter: connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_0
    iget-boolean v0, p0, Landroid/content/SyncManager$ActiveSyncContext;->mBound:Z

    if-eqz v0, :cond_1

    .line 949
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 950
    iget-object v0, p0, Landroid/content/SyncManager$ActiveSyncContext;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/content/SyncManager;->access$1000(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 952
    :cond_1
    return-void
.end method

.method public onFinished(Landroid/content/SyncResult;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 900
    iget-object v0, p0, Landroid/content/SyncManager$ActiveSyncContext;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    invoke-static {v0, p0, p1}, Landroid/content/SyncManager;->access$900(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 901
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 911
    iget-object v1, p0, Landroid/content/SyncManager$ActiveSyncContext;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;
    invoke-static {v1}, Landroid/content/SyncManager;->access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 912
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 913
    new-instance v1, Landroid/content/SyncManager$ServiceConnectionData;

    iget-object v2, p0, Landroid/content/SyncManager$ActiveSyncContext;->this$0:Landroid/content/SyncManager;

    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Landroid/content/SyncManager$ServiceConnectionData;-><init>(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/ISyncAdapter;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 914
    iget-object v1, p0, Landroid/content/SyncManager$ActiveSyncContext;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;
    invoke-static {v1}, Landroid/content/SyncManager;->access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 915
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 918
    iget-object v1, p0, Landroid/content/SyncManager$ActiveSyncContext;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;
    invoke-static {v1}, Landroid/content/SyncManager;->access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 919
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 920
    new-instance v1, Landroid/content/SyncManager$ServiceConnectionData;

    iget-object v2, p0, Landroid/content/SyncManager$ActiveSyncContext;->this$0:Landroid/content/SyncManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Landroid/content/SyncManager$ServiceConnectionData;-><init>(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/ISyncAdapter;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 921
    iget-object v1, p0, Landroid/content/SyncManager$ActiveSyncContext;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;
    invoke-static {v1}, Landroid/content/SyncManager;->access$200(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 922
    return-void
.end method

.method public sendHeartbeat()V
    .locals 0

    .prologue
    .line 894
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 957
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/content/SyncManager$ActiveSyncContext;->toString(Ljava/lang/StringBuilder;)V

    .line 958
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "sb"

    .prologue
    .line 904
    const-string/jumbo v0, "startTime "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeoutStartTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHistoryRowId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", syncOperation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 908
    return-void
.end method

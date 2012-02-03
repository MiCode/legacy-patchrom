.class Lcom/android/providers/media/MediaProvider$5;
.super Landroid/os/Handler;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x2

    const-string v10, ", there are still "

    const-string v9, " tasks left in queue"

    .line 1108
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->ignoreSuspender:Z
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1300(Lcom/android/providers/media/MediaProvider;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1109
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbWorkerSuspender:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1400(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->getThumbWorkerSuspended()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v8, :cond_6

    .line 1116
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1500(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v5

    monitor-enter v5

    .line 1117
    :try_start_0
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1500(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/media/MediaThumbRequest;

    #setter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6, v4}, Lcom/android/providers/media/MediaProvider;->access$1602(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaThumbRequest;)Lcom/android/providers/media/MediaThumbRequest;

    .line 1118
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1121
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/media/MediaThumbRequest;->isRequestForExternalSD()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1122
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v4}, Lcom/android/providers/media/MediaProvider;->checkLowStorageSDforMedia()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1124
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    monitor-enter v4

    .line 1125
    :try_start_1
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    sget-object v6, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v6, v5, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 1126
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1127
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1129
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->removeMediaThumbRequests(I)V
    invoke-static {v4, v8}, Lcom/android/providers/media/MediaProvider;->access$1700(Lcom/android/providers/media/MediaProvider;I)V

    .line 1131
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1500(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1132
    invoke-virtual {p0, v8}, Lcom/android/providers/media/MediaProvider$5;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1118
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1127
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 1138
    :cond_2
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v4}, Lcom/android/providers/media/MediaProvider;->checkLowStorageforMedia()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1141
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    monitor-enter v4

    .line 1142
    :try_start_4
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    sget-object v6, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v6, v5, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 1143
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1144
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1146
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->removeMediaThumbRequests(I)V
    invoke-static {v4, v7}, Lcom/android/providers/media/MediaProvider;->access$1700(Lcom/android/providers/media/MediaProvider;I)V

    .line 1148
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1500(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1149
    invoke-virtual {p0, v8}, Lcom/android/providers/media/MediaProvider$5;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1144
    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5

    .line 1158
    :cond_3
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1159
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Have message but no request?"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :goto_1
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1500(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1187
    invoke-virtual {p0, v8}, Lcom/android/providers/media/MediaProvider$5;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1161
    :cond_4
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "we got work to do for checkThumbnail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    iget-object v6, v6, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", there are still "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$1500(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tasks left in queue"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :try_start_6
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1164
    .local v3, origFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 1165
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/media/MediaThumbRequest;->execute()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1179
    :goto_2
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    monitor-enter v4

    .line 1180
    :try_start_7
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    sget-object v6, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v6, v5, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 1181
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1182
    monitor-exit v4

    goto/16 :goto_1

    :catchall_3
    move-exception v5

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v5

    .line 1168
    :cond_5
    :try_start_8
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1500(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;

    move-result-object v4

    monitor-enter v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1169
    :try_start_9
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "original file hasn\'t been stored yet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v7

    iget-object v7, v7, Lcom/android/providers/media/MediaThumbRequest;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    monitor-exit v4

    goto :goto_2

    :catchall_4
    move-exception v5

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_a} :catch_1

    .line 1172
    .end local v3           #origFile:Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1173
    .local v2, ex:Ljava/io/IOException;
    :try_start_b
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1179
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    monitor-enter v4

    .line 1180
    :try_start_c
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    sget-object v6, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v6, v5, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 1181
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1182
    monitor-exit v4

    goto/16 :goto_1

    :catchall_5
    move-exception v5

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v5

    .line 1174
    .end local v2           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 1177
    .local v2, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_d
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 1179
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v4

    monitor-enter v4

    .line 1180
    :try_start_e
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    sget-object v6, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v6, v5, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 1181
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1182
    monitor-exit v4

    goto/16 :goto_1

    :catchall_6
    move-exception v5

    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v5

    .line 1179
    .end local v2           #ex:Ljava/lang/UnsupportedOperationException;
    :catchall_7
    move-exception v4

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v5

    monitor-enter v5

    .line 1180
    :try_start_f
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    sget-object v7, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v7, v6, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 1181
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1182
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    throw v4

    :catchall_8
    move-exception v4

    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw v4

    .line 1189
    :cond_6
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v7, :cond_0

    .line 1192
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v4}, Lcom/android/providers/media/MediaProvider;->checkLowStorageforMedia()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1196
    const/4 v1, 0x0

    .line 1197
    .local v1, d:Lcom/android/providers/media/MediaProvider$ThumbData;
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1800(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v5

    monitor-enter v5

    .line 1198
    :try_start_11
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1800(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1199
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1800(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    move-object v1, v0

    .line 1200
    :cond_7
    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 1202
    if-eqz v1, :cond_0

    .line 1205
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "we got work to do for album thumbnail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", there are still "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;
    invoke-static {v6}, Lcom/android/providers/media/MediaProvider;->access$1800(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tasks left in queue"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;
    invoke-static {v4, v1}, Lcom/android/providers/media/MediaProvider;->access$1900(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;

    .line 1208
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$2000(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4

    .line 1209
    :try_start_12
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->access$2000(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;

    move-result-object v5

    iget-object v6, v1, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1210
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 1213
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$5;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;
    invoke-static {v4}, Lcom/android/providers/media/MediaProvider;->access$1800(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1214
    invoke-virtual {p0, v7}, Lcom/android/providers/media/MediaProvider$5;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1200
    :catchall_9
    move-exception v4

    :try_start_13
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    throw v4

    .line 1210
    :catchall_a
    move-exception v5

    :try_start_14
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    throw v5
.end method

.class Lcom/android/phone/RejectCallWithMsgLayout$updateThread;
.super Ljava/lang/Thread;
.source "RejectCallWithMsgLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "updateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgLayout;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout$updateThread;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const-string v12, "RejectCallWithMsgLayout"

    .line 156
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v11, strList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout$updateThread;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsgLayout;->access$400(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "_id desc"

    .line 159
    .local v5, sortOrder:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/RejectCallWithMsgLayout;->access$500()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 160
    .local v6, cur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 162
    .local v10, rejectMessage:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 163
    const-string v1, "RejectCallWithMsgLayout"

    const-string v1, "rejectmsg cursor is null"

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-void

    .line 167
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    :cond_1
    const-string v1, "reject_message"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 170
    if-eqz v10, :cond_2

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    :cond_3
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 175
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout$updateThread;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsgLayout;->access$600(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, -0x1

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 176
    .local v9, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout$updateThread;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/RejectCallWithMsgLayout;->access$600(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 181
    .end local v9           #msg:Landroid/os/Message;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 178
    .end local v8           #i:I
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 179
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "RejectCallWithMsgLayout"

    const-string v2, "rejectmsg exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

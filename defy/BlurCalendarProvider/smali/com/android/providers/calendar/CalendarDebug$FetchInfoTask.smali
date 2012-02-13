.class Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;
.super Landroid/os/AsyncTask;
.source "CalendarDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/CalendarDebug;


# direct methods
.method private constructor <init>(Lcom/android/providers/calendar/CalendarDebug;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/CalendarDebug;Lcom/android/providers/calendar/CalendarDebug$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;-><init>(Lcom/android/providers/calendar/CalendarDebug;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 22
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 79
    const/4 v10, 0x0

    .line 81
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v19, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object v4, v0

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/providers/calendar/CalendarDebug;->access$100(Lcom/android/providers/calendar/CalendarDebug;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/providers/calendar/CalendarDebug;->access$000()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "displayName"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 87
    if-nez v10, :cond_3

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object v5, v0

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mActivity:Landroid/app/ListActivity;
    invoke-static {v5}, Lcom/android/providers/calendar/CalendarDebug;->access$200(Lcom/android/providers/calendar/CalendarDebug;)Landroid/app/ListActivity;

    move-result-object v5

    const v6, 0x7f080017

    invoke-virtual {v5, v6}, Landroid/app/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    move-object v0, v4

    move-object/from16 v1, v19

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarDebug;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    if-eqz v10, :cond_1

    .line 137
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_1
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object v5, v0

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mActivity:Landroid/app/ListActivity;
    invoke-static {v5}, Lcom/android/providers/calendar/CalendarDebug;->access$200(Lcom/android/providers/calendar/CalendarDebug;)Landroid/app/ListActivity;

    move-result-object v5

    const v6, 0x7f080018

    invoke-virtual {v5, v6}, Landroid/app/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    move-object v0, v4

    move-object/from16 v1, v19

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarDebug;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_2
    return-object v19

    .line 90
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 93
    .local v18, id:I
    const/16 v16, -0x1

    .line 94
    .local v16, eventCount:I
    const/4 v11, -0x1

    .line 95
    .local v11, dirtyCount:I
    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 98
    .local v14, displayName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calendar_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 99
    .local v21, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object v4, v0

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/providers/calendar/CalendarDebug;->access$100(Lcom/android/providers/calendar/CalendarDebug;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/android/providers/calendar/CalendarDebug;->access$300()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v21

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Calendar$Events;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    .line 102
    .local v17, eventCursor:Landroid/database/Cursor;
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v16

    .line 104
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calendar_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_sync_dirty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 110
    .local v13, dirtyWhere:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object v4, v0

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/providers/calendar/CalendarDebug;->access$100(Lcom/android/providers/calendar/CalendarDebug;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/android/providers/calendar/CalendarDebug;->access$300()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v13, v6}, Landroid/provider/Calendar$Events;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v12

    .line 113
    .local v12, dirtyCursor:Landroid/database/Cursor;
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v11

    .line 115
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 120
    if-nez v11, :cond_5

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object v4, v0

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mActivity:Landroid/app/ListActivity;
    invoke-static {v4}, Lcom/android/providers/calendar/CalendarDebug;->access$200(Lcom/android/providers/calendar/CalendarDebug;)Landroid/app/ListActivity;

    move-result-object v4

    const v5, 0x7f080019

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/ListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 128
    .local v20, text:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    move-object v2, v14

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarDebug;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 131
    .end local v11           #dirtyCount:I
    .end local v12           #dirtyCursor:Landroid/database/Cursor;
    .end local v13           #dirtyWhere:Ljava/lang/String;
    .end local v14           #displayName:Ljava/lang/String;
    .end local v16           #eventCount:I
    .end local v17           #eventCursor:Landroid/database/Cursor;
    .end local v18           #id:I
    .end local v20           #text:Ljava/lang/String;
    .end local v21           #where:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v15, v4

    .line 134
    .local v15, e:Ljava/lang/Exception;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object v5, v0

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mActivity:Landroid/app/ListActivity;
    invoke-static {v5}, Lcom/android/providers/calendar/CalendarDebug;->access$200(Lcom/android/providers/calendar/CalendarDebug;)Landroid/app/ListActivity;

    move-result-object v5

    const v6, 0x7f080017

    invoke-virtual {v5, v6}, Landroid/app/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v4

    move-object/from16 v1, v19

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarDebug;->addItem(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 136
    if-eqz v10, :cond_1

    .line 137
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 104
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v11       #dirtyCount:I
    .restart local v14       #displayName:Ljava/lang/String;
    .restart local v16       #eventCount:I
    .restart local v17       #eventCursor:Landroid/database/Cursor;
    .restart local v18       #id:I
    .restart local v21       #where:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_7
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 136
    .end local v11           #dirtyCount:I
    .end local v14           #displayName:Ljava/lang/String;
    .end local v16           #eventCount:I
    .end local v17           #eventCursor:Landroid/database/Cursor;
    .end local v18           #id:I
    .end local v21           #where:Ljava/lang/String;
    :catchall_1
    move-exception v4

    if-eqz v10, :cond_4

    .line 137
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4

    .line 115
    .restart local v11       #dirtyCount:I
    .restart local v12       #dirtyCursor:Landroid/database/Cursor;
    .restart local v13       #dirtyWhere:Ljava/lang/String;
    .restart local v14       #displayName:Ljava/lang/String;
    .restart local v16       #eventCount:I
    .restart local v17       #eventCursor:Landroid/database/Cursor;
    .restart local v18       #id:I
    .restart local v21       #where:Ljava/lang/String;
    :catchall_2
    move-exception v4

    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v4

    .line 124
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    move-object v4, v0

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mActivity:Landroid/app/ListActivity;
    invoke-static {v4}, Lcom/android/providers/calendar/CalendarDebug;->access$200(Lcom/android/providers/calendar/CalendarDebug;)Landroid/app/ListActivity;

    move-result-object v4

    const v5, 0x7f08001a

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/ListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v20

    .restart local v20       #text:Ljava/lang/String;
    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 156
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    invoke-virtual {v1, v5}, Lcom/android/providers/calendar/CalendarDebug;->setProgressBarIndeterminateVisibility(Z)V

    .line 157
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    #getter for: Lcom/android/providers/calendar/CalendarDebug;->mActivity:Landroid/app/ListActivity;
    invoke-static {v1}, Lcom/android/providers/calendar/CalendarDebug;->access$200(Lcom/android/providers/calendar/CalendarDebug;)Landroid/app/ListActivity;

    move-result-object v1

    const v3, 0x1090004

    new-array v4, v6, [Ljava/lang/String;

    const-string v2, "title"

    aput-object v2, v4, v5

    const/4 v2, 0x1

    const-string v5, "text"

    aput-object v5, v4, v2

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 162
    .local v0, adapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    invoke-virtual {v1, v0}, Lcom/android/providers/calendar/CalendarDebug;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    return-void

    .line 157
    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDebug$FetchInfoTask;->this$0:Lcom/android/providers/calendar/CalendarDebug;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDebug;->setProgressBarIndeterminateVisibility(Z)V

    .line 71
    return-void
.end method

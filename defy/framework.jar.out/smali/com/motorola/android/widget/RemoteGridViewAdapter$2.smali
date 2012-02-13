.class Lcom/motorola/android/widget/RemoteGridViewAdapter$2;
.super Ljava/lang/Object;
.source "RemoteGridViewAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/widget/RemoteGridViewAdapter;->getOnItemClickListner()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/widget/RemoteGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/motorola/android/widget/RemoteGridViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter$2;->this$0:Lcom/motorola/android/widget/RemoteGridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v8, "RemoteGridViewAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OnItemClickListener() is called, the position called is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter$2;->this$0:Lcom/motorola/android/widget/RemoteGridViewAdapter;

    #getter for: Lcom/motorola/android/widget/RemoteGridViewAdapter;->mListItem:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/motorola/android/widget/RemoteGridViewAdapter;->access$000(Lcom/motorola/android/widget/RemoteGridViewAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    .local v6, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/widget/BookmarkContent;>;"
    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/BookmarkContent;

    .local v0, bmRecord:Lcom/motorola/android/widget/BookmarkContent;
    iget-object v8, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter$2;->this$0:Lcom/motorola/android/widget/RemoteGridViewAdapter;

    invoke-virtual {v8}, Lcom/motorola/android/widget/RemoteGridViewAdapter;->getCount()I

    move-result v1

    .local v1, count:I
    const/4 v8, 0x1

    sub-int v8, v1, v8

    if-ne p3, v8, :cond_0

    iget-object v8, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter$2;->this$0:Lcom/motorola/android/widget/RemoteGridViewAdapter;

    #getter for: Lcom/motorola/android/widget/RemoteGridViewAdapter;->setuppendingIntent:Landroid/app/PendingIntent;
    invoke-static {v8}, Lcom/motorola/android/widget/RemoteGridViewAdapter;->access$100(Lcom/motorola/android/widget/RemoteGridViewAdapter;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    .local v7, setupinitPackge:Ljava/lang/String;
    const-string v8, "RemoteGridViewAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setup is clicked "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v8, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter$2;->this$0:Lcom/motorola/android/widget/RemoteGridViewAdapter;

    #getter for: Lcom/motorola/android/widget/RemoteGridViewAdapter;->setuppendingIntent:Landroid/app/PendingIntent;
    invoke-static {v8}, Lcom/motorola/android/widget/RemoteGridViewAdapter;->access$100(Lcom/motorola/android/widget/RemoteGridViewAdapter;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #setupinitPackge:Ljava/lang/String;
    :goto_0
    return-void

    .restart local v7       #setupinitPackge:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v2, v8

    .local v2, e:Landroid/app/PendingIntent$CanceledException;
    move-object v3, v2

    .local v3, exception:Ljava/lang/Exception;
    new-instance v8, Landroid/widget/RemoteViews$ActionException;

    invoke-virtual {v2}, Landroid/app/PendingIntent$CanceledException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v2           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v3           #exception:Ljava/lang/Exception;
    .end local v7           #setupinitPackge:Ljava/lang/String;
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    iget-object v9, v0, Lcom/motorola/android/widget/BookmarkContent;->bmUrl:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v5, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter$2;->this$0:Lcom/motorola/android/widget/RemoteGridViewAdapter;

    #getter for: Lcom/motorola/android/widget/RemoteGridViewAdapter;->pendingIntent:Landroid/app/PendingIntent;
    invoke-static {v8}, Lcom/motorola/android/widget/RemoteGridViewAdapter;->access$200(Lcom/motorola/android/widget/RemoteGridViewAdapter;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    .local v4, initPackge:Ljava/lang/String;
    const-string v8, "RemoteGridViewAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Send the intent to Browser, bmUrl is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/motorola/android/widget/BookmarkContent;->bmUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v8, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter$2;->this$0:Lcom/motorola/android/widget/RemoteGridViewAdapter;

    #getter for: Lcom/motorola/android/widget/RemoteGridViewAdapter;->pendingIntent:Landroid/app/PendingIntent;
    invoke-static {v8}, Lcom/motorola/android/widget/RemoteGridViewAdapter;->access$200(Lcom/motorola/android/widget/RemoteGridViewAdapter;)Landroid/app/PendingIntent;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/android/widget/RemoteGridViewAdapter$2;->this$0:Lcom/motorola/android/widget/RemoteGridViewAdapter;

    #getter for: Lcom/motorola/android/widget/RemoteGridViewAdapter;->passedContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/motorola/android/widget/RemoteGridViewAdapter;->access$300(Lcom/motorola/android/widget/RemoteGridViewAdapter;)Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v8

    move-object v2, v8

    .restart local v2       #e:Landroid/app/PendingIntent$CanceledException;
    move-object v3, v2

    .restart local v3       #exception:Ljava/lang/Exception;
    new-instance v8, Landroid/widget/RemoteViews$ActionException;

    invoke-virtual {v2}, Landroid/app/PendingIntent$CanceledException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.class Lcom/android/settings/quicklaunch/BookmarkPicker$1;
.super Ljava/lang/Thread;
.source "BookmarkPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/quicklaunch/BookmarkPicker;->updateListAndAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/quicklaunch/BookmarkPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$1;->this$0:Lcom/android/settings/quicklaunch/BookmarkPicker;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$1;->this$0:Lcom/android/settings/quicklaunch/BookmarkPicker;

    monitor-enter v2

    .line 158
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v1, newResolveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, newAdapterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    iget-object v3, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$1;->this$0:Lcom/android/settings/quicklaunch/BookmarkPicker;

    #calls: Lcom/android/settings/quicklaunch/BookmarkPicker;->fillResolveList(Ljava/util/List;)V
    invoke-static {v3, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->access$000(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)V

    .line 162
    new-instance v3, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v4, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$1;->this$0:Lcom/android/settings/quicklaunch/BookmarkPicker;

    invoke-virtual {v4}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 165
    iget-object v3, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$1;->this$0:Lcom/android/settings/quicklaunch/BookmarkPicker;

    #calls: Lcom/android/settings/quicklaunch/BookmarkPicker;->fillAdapterList(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v3, v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->access$100(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;Ljava/util/List;)V

    .line 167
    iget-object v3, p0, Lcom/android/settings/quicklaunch/BookmarkPicker$1;->this$0:Lcom/android/settings/quicklaunch/BookmarkPicker;

    #calls: Lcom/android/settings/quicklaunch/BookmarkPicker;->updateAdapterToUseNewLists(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v3, v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->access$200(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 168
    monitor-exit v2

    .line 169
    return-void

    .line 168
    .end local v0           #newAdapterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .end local v1           #newResolveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

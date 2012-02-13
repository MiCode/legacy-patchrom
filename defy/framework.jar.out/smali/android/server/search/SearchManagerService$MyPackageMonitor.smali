.class Landroid/server/search/SearchManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/search/SearchManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/search/SearchManagerService;


# direct methods
.method constructor <init>(Landroid/server/search/SearchManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    #calls: Landroid/server/search/SearchManagerService;->getSearchables()Landroid/server/search/Searchables;
    invoke-static {v0}, Landroid/server/search/SearchManagerService;->access$200(Landroid/server/search/SearchManagerService;)Landroid/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/search/Searchables;->buildSearchableList()V

    iget-object v0, p0, Landroid/server/search/SearchManagerService$MyPackageMonitor;->this$0:Landroid/server/search/SearchManagerService;

    invoke-virtual {v0}, Landroid/server/search/SearchManagerService;->broadcastSearchablesChanged()V

    return-void
.end method

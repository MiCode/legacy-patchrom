.class Landroid/content/pm/RegisteredServicesCache$2;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/RegisteredServicesCache;

.field final synthetic val$listener2:Landroid/content/pm/RegisteredServicesCacheListener;

.field final synthetic val$removed:Z

.field final synthetic val$type:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/pm/RegisteredServicesCache;Landroid/content/pm/RegisteredServicesCacheListener;Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .local p0, this:Landroid/content/pm/RegisteredServicesCache$2;,"Landroid/content/pm/RegisteredServicesCache.2;"
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$2;->this$0:Landroid/content/pm/RegisteredServicesCache;

    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache$2;->val$listener2:Landroid/content/pm/RegisteredServicesCacheListener;

    iput-object p3, p0, Landroid/content/pm/RegisteredServicesCache$2;->val$type:Ljava/lang/Object;

    iput-boolean p4, p0, Landroid/content/pm/RegisteredServicesCache$2;->val$removed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .local p0, this:Landroid/content/pm/RegisteredServicesCache$2;,"Landroid/content/pm/RegisteredServicesCache.2;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$2;->val$listener2:Landroid/content/pm/RegisteredServicesCacheListener;

    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache$2;->val$type:Ljava/lang/Object;

    iget-boolean v2, p0, Landroid/content/pm/RegisteredServicesCache$2;->val$removed:Z

    invoke-interface {v0, v1, v2}, Landroid/content/pm/RegisteredServicesCacheListener;->onServiceChanged(Ljava/lang/Object;Z)V

    return-void
.end method

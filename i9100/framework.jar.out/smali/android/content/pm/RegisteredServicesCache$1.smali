.class Landroid/content/pm/RegisteredServicesCache$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/RegisteredServicesCache;


# direct methods
.method constructor <init>(Landroid/content/pm/RegisteredServicesCache;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    .local p0, this:Landroid/content/pm/RegisteredServicesCache$1;,"Landroid/content/pm/RegisteredServicesCache.1;"
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$1;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context1"
    .parameter "intent"

    .prologue
    .line 110
    .local p0, this:Landroid/content/pm/RegisteredServicesCache$1;,"Landroid/content/pm/RegisteredServicesCache.1;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$1;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-virtual {v0}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap()V

    .line 111
    return-void
.end method

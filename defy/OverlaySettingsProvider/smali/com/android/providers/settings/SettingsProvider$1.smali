.class Lcom/android/providers/settings/SettingsProvider$1;
.super Ljava/lang/Thread;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/settings/SettingsProvider;->startAsyncCachePopulation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/settings/SettingsProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$1;->this$0:Lcom/android/providers/settings/SettingsProvider;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider$1;->this$0:Lcom/android/providers/settings/SettingsProvider;

    #calls: Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCaches()V
    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider;->access$100(Lcom/android/providers/settings/SettingsProvider;)V

    .line 280
    return-void
.end method

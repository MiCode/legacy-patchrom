.class Lcom/android/server/UsbStorageService$UsbStorageMap;
.super Ljava/lang/Object;
.source "UsbStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UsbStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbStorageMap"
.end annotation


# instance fields
.field public final label:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/UsbStorageService;


# direct methods
.method constructor <init>(Lcom/android/server/UsbStorageService;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "label"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/UsbStorageService$UsbStorageMap;->this$0:Lcom/android/server/UsbStorageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/android/server/UsbStorageService$UsbStorageMap;->label:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    .line 77
    const-string v0, "unmounted"

    iput-object v0, p0, Lcom/android/server/UsbStorageService$UsbStorageMap;->state:Ljava/lang/String;

    .line 78
    return-void
.end method

.method constructor <init>(Lcom/android/server/UsbStorageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "label"
    .parameter "path"
    .parameter "state"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/UsbStorageService$UsbStorageMap;->this$0:Lcom/android/server/UsbStorageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/android/server/UsbStorageService$UsbStorageMap;->label:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/android/server/UsbStorageService$UsbStorageMap;->path:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/android/server/UsbStorageService$UsbStorageMap;->state:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 85
    instance-of v2, p1, Lcom/android/server/UsbStorageService$UsbStorageMap;

    if-eqz v2, :cond_0

    .line 86
    move-object v0, p1

    check-cast v0, Lcom/android/server/UsbStorageService$UsbStorageMap;

    move-object v1, v0

    .line 88
    .local v1, tmp:Lcom/android/server/UsbStorageService$UsbStorageMap;
    iget-object v2, p0, Lcom/android/server/UsbStorageService$UsbStorageMap;->label:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/UsbStorageService$UsbStorageMap;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 90
    .end local v1           #tmp:Lcom/android/server/UsbStorageService$UsbStorageMap;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/UsbStorageService$UsbStorageMap;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

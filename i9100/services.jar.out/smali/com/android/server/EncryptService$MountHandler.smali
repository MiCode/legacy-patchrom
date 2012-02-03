.class Lcom/android/server/EncryptService$MountHandler;
.super Ljava/lang/Object;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountHandler"
.end annotation


# instance fields
.field final key:Ljava/lang/String;

.field final path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "key"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/server/EncryptService$MountHandler;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/android/server/EncryptService$MountHandler;->path:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lcom/android/server/EncryptService$MountHandler;->key:Ljava/lang/String;

    .line 262
    return-void
.end method

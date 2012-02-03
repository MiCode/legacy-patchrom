.class Lcom/android/server/am/ActivityManagerService$7;
.super Lcom/android/server/am/ActivityManagerService$ForegroundToken;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->setProcessForeground(Landroid/os/IBinder;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4074
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ForegroundToken;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 4076
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->foregroundTokenDied(Lcom/android/server/am/ActivityManagerService$ForegroundToken;)V

    .line 4077
    return-void
.end method

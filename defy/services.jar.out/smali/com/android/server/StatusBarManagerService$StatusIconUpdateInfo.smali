.class Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusIconUpdateInfo"
.end annotation


# instance fields
.field iconId:I

.field iconLevel:I

.field iconPackage:Ljava/lang/String;

.field slot:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;

.field visible:Z


# direct methods
.method private constructor <init>(Lcom/android/server/StatusBarManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;->this$0:Lcom/android/server/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/StatusBarManagerService;Lcom/android/server/StatusBarManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/StatusBarManagerService$StatusIconUpdateInfo;-><init>(Lcom/android/server/StatusBarManagerService;)V

    return-void
.end method

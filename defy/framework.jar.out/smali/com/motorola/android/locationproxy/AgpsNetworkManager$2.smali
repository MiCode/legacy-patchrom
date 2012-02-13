.class Lcom/motorola/android/locationproxy/AgpsNetworkManager$2;
.super Ljava/util/TimerTask;
.source "AgpsNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/locationproxy/AgpsNetworkManager;->scheduleStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;


# direct methods
.method constructor <init>(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$2;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/AgpsNetworkManager$2;->this$0:Lcom/motorola/android/locationproxy/AgpsNetworkManager;

    #calls: Lcom/motorola/android/locationproxy/AgpsNetworkManager;->startUsingAgpsPdp()Z
    invoke-static {v0}, Lcom/motorola/android/locationproxy/AgpsNetworkManager;->access$500(Lcom/motorola/android/locationproxy/AgpsNetworkManager;)Z

    return-void
.end method

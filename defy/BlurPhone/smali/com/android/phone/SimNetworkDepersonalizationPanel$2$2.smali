.class Lcom/android/phone/SimNetworkDepersonalizationPanel$2$2;
.super Ljava/lang/Object;
.source "SimNetworkDepersonalizationPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimNetworkDepersonalizationPanel$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/SimNetworkDepersonalizationPanel$2;


# direct methods
.method constructor <init>(Lcom/android/phone/SimNetworkDepersonalizationPanel$2;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/SimNetworkDepersonalizationPanel$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel$2$2;->this$1:Lcom/android/phone/SimNetworkDepersonalizationPanel$2;

    iget-object v0, v0, Lcom/android/phone/SimNetworkDepersonalizationPanel$2;->this$0:Lcom/android/phone/SimNetworkDepersonalizationPanel;

    invoke-virtual {v0}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->dismiss()V

    .line 103
    return-void
.end method

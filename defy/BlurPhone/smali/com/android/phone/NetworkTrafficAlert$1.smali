.class Lcom/android/phone/NetworkTrafficAlert$1;
.super Ljava/lang/Object;
.source "NetworkTrafficAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkTrafficAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkTrafficAlert;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkTrafficAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/phone/NetworkTrafficAlert$1;->this$0:Lcom/android/phone/NetworkTrafficAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/NetworkTrafficAlert$1;->this$0:Lcom/android/phone/NetworkTrafficAlert;

    #calls: Lcom/android/phone/NetworkTrafficAlert;->saveSettings()V
    invoke-static {v0}, Lcom/android/phone/NetworkTrafficAlert;->access$000(Lcom/android/phone/NetworkTrafficAlert;)V

    .line 50
    iget-object v0, p0, Lcom/android/phone/NetworkTrafficAlert$1;->this$0:Lcom/android/phone/NetworkTrafficAlert;

    invoke-virtual {v0}, Lcom/android/phone/NetworkTrafficAlert;->finish()V

    .line 51
    return-void
.end method

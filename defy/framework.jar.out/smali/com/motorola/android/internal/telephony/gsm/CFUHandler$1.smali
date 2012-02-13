.class Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;
.super Landroid/telephony/PhoneStateListener;
.source "CFUHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/gsm/CFUHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/gsm/CFUHandler;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;->this$0:Lcom/motorola/android/internal/telephony/gsm/CFUHandler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "serviceState"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;->this$0:Lcom/motorola/android/internal/telephony/gsm/CFUHandler;

    #calls: Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->checkCFU(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->access$000(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;->this$0:Lcom/motorola/android/internal/telephony/gsm/CFUHandler;

    #setter for: Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->access$102(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    return-void
.end method

.class public Lcom/android/phone/NetworkQueryService$LocalBinder;
.super Landroid/os/Binder;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService;


# direct methods
.method public constructor <init>(Lcom/android/phone/NetworkQueryService;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/NetworkQueryService$LocalBinder;->this$0:Lcom/android/phone/NetworkQueryService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/android/phone/INetworkQueryService;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$LocalBinder;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mBinder:Lcom/android/phone/INetworkQueryService$Stub;
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$000(Lcom/android/phone/NetworkQueryService;)Lcom/android/phone/INetworkQueryService$Stub;

    move-result-object v0

    return-object v0
.end method

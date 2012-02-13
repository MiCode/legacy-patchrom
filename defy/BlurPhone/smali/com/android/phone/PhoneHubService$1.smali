.class Lcom/android/phone/PhoneHubService$1;
.super Lcom/android/phone/PhoneHub$Stub;
.source "PhoneHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneHubService;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneHubService;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/phone/PhoneHubService$1;->this$0:Lcom/android/phone/PhoneHubService;

    invoke-direct {p0}, Lcom/android/phone/PhoneHub$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerCallback(Lcom/motorola/firewall/CallFirewallCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 39
    if-eqz p1, :cond_0

    sput-object p1, Lcom/android/phone/PhoneHubService;->mCallbacks:Lcom/motorola/firewall/CallFirewallCallback;

    .line 40
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/motorola/firewall/CallFirewallCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 43
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneHubService;->mCallbacks:Lcom/motorola/firewall/CallFirewallCallback;

    .line 44
    :cond_0
    return-void
.end method
